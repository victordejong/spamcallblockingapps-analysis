package com.amazon.device.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.AdType;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDInterstitialController.class */
public class DTBAdMRAIDInterstitialController extends DTBAdMRAIDController implements DTBAdViewDisplayListener {

    /* renamed from: a */
    DTBAdInterstitialListener f11738a;

    /* renamed from: j */
    boolean f11739j = false;

    /* renamed from: k */
    boolean f11740k = false;

    public DTBAdMRAIDInterstitialController(DTBAdView dTBAdView, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(dTBAdView);
        this.f11738a = dTBAdInterstitialListener;
    }

    /* renamed from: a */
    public /* synthetic */ void m38999a(Activity activity) {
        this.f11723i.setWebViewClient(null);
        DTBAdView dTBAdView = this.f11723i;
        dTBAdView.removeJavascriptInterface("amzn_bridge");
        dTBAdView.f11780b.f11723i = null;
        dTBAdView.f11780b.f11720f = null;
        dTBAdView.f11780b = null;
        activity.finish();
    }

    /* renamed from: c */
    private void m38994c(String str) {
        m39030a(str);
        m39031a(MraidStateType.HIDDEN);
        m39023b(false);
        final DTBInterstitialActivity m38929a = DTBInterstitialActivity.m38929a();
        if (m38929a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$fzRs_3vo3g0AIhcX6L4V_Y12aTc
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDInterstitialController.this.m38999a(m38929a);
                }
            });
        }
    }

    /* renamed from: u */
    private void m38987u() throws JSONException {
        if (!this.f11739j || !this.f11740k) {
            m39012n();
        } else {
            m39011o();
        }
    }

    /* renamed from: v */
    public /* synthetic */ void m38986v() {
    }

    /* renamed from: w */
    public /* synthetic */ void m38985w() {
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    /* renamed from: a */
    public final void mo39000a() {
        ActivityMonitor.m39080a().f11666b = null;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: a */
    public final void mo38998a(Map<String, Object> map) {
        m39029a("resize", "invalid placement type");
        m39030a("resize");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    /* renamed from: b */
    public final void mo38997b() {
        ActivityMonitor.m39080a().f11666b = null;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: b */
    public final void mo38996b(Map<String, Object> map) {
        m39029a("expand", "invalid placement type for interstitial ");
        m39030a("expand");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: c */
    public final void mo38995c() {
        this.f11739j = true;
        try {
            m38987u();
        } catch (JSONException e) {
            DtbLog.m38821c("Error:" + e.getMessage());
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: d */
    protected final String mo38993d() {
        return AdType.INTERSTITIAL;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: e */
    public final void mo38992e() {
        m38994c(EventConstants.CLOSE);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: f */
    public final void mo38991f() {
        m38994c("unload");
    }

    @Override // com.amazon.device.ads.DTBAdViewDisplayListener
    /* renamed from: h */
    public final void mo38939h() {
        this.f11740k = true;
        try {
            m38987u();
        } catch (JSONException e) {
            DtbLog.m38821c("JSON exception:" + e.getMessage());
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: i */
    public final void mo38990i() {
        if (this.f11738a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$toNhMw91s0J7Y_bdKr1lp2BC04w
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDInterstitialController.this.m38985w();
                }
            });
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: j */
    public final void mo38989j() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$L9QnppyZhPHMxuIrrpmYL2cjQvA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDInterstitialController.this.m38986v();
            }
        });
        ActivityMonitor.m39080a().f11666b = this;
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    /* renamed from: k */
    public final void mo38988k() {
        super.mo38988k();
    }
}
