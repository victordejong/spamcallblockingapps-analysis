package net.pubnative.lite.sdk.auction;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.PriorityQueue;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingController;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.auction.AdSource;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/Auction.class */
public class Auction {
    private static final String TAG = "Auction";
    private String mAdFormat;
    private AdSize mAdSize;
    private List<AdSource> mAuctionAdSources;
    private final Context mContext;
    private final Listener mListener;
    private int mMissingResponses;
    private final ReportingController mReportingController;
    private final CountDownTimer mTimer;
    private final AdSource.Listener mAdSourceListener = new AdSource.Listener() { // from class: net.pubnative.lite.sdk.auction.Auction.2
        @Override // net.pubnative.lite.sdk.auction.AdSource.Listener
        public void onAdFetched(Ad ad) {
            if (ad != null) {
                Auction.this.mAdResponses.add(ad);
                if (!TextUtils.isEmpty(ad.getAdSourceName())) {
                    Auction.this.mFillList.add(ad.getAdSourceName());
                }
                Auction.access$410(Auction.this);
                if (Auction.this.mAuctionState == AuctionState.AWAITING_RESPONSES && Auction.this.mMissingResponses <= 0) {
                    Auction.this.processResults();
                }
            }
        }

        @Override // net.pubnative.lite.sdk.auction.AdSource.Listener
        public void onError(AuctionError auctionError) {
            Logger.e(Auction.TAG, "Error fetching from ad source: ", auctionError.getError());
            if (!TextUtils.isEmpty(auctionError.getAdSourceName())) {
                Auction.this.mNoFillList.add(auctionError.getAdSourceName());
            }
            Auction.access$410(Auction.this);
            if (Auction.this.mAuctionState == AuctionState.AWAITING_RESPONSES && Auction.this.mMissingResponses <= 0) {
                Auction.this.processResults();
            }
        }
    };
    private List<Ad> mAdResponses = Collections.synchronizedList(new ArrayList());
    private List<String> mFillList = new ArrayList();
    private List<String> mNoFillList = new ArrayList();
    private AuctionState mAuctionState = AuctionState.READY;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/Auction$AuctionState.class */
    public enum AuctionState {
        READY,
        AWAITING_RESPONSES,
        PROCESSING_RESULTS,
        DONE
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/Auction$Listener.class */
    public interface Listener {
        void onAuctionFailure(Throwable th);

        void onAuctionSuccess(PriorityQueue<Ad> priorityQueue);
    }

    public Auction(Context context, List<AdSource> list, long j, ReportingController reportingController, Listener listener, String str) {
        this.mContext = context;
        this.mReportingController = reportingController;
        this.mListener = listener;
        ArrayList arrayList = new ArrayList(list.size());
        this.mAuctionAdSources = arrayList;
        arrayList.addAll(list);
        this.mAdFormat = str;
        this.mTimer = new CountDownTimer(j, j) { // from class: net.pubnative.lite.sdk.auction.Auction.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (Auction.this.mAuctionState == AuctionState.AWAITING_RESPONSES) {
                    Auction.this.processResults();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        };
    }

    static /* synthetic */ int access$410(Auction auction) {
        int i = auction.mMissingResponses;
        auction.mMissingResponses = i - 1;
        return i;
    }

    private String getTimestampString() {
        return String.valueOf(Long.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processResults() {
        this.mAuctionState = AuctionState.PROCESSING_RESULTS;
        if (!this.mAdResponses.isEmpty()) {
            PriorityQueue<Ad> priorityQueue = new PriorityQueue<>(this.mAdResponses);
            if (this.mListener != null) {
                this.mAuctionState = AuctionState.DONE;
                reportAuctionFinished(priorityQueue.peek());
                this.mListener.onAuctionSuccess(priorityQueue);
            }
        } else if (this.mListener != null) {
            this.mAuctionState = AuctionState.DONE;
            reportAuctionFinished();
            this.mListener.onAuctionFailure(new Exception("The auction concluded without any winning bid."));
        }
    }

    private void reportAuctionFinished() {
        reportAuctionFinished(null);
    }

    private void reportAuctionFinished(Ad ad) {
        ReportingEvent reportingEvent = new ReportingEvent();
        reportingEvent.setTimestamp(getTimestampString());
        reportingEvent.setCustomString(Reporting.Key.EVENT_TYPE, Reporting.EventType.AUCTION_FINISHED);
        reportingEvent.setAdFormat(this.mAdFormat);
        AdSize adSize = this.mAdSize;
        if (adSize != null) {
            reportingEvent.setAdSize(adSize.toString());
        }
        reportingEvent.setCustomJSONArray(Reporting.EventType.FILL, new JSONArray((Collection) this.mFillList));
        reportingEvent.setCustomJSONArray(Reporting.EventType.NO_FILL, new JSONArray((Collection) this.mNoFillList));
        if (ad != null && !TextUtils.isEmpty(ad.getAdSourceName())) {
            reportingEvent.setCustomString(Reporting.EventType.WINNER, ad.getAdSourceName());
        }
        ReportingController reportingController = this.mReportingController;
        if (reportingController != null) {
            reportingController.reportEvent(reportingEvent);
        }
    }

    private void reportAuctionStart() {
        ReportingEvent reportingEvent = new ReportingEvent();
        reportingEvent.setTimestamp(getTimestampString());
        reportingEvent.setCustomString(Reporting.Key.EVENT_TYPE, Reporting.EventType.AUCTION_START);
        reportingEvent.setAdFormat(this.mAdFormat);
        try {
            JSONObject jSONObject = new JSONObject();
            for (AdSource adSource : this.mAuctionAdSources) {
                jSONObject.put(adSource.getName(), adSource.getECPM());
                if (TextUtils.isEmpty(reportingEvent.getAdSize())) {
                    AdSize adSize = adSource.getAdSize();
                    this.mAdSize = adSize;
                    reportingEvent.setAdSize(adSize.toString());
                }
            }
            reportingEvent.setCustomJSONObject(Reporting.Key.PARTICIPANTS, jSONObject);
        } catch (JSONException e) {
            Logger.e(TAG, "Error adding participants to auction report: ", e);
        }
        ReportingController reportingController = this.mReportingController;
        if (reportingController != null) {
            reportingController.reportEvent(reportingEvent);
        }
    }

    private void requestFromAdSources() {
        for (AdSource adSource : this.mAuctionAdSources) {
            adSource.fetchAd(this.mAdSourceListener);
        }
    }

    public void reportAuctionNextItem(Ad ad) {
        ReportingEvent reportingEvent = new ReportingEvent();
        reportingEvent.setAdFormat(this.mAdFormat);
        AdSize adSize = this.mAdSize;
        if (adSize != null) {
            reportingEvent.setAdSize(adSize.toString());
        }
        reportingEvent.setTimestamp(getTimestampString());
        reportingEvent.setCustomString(Reporting.Key.EVENT_TYPE, Reporting.EventType.AUCTION_NEXT_ITEM);
        reportingEvent.setCustomString(Reporting.EventType.NEXT_AD_SOURCE, ad.getAdSourceName());
    }

    public void runAuction() {
        this.mMissingResponses = this.mAuctionAdSources.size();
        this.mAdResponses.clear();
        this.mFillList.clear();
        this.mNoFillList.clear();
        this.mAuctionState = AuctionState.AWAITING_RESPONSES;
        this.mTimer.start();
        reportAuctionStart();
        requestFromAdSources();
    }
}
