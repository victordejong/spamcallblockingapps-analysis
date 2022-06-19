package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.PriorityQueue;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.auction.AdSourceConfig;
import net.pubnative.lite.sdk.auction.Auction;
import net.pubnative.lite.sdk.auction.HyBidAdSource;
import net.pubnative.lite.sdk.auction.VastTagAdSource;
import net.pubnative.lite.sdk.banner.presenter.BannerPresenterFactory;
import net.pubnative.lite.sdk.config.ConfigManager;
import net.pubnative.lite.sdk.models.AdResponse;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.models.IntegrationType;
import net.pubnative.lite.sdk.models.RemoteConfigAdSource;
import net.pubnative.lite.sdk.models.RemoteConfigPlacement;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.MarkupUtils;
import net.pubnative.lite.sdk.utils.ViewUtils;
import net.pubnative.lite.sdk.vpaid.vast.VastUrlUtils;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidAdView.class */
public class HyBidAdView extends RelativeLayout implements RequestManager.RequestListener, Auction.Listener, AdPresenter.Listener {
    private static final String TAG = "HyBidAdView";
    private static String mAdFormat = "banner";
    private static String mScreenIabCategory;
    private static String mScreenKeywords;
    private static String mUserIntent;
    private boolean autoShowOnLoad = true;
    protected C20576Ad mAd;
    private Auction mAuction;
    protected PriorityQueue<C20576Ad> mAuctionResponses;
    private FrameLayout mContainer;
    protected Listener mListener;
    private Position mPosition;
    private AdPresenter mPresenter;
    private RequestManager mRequestManager;
    private WindowManager mWindowManager;

    /* renamed from: net.pubnative.lite.sdk.views.HyBidAdView$2 */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidAdView$2.class */
    public static /* synthetic */ class C206422 {
        static final /* synthetic */ int[] $SwitchMap$net$pubnative$lite$sdk$models$AdSize;
        static final /* synthetic */ int[] $SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdSize.values().length];
            $SwitchMap$net$pubnative$lite$sdk$models$AdSize = iArr;
            try {
                iArr[AdSize.SIZE_300x250.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$net$pubnative$lite$sdk$models$AdSize[AdSize.SIZE_728x90.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[Position.values().length];
            $SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position = iArr2;
            try {
                iArr2[Position.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position[Position.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidAdView$Listener.class */
    public interface Listener {
        void onAdClick();

        void onAdImpression();

        void onAdLoadFailed(Throwable th);

        void onAdLoaded();
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidAdView$Position.class */
    public enum Position {
        TOP,
        BOTTOM
    }

    public HyBidAdView(Context context) {
        super(context);
        init(getRequestManager());
    }

    public HyBidAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(getRequestManager());
    }

    public HyBidAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(getRequestManager());
    }

    public HyBidAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(getRequestManager());
    }

    private void init(RequestManager requestManager) {
        this.mRequestManager = requestManager;
        requestManager.setIntegrationType(IntegrationType.STANDALONE);
        this.mAuctionResponses = new PriorityQueue<>();
    }

    private void processAdValue(String str) {
        AdResponse adResponse;
        Exception e = null;
        try {
            adResponse = new AdResponse(new JSONObject(str));
        } catch (Error e2) {
            e = new Exception("Response cannot be parsed", e2);
            adResponse = null;
        } catch (Exception e3) {
            e = e3;
            adResponse = null;
        }
        if (e != null) {
            invokeOnLoadFailed(e);
        } else if (adResponse == null) {
            invokeOnLoadFailed(new Exception("PNApiClient - Parse error"));
        } else if (!"ok".equals(adResponse.status)) {
            invokeOnLoadFailed(new Exception("HyBid - Server error: " + adResponse.error_message));
        } else if (adResponse.ads == null || adResponse.ads.isEmpty()) {
            invokeOnLoadFailed(new Exception("HyBid - No fill"));
        } else {
            this.mAd = adResponse.ads.get(0);
            renderFromCustomAd();
        }
    }

    protected void cleanup() {
        stopTracking();
        removeAllViews();
        this.mAd = null;
        AdPresenter adPresenter = this.mPresenter;
        if (adPresenter != null) {
            adPresenter.destroy();
            this.mPresenter = null;
        }
        if (this.mWindowManager == null || !this.mContainer.isShown()) {
            return;
        }
        this.mWindowManager.removeView(this.mContainer);
        this.mWindowManager = null;
        this.mContainer = null;
    }

    protected AdPresenter createPresenter() {
        return new BannerPresenterFactory(getContext()).createPresenter(this.mAd, this);
    }

    public void destroy() {
        cleanup();
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.destroy();
            this.mRequestManager = null;
        }
    }

    public Integer getBidPoints() {
        C20576Ad c20576Ad = this.mAd;
        return Integer.valueOf(c20576Ad != null ? c20576Ad.getECPM().intValue() : 0);
    }

    public String getCreativeId() {
        C20576Ad c20576Ad = this.mAd;
        if (c20576Ad != null) {
            return c20576Ad.getCreativeId();
        }
        return null;
    }

    public String getImpressionId() {
        C20576Ad c20576Ad = this.mAd;
        if (c20576Ad != null) {
            return c20576Ad.getImpressionId();
        }
        return null;
    }

    protected String getLogTag() {
        return HyBidAdView.class.getSimpleName();
    }

    RequestManager getRequestManager() {
        return new RequestManager();
    }

    protected void invokeOnClick() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdClick();
        }
    }

    protected void invokeOnImpression() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdImpression();
        }
    }

    protected void invokeOnLoadFailed(Exception exc) {
        Logger.m628e(getLogTag(), exc.getMessage());
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdLoadFailed(exc);
        }
    }

    protected void invokeOnLoadFinished() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdLoaded();
        }
    }

    public boolean isAutoShowOnLoad() {
        return this.autoShowOnLoad;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v86, types: [net.pubnative.lite.sdk.auction.AdSourceConfig] */
    /* JADX WARN: Type inference failed for: r0v90 */
    /* JADX WARN: Type inference failed for: r0v95 */
    public void load(String str, Listener listener) {
        cleanup();
        this.mListener = listener;
        if (TextUtils.isEmpty(str)) {
            invokeOnLoadFailed(new Exception("Invalid zone id provided"));
            return;
        }
        ConfigManager configManager = HyBid.getConfigManager();
        if (configManager == null || configManager.getConfig() == null || configManager.getConfig().placement_info == null || configManager.getConfig().placement_info.placements == null || configManager.getConfig().placement_info.placements.isEmpty() || configManager.getConfig().placement_info.placements.get(str) == null || TextUtils.isEmpty(configManager.getConfig().placement_info.placements.get(str).type) || !configManager.getConfig().placement_info.placements.get(str).type.equals("auction") || configManager.getConfig().placement_info.placements.get(str).ad_sources == null) {
            this.mRequestManager.setZoneId(str);
            this.mRequestManager.setRequestListener(this);
            this.mRequestManager.requestAd();
            return;
        }
        RemoteConfigPlacement remoteConfigPlacement = configManager.getConfig().placement_info.placements.get(str);
        boolean longValue = remoteConfigPlacement.timeout != null ? remoteConfigPlacement.timeout.longValue() : true;
        ArrayList arrayList = new ArrayList();
        AdSourceConfig adSourceConfig = new AdSourceConfig();
        adSourceConfig.setZoneId(str);
        arrayList.add(new HyBidAdSource(getContext(), adSourceConfig, this.mRequestManager.getAdSize()));
        for (RemoteConfigAdSource remoteConfigAdSource : remoteConfigPlacement.ad_sources) {
            if (!TextUtils.isEmpty(remoteConfigAdSource.type) && remoteConfigAdSource.type.equals("vast_tag")) {
                ?? adSourceConfig2 = new AdSourceConfig();
                adSourceConfig2.setName(remoteConfigAdSource.name);
                adSourceConfig2.setECPM(remoteConfigAdSource.eCPM != null ? remoteConfigAdSource.eCPM.doubleValue() : 0);
                adSourceConfig2.setVastTagUrl(remoteConfigAdSource.vastTagUrl);
                arrayList.add(new VastTagAdSource(getContext(), adSourceConfig2, this.mRequestManager.getAdSize()));
            }
        }
        this.mAuctionResponses.clear();
        Auction auction = new Auction(getContext(), arrayList, longValue ? 1L : 0L, HyBid.getReportingController(), this, mAdFormat);
        this.mAuction = auction;
        auction.runAuction();
    }

    public void load(String str, Position position, Listener listener) {
        cleanup();
        this.mListener = listener;
        this.mPosition = position;
        load(str, listener);
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdClicked(AdPresenter adPresenter) {
        invokeOnClick();
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdError(AdPresenter adPresenter) {
        C20576Ad poll = this.mAuctionResponses.poll();
        this.mAd = poll;
        if (poll == null) {
            invokeOnLoadFailed(new Exception("An error has occurred while rendering the ad"));
            return;
        }
        renderAd();
        Auction auction = this.mAuction;
        if (auction == null) {
            return;
        }
        auction.reportAuctionNextItem(this.mAuctionResponses.peek());
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdLoaded(AdPresenter adPresenter, View view) {
        if (view == null) {
            invokeOnLoadFailed(new Exception("An error has occurred while rendering the ad"));
        } else {
            setupAdView(view);
        }
    }

    @Override // net.pubnative.lite.sdk.auction.Auction.Listener
    public void onAuctionFailure(Throwable th) {
        invokeOnLoadFailed(new Exception(th));
    }

    @Override // net.pubnative.lite.sdk.auction.Auction.Listener
    public void onAuctionSuccess(PriorityQueue<C20576Ad> priorityQueue) {
        if (priorityQueue == null || priorityQueue.isEmpty()) {
            invokeOnLoadFailed(new Exception("The auction returned no ad"));
            return;
        }
        this.mAuctionResponses.addAll(priorityQueue);
        this.mAd = this.mAuctionResponses.poll();
        if (this.autoShowOnLoad) {
            renderAd();
        } else {
            invokeOnLoadFinished();
        }
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestFail(Throwable th) {
        invokeOnLoadFailed(new Exception(th));
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestSuccess(C20576Ad c20576Ad) {
        if (c20576Ad == null) {
            invokeOnLoadFailed(new Exception("Server returned null ad"));
            return;
        }
        this.mAd = c20576Ad;
        if (this.autoShowOnLoad) {
            renderAd();
        } else {
            invokeOnLoadFinished();
        }
    }

    public void renderAd() {
        AdPresenter createPresenter = createPresenter();
        this.mPresenter = createPresenter;
        if (createPresenter != null) {
            createPresenter.load();
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
        }
    }

    public void renderAd(String str, Listener listener) {
        cleanup();
        this.mListener = listener;
        if (!TextUtils.isEmpty(str)) {
            processAdValue(str);
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
        }
    }

    public void renderAd(C20576Ad c20576Ad, Listener listener) {
        if (c20576Ad == null) {
            invokeOnLoadFailed(new Exception("The provided ad is invalid."));
            return;
        }
        cleanup();
        this.mListener = listener;
        this.mAd = c20576Ad;
        renderAd();
    }

    public void renderCustomMarkup(String str, Listener listener) {
        int i;
        C20576Ad.AdType adType;
        cleanup();
        this.mListener = listener;
        if (TextUtils.isEmpty(str)) {
            invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
            return;
        }
        int i2 = C206422.$SwitchMap$net$pubnative$lite$sdk$models$AdSize[this.mRequestManager.getAdSize().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                i = 10;
                adType = C20576Ad.AdType.HTML;
            } else {
                i = 24;
                adType = C20576Ad.AdType.HTML;
            }
        } else if (MarkupUtils.isVastXml(str)) {
            i = 4;
            adType = C20576Ad.AdType.VIDEO;
        } else {
            i = 8;
            adType = C20576Ad.AdType.HTML;
        }
        this.mAd = new C20576Ad(i, str, adType);
        renderFromCustomAd();
    }

    protected void renderFromCustomAd() {
        AdPresenter createPresenter = createPresenter();
        this.mPresenter = createPresenter;
        if (createPresenter != null) {
            createPresenter.load();
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
        }
    }

    public void renderVideoTag(String str, final Listener listener) {
        PNHttpClient.makeRequest(getContext(), VastUrlUtils.formatURL(str), null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.views.HyBidAdView.1
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                String str2 = HyBidAdView.TAG;
                Logger.m628e(str2, "Request failed: " + th.toString());
                HyBidAdView.this.invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str2) {
                if (!TextUtils.isEmpty(str2)) {
                    HyBidAdView.this.renderCustomMarkup(str2, listener);
                }
            }
        });
    }

    public void setAdSize(AdSize adSize) {
        this.mRequestManager.setAdSize(adSize);
    }

    public void setAutoShowOnLoad(boolean z) {
        this.autoShowOnLoad = z;
    }

    public void setMediation(boolean z) {
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.setIntegrationType(z ? IntegrationType.MEDIATION : IntegrationType.STANDALONE);
        }
    }

    public void setPosition(Position position) {
        this.mPosition = position;
    }

    public void setScreenIabCategory(String str) {
        mScreenIabCategory = str;
    }

    public void setScreenKeywords(String str) {
        mScreenKeywords = str;
    }

    public void setUserIntent(String str) {
        mUserIntent = str;
    }

    protected void setupAdView(View view) {
        Position position = this.mPosition;
        if (position != null) {
            show(view, position);
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        addView(view, layoutParams);
        if (this.autoShowOnLoad) {
            invokeOnLoadFinished();
        }
        startTracking();
        invokeOnImpression();
    }

    public void show() {
        renderAd();
    }

    public void show(View view, Position position) {
        if (this.mWindowManager == null) {
            this.mWindowManager = (WindowManager) getContext().getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            int i = C206422.$SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position[position.ordinal()];
            if (i == 1) {
                layoutParams.gravity = 49;
            } else if (i == 2) {
                layoutParams.gravity = 81;
            }
            layoutParams.flags = 262152;
            layoutParams.width = (int) ViewUtils.convertDpToPixel(this.mRequestManager.getAdSize().getWidth(), getContext());
            layoutParams.height = (int) ViewUtils.convertDpToPixel(this.mRequestManager.getAdSize().getHeight(), getContext());
            layoutParams.format = -2;
            if (this.mContainer == null) {
                this.mContainer = new FrameLayout(getContext());
            }
            this.mContainer.addView(view);
            this.mWindowManager.addView(this.mContainer, layoutParams);
        }
        if (this.autoShowOnLoad) {
            invokeOnLoadFinished();
        }
        startTracking();
        invokeOnImpression();
    }

    protected void startTracking() {
        AdPresenter adPresenter = this.mPresenter;
        if (adPresenter != null) {
            adPresenter.startTracking();
        }
    }

    protected void stopTracking() {
        AdPresenter adPresenter = this.mPresenter;
        if (adPresenter != null) {
            adPresenter.stopTracking();
        }
    }
}
