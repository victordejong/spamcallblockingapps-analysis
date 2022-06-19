package com.pubmatic.sdk.openwrap.eventhandler.dfp;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.openwrap.banner.POBBannerEvent;
import com.pubmatic.sdk.openwrap.banner.POBBannerEventListener;
import com.pubmatic.sdk.openwrap.core.POBBid;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler.class */
public class DFPBannerEventHandler extends AdListener implements POBBannerEvent, AppEventListener {

    /* renamed from: a */
    private DFPConfigListener f782a;

    /* renamed from: b */
    private Boolean f783b;

    /* renamed from: c */
    private boolean f784c;

    /* renamed from: d */
    private Timer f785d;

    /* renamed from: e */
    private PublisherAdView f786e;

    /* renamed from: f */
    private POBBannerEventListener f787f;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener.class */
    public interface DFPConfigListener {
        void configure(PublisherAdView publisherAdView, PublisherAdRequest.Builder builder, POBBid pOBBid);
    }

    /* renamed from: com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$a.class */
    public class C1944a extends TimerTask {

        /* renamed from: com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$a$a.class */
        class RunnableC1945a implements Runnable {
            RunnableC1945a() {
                C1944a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                DFPBannerEventHandler.this.m829a();
            }
        }

        C1944a() {
            DFPBannerEventHandler.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Handler(Looper.getMainLooper()).post(new RunnableC1945a());
        }
    }

    public DFPBannerEventHandler(Context context, String str, AdSize... adSizeArr) {
        PublisherAdView publisherAdView = new PublisherAdView(context.getApplicationContext());
        this.f786e = publisherAdView;
        publisherAdView.setAdUnitId(str);
        this.f786e.setAdSizes(adSizeArr);
        this.f786e.setAdListener(this);
        this.f786e.setAppEventListener(this);
    }

    /* renamed from: a */
    public void m829a() {
        if (this.f783b == null) {
            this.f783b = Boolean.FALSE;
            POBBannerEventListener pOBBannerEventListener = this.f787f;
            if (pOBBannerEventListener == null) {
                return;
            }
            pOBBannerEventListener.onAdServerWin(this.f786e);
        }
    }

    /* renamed from: a */
    private void m828a(POBError pOBError) {
        POBBannerEventListener pOBBannerEventListener = this.f787f;
        if (pOBBannerEventListener == null || pOBError == null) {
            return;
        }
        pOBBannerEventListener.onFailed(pOBError);
    }

    /* renamed from: b */
    private void m826b() {
        Timer timer = this.f785d;
        if (timer != null) {
            timer.cancel();
        }
        this.f785d = null;
    }

    /* renamed from: c */
    private void m825c() {
        m826b();
        C1944a c1944a = new C1944a();
        Timer timer = new Timer();
        this.f785d = timer;
        timer.schedule(c1944a, 400L);
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void destroy() {
        m826b();
        PublisherAdView publisherAdView = this.f786e;
        if (publisherAdView != null) {
            publisherAdView.destroy();
            this.f786e = null;
        }
        this.f787f = null;
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBAdSize getAdSize() {
        AdSize adSize;
        PublisherAdView publisherAdView = this.f786e;
        if (publisherAdView == null || (adSize = publisherAdView.getAdSize()) == null) {
            return null;
        }
        return new POBAdSize(adSize.getWidth(), adSize.getHeight());
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBBannerRendering getRenderer(String str) {
        return null;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        POBBannerEventListener pOBBannerEventListener = this.f787f;
        if (pOBBannerEventListener != null) {
            pOBBannerEventListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        POBError pOBError;
        PMLog.info("DFPBannerEventHandler", "onAdFailedToLoad()", new Object[0]);
        POBBannerEventListener pOBBannerEventListener = this.f787f;
        if (pOBBannerEventListener == null) {
            PMLog.error("DFPBannerEventHandler", "Can not call failure callback, POBBannerEventListener reference null. DFP error:" + i, new Object[0]);
            return;
        }
        if (i == 1) {
            pOBError = new POBError(1001, "DFP SDK gives invalid request error");
        } else if (i == 2) {
            pOBError = new POBError(1003, "DFP SDK gives network error");
        } else if (i != 3) {
            pOBBannerEventListener.onFailed(new POBError(1006, "DFP SDK failed with error code:" + i));
            return;
        } else {
            pOBError = new POBError(1002, "DFP SDK gives no fill error");
        }
        pOBBannerEventListener.onFailed(pOBError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        super.onAdLeftApplication();
        POBBannerEventListener pOBBannerEventListener = this.f787f;
        if (pOBBannerEventListener != null) {
            pOBBannerEventListener.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        PMLog.info("DFPBannerEventHandler", "onAdServerWin()", new Object[0]);
        if (this.f787f == null || this.f783b != null) {
            return;
        }
        if (this.f784c) {
            m825c();
        } else {
            m829a();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        POBBannerEventListener pOBBannerEventListener = this.f787f;
        if (pOBBannerEventListener != null) {
            pOBBannerEventListener.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public void onAppEvent(String str, String str2) {
        PMLog.info("DFPBannerEventHandler", "onAppEvent()", new Object[0]);
        if (this.f786e != null) {
            PMLog.debug("DFPBannerEventHandler", "DFP Banner Ad size :" + this.f786e.getAdSize().toString(), new Object[0]);
        }
        PMLog.debug("DFPBannerEventHandler", "DFP callback partner name: " + str + "bid id: " + str2, new Object[0]);
        if (TextUtils.equals(str, "pubmaticdm")) {
            Boolean bool = this.f783b;
            if (bool != null) {
                if (bool.booleanValue()) {
                    return;
                }
                m828a(new POBError(1010, "DFP ad server mismatched bid win signal"));
                return;
            }
            this.f783b = Boolean.TRUE;
            POBBannerEventListener pOBBannerEventListener = this.f787f;
            if (pOBBannerEventListener == null) {
                return;
            }
            pOBBannerEventListener.onOpenWrapPartnerWin(str2);
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        POBBidsProvider bidsProvider;
        Map<String, String> targetingInfo;
        if (this.f786e == null || this.f787f == null) {
            PMLog.warn("DFPBannerEventHandler", "DFPBannerEventHandler has been destroyed, initialise it before calling requestAd().", new Object[0]);
            return;
        }
        this.f784c = false;
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        DFPConfigListener dFPConfigListener = this.f782a;
        if (dFPConfigListener != null) {
            dFPConfigListener.configure(this.f786e, builder, pOBBid);
        }
        if (this.f786e.getAdListener() != this || this.f786e.getAppEventListener() != this) {
            PMLog.warn("DFPBannerEventHandler", "Do not set DFP listeners. These are used by DFPBannerEventHandler internally.", new Object[0]);
        }
        PMLog.debug("DFPBannerEventHandler", "DFP Banner Ad unit :" + this.f786e.getAdUnitId(), new Object[0]);
        if (pOBBid != null && (bidsProvider = this.f787f.getBidsProvider()) != null && (targetingInfo = bidsProvider.getTargetingInfo()) != null && !targetingInfo.isEmpty()) {
            this.f784c = true;
            for (Map.Entry<String, String> entry : targetingInfo.entrySet()) {
                builder.addCustomTargeting(entry.getKey(), entry.getValue());
                PMLog.debug("DFPBannerEventHandler", "Targeting param [" + entry.getKey() + "] = " + entry.getValue(), new Object[0]);
            }
        }
        this.f783b = null;
        PublisherAdRequest build = builder.build();
        PMLog.debug("DFPBannerEventHandler", "Targeting sent in ad server request: " + build.getCustomTargeting(), new Object[0]);
        this.f786e.loadAd(build);
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBAdSize[] requestedAdSizes() {
        POBAdSize[] pOBAdSizeArr;
        AdSize[] adSizes;
        PublisherAdView publisherAdView = this.f786e;
        if (publisherAdView != null && (adSizes = publisherAdView.getAdSizes()) != null && adSizes.length > 0) {
            POBAdSize[] pOBAdSizeArr2 = new POBAdSize[adSizes.length];
            int i = 0;
            while (true) {
                pOBAdSizeArr = pOBAdSizeArr2;
                if (i >= adSizes.length) {
                    break;
                }
                pOBAdSizeArr2[i] = new POBAdSize(adSizes[i].getWidth(), adSizes[i].getHeight());
                i++;
            }
        } else {
            pOBAdSizeArr = null;
        }
        return pOBAdSizeArr;
    }

    public void setConfigListener(DFPConfigListener dFPConfigListener) {
        this.f782a = dFPConfigListener;
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public void setEventListener(POBBannerEventListener pOBBannerEventListener) {
        this.f787f = pOBBannerEventListener;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
    }
}
