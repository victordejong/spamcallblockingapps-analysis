package com.pubmatic.sdk.openwrap.eventhandler.dfp;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent;
import com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler.class */
public class DFPInterstitialEventHandler extends AdListener implements POBInterstitialEvent, AppEventListener {

    /* renamed from: a */
    private DFPConfigListener f790a;

    /* renamed from: b */
    private Boolean f791b;

    /* renamed from: c */
    private boolean f792c;

    /* renamed from: d */
    private Timer f793d;

    /* renamed from: e */
    private Context f794e;

    /* renamed from: f */
    private String f795f;

    /* renamed from: g */
    private PublisherInterstitialAd f796g;

    /* renamed from: h */
    private POBInterstitialEventListener f797h;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener.class */
    public interface DFPConfigListener {
        void configure(PublisherInterstitialAd publisherInterstitialAd, PublisherAdRequest.Builder builder, POBBid pOBBid);
    }

    /* renamed from: com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPInterstitialEventHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a.class */
    public class C1946a extends TimerTask {

        /* renamed from: com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPInterstitialEventHandler$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a$a.class */
        class RunnableC1947a implements Runnable {
            RunnableC1947a() {
                C1946a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                DFPInterstitialEventHandler.this.m821b();
            }
        }

        C1946a() {
            DFPInterstitialEventHandler.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Handler(Looper.getMainLooper()).post(new RunnableC1947a());
        }
    }

    public DFPInterstitialEventHandler(Context context, String str) {
        this.f794e = context;
        this.f795f = str;
    }

    /* renamed from: a */
    private void m824a() {
        if (this.f796g != null) {
            this.f796g = null;
        }
        Context context = this.f794e;
        if (context == null || this.f795f == null) {
            PMLog.warn("DFPInstlEventHandler", "Can not initialise DFPInterstitialAd on null context or null ad unit Id, please pass valid data.", new Object[0]);
            return;
        }
        PublisherInterstitialAd publisherInterstitialAd = new PublisherInterstitialAd(context.getApplicationContext());
        this.f796g = publisherInterstitialAd;
        publisherInterstitialAd.setAdUnitId(this.f795f);
        this.f796g.setAdListener(this);
        this.f796g.setAppEventListener(this);
    }

    /* renamed from: a */
    private void m823a(POBError pOBError) {
        POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
        if (pOBInterstitialEventListener != null) {
            pOBInterstitialEventListener.onFailed(pOBError);
        }
    }

    /* renamed from: b */
    public void m821b() {
        if (this.f791b == null) {
            this.f791b = Boolean.FALSE;
            POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
            if (pOBInterstitialEventListener == null) {
                return;
            }
            pOBInterstitialEventListener.onAdServerWin();
        }
    }

    /* renamed from: c */
    private void m820c() {
        Timer timer = this.f793d;
        if (timer != null) {
            timer.cancel();
        }
        this.f793d = null;
    }

    /* renamed from: d */
    private void m819d() {
        m820c();
        C1946a c1946a = new C1946a();
        Timer timer = new Timer();
        this.f793d = timer;
        timer.schedule(c1946a, 400L);
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void destroy() {
        m820c();
        this.f796g = null;
        this.f790a = null;
        this.f797h = null;
        this.f794e = null;
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public POBInterstitialRendering getRenderer(String str) {
        return null;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
        if (pOBInterstitialEventListener != null) {
            pOBInterstitialEventListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        POBError pOBError;
        PMLog.info("DFPInstlEventHandler", "onAdFailedToLoad()", new Object[0]);
        POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
        if (pOBInterstitialEventListener == null) {
            PMLog.error("DFPInstlEventHandler", "Can not call failure callback, POBInterstitialEventListener reference null. DFP error:" + i, new Object[0]);
            return;
        }
        if (i == 1) {
            pOBError = new POBError(1001, "DFP SDK gives invalid request error");
        } else if (i == 2) {
            pOBError = new POBError(1003, "DFP SDK gives network error");
        } else if (i != 3) {
            pOBInterstitialEventListener.onFailed(new POBError(1006, "DFP SDK failed with error code:" + i));
            return;
        } else {
            pOBError = new POBError(1002, "DFP SDK gives no fill error");
        }
        pOBInterstitialEventListener.onFailed(pOBError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        super.onAdLeftApplication();
        POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
        if (pOBInterstitialEventListener != null) {
            pOBInterstitialEventListener.onAdClick();
            this.f797h.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        PMLog.info("DFPInstlEventHandler", "onAdLoaded()", new Object[0]);
        if (this.f797h == null || this.f791b != null) {
            return;
        }
        if (this.f792c) {
            m819d();
        } else {
            m821b();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
        if (pOBInterstitialEventListener != null) {
            pOBInterstitialEventListener.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public void onAppEvent(String str, String str2) {
        PMLog.info("DFPInstlEventHandler", hashCode() + " onAppEvent() key=" + str, new Object[0]);
        PMLog.debug("DFPInstlEventHandler", "DFP callback partner name: " + str + "bid id: " + str2, new Object[0]);
        if (TextUtils.equals(str, "pubmaticdm")) {
            Boolean bool = this.f791b;
            if (bool != null) {
                if (bool.booleanValue()) {
                    return;
                }
                m823a(new POBError(1010, "DFP ad server mismatched bid win signal"));
                return;
            }
            this.f791b = Boolean.TRUE;
            POBInterstitialEventListener pOBInterstitialEventListener = this.f797h;
            if (pOBInterstitialEventListener == null) {
                return;
            }
            pOBInterstitialEventListener.onOpenWrapPartnerWin(str2);
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        POBBidsProvider bidsProvider;
        Map<String, String> targetingInfo;
        PublisherInterstitialAd publisherInterstitialAd;
        if (this.f797h == null) {
            PMLog.warn("DFPInstlEventHandler", "Can not call load, DFPInterstitial is not available.", new Object[0]);
            return;
        }
        this.f792c = false;
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        m824a();
        DFPConfigListener dFPConfigListener = this.f790a;
        if (dFPConfigListener != null && (publisherInterstitialAd = this.f796g) != null) {
            dFPConfigListener.configure(publisherInterstitialAd, builder, pOBBid);
        }
        PublisherInterstitialAd publisherInterstitialAd2 = this.f796g;
        if (publisherInterstitialAd2 != null && (publisherInterstitialAd2.getAdListener() != this || this.f796g.getAppEventListener() != this)) {
            PMLog.warn("DFPInstlEventHandler", "Do not set DFP listeners. These are used by DFPInterstitialEventHandler internally.", new Object[0]);
        }
        if (this.f796g != null) {
            PMLog.debug("DFPInstlEventHandler", "DFP Banner Ad unit :" + this.f796g.getAdUnitId(), new Object[0]);
        }
        if (pOBBid != null && (bidsProvider = this.f797h.getBidsProvider()) != null && (targetingInfo = bidsProvider.getTargetingInfo()) != null && !targetingInfo.isEmpty()) {
            this.f792c = true;
            for (Map.Entry<String, String> entry : targetingInfo.entrySet()) {
                builder.addCustomTargeting(entry.getKey(), entry.getValue());
                PMLog.debug("DFPInstlEventHandler", "Targeting param [" + entry.getKey() + "] = " + entry.getValue(), new Object[0]);
            }
        }
        this.f791b = null;
        if (this.f796g == null) {
            return;
        }
        PublisherAdRequest build = builder.build();
        PMLog.debug("DFPInstlEventHandler", "Targeting sent in ad server request: " + build.getCustomTargeting(), new Object[0]);
        this.f796g.loadAd(build);
    }

    public void setConfigListener(DFPConfigListener dFPConfigListener) {
        this.f790a = dFPConfigListener;
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public void setEventListener(POBInterstitialEventListener pOBInterstitialEventListener) {
        this.f797h = pOBInterstitialEventListener;
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public void show() {
        PublisherInterstitialAd publisherInterstitialAd = this.f796g;
        if (publisherInterstitialAd != null && publisherInterstitialAd.isLoaded()) {
            this.f796g.show();
            return;
        }
        if (this.f797h != null) {
            m823a(new POBError(2002, "DFP SDK is not ready to show Interstitial Ad."));
        }
        PMLog.error("DFPInstlEventHandler", "DFP SDK is not ready to show Interstitial Ad.", new Object[0]);
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
    }
}
