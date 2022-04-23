package net.pubnative.lite.sdk.utils;

import android.text.TextUtils;
import java.util.List;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.api.PNApiClient;
import net.pubnative.lite.sdk.models.AdData;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/AdTracker.class */
public class AdTracker {
    private static final String TAG = "AdTracker";
    private final PNApiClient mApiClient;
    private boolean mClickTracked;
    private final List<AdData> mClickUrls;
    private boolean mImpressionTracked;
    private final List<AdData> mImpressionUrls;
    private PNApiClient.TrackJSListener mTrackJSListener;
    private PNApiClient.TrackUrlListener mTrackUrlListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/AdTracker$Type.class */
    public enum Type {
        IMPRESSION("impression"),
        CLICK("click");
        
        private final String mType;

        Type(String str) {
            this.mType = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mType;
        }
    }

    public AdTracker(List<AdData> list, List<AdData> list2) {
        this(HyBid.getApiClient(), list, list2);
    }

    AdTracker(PNApiClient pNApiClient, List<AdData> list, List<AdData> list2) {
        this.mApiClient = pNApiClient;
        this.mImpressionUrls = list;
        this.mClickUrls = list2;
        this.mTrackUrlListener = new PNApiClient.TrackUrlListener() { // from class: net.pubnative.lite.sdk.utils.AdTracker.1
            @Override // net.pubnative.lite.sdk.api.PNApiClient.TrackUrlListener
            public void onFailure(Throwable th) {
            }

            @Override // net.pubnative.lite.sdk.api.PNApiClient.TrackUrlListener
            public void onSuccess() {
            }
        };
        this.mTrackJSListener = new PNApiClient.TrackJSListener() { // from class: net.pubnative.lite.sdk.utils.AdTracker.2
            @Override // net.pubnative.lite.sdk.api.PNApiClient.TrackJSListener
            public void onFailure(Throwable th) {
            }

            @Override // net.pubnative.lite.sdk.api.PNApiClient.TrackJSListener
            public void onSuccess() {
            }
        };
    }

    private void trackUrls(List<AdData> list, Type type) {
        if (list != null) {
            for (AdData adData : list) {
                if (!TextUtils.isEmpty(adData.getURL())) {
                    String str = TAG;
                    Logger.d(str, "Tracking " + type.toString() + " url: " + adData.getURL());
                    this.mApiClient.trackUrl(adData.getURL(), this.mTrackUrlListener);
                }
                if (!TextUtils.isEmpty(adData.getJS())) {
                    String str2 = TAG;
                    Logger.d(str2, "Tracking " + type.toString() + " js: " + adData.getJS());
                    this.mApiClient.trackJS(adData.getJS(), this.mTrackJSListener);
                }
            }
        }
    }

    public void setTrackUrlListener(PNApiClient.TrackUrlListener trackUrlListener) {
        this.mTrackUrlListener = trackUrlListener;
    }

    public void trackClick() {
        if (!this.mClickTracked) {
            trackUrls(this.mClickUrls, Type.CLICK);
            this.mClickTracked = true;
        }
    }

    public void trackImpression() {
        if (!this.mImpressionTracked) {
            trackUrls(this.mImpressionUrls, Type.IMPRESSION);
            this.mImpressionTracked = true;
        }
    }
}
