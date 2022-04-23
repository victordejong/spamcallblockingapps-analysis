package com.amazon.device.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.AdType;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDInterstitialController.class */
class DTBAdMRAIDInterstitialController extends DTBAdMRAIDController implements DTBAdViewDisplayListener {

    /* renamed from: a  reason: collision with root package name */
    DTBAdInterstitialListener f6397a;
    boolean j = false;
    boolean k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDInterstitialController(DTBAdView dTBAdView, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(dTBAdView);
        this.f6397a = dTBAdInterstitialListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        this.i.setWebViewClient(null);
        DTBAdView dTBAdView = this.i;
        dTBAdView.removeJavascriptInterface("amzn_bridge");
        dTBAdView.f6417b.i = null;
        dTBAdView.f6417b.f = null;
        dTBAdView.f6417b = null;
        activity.finish();
    }

    private void c(String str) {
        a(str);
        a(MraidStateType.HIDDEN);
        b(false);
        final DTBInterstitialActivity a2 = DTBInterstitialActivity.a();
        if (a2 != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$fzRs_3vo3g0AIhcX6L4V_Y12aTc
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDInterstitialController.this.a(a2);
                }
            });
        }
    }

    private void u() throws JSONException {
        if (!this.j || !this.k) {
            n();
        } else {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public final void a() {
        ActivityMonitor.a().f6364b = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void a(Map<String, Object> map) {
        a("resize", "invalid placement type");
        a("resize");
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public final void b() {
        ActivityMonitor.a().f6364b = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void b(Map<String, Object> map) {
        a("expand", "invalid placement type for interstitial ");
        a("expand");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void c() {
        this.j = true;
        try {
            u();
        } catch (JSONException e) {
            DtbLog.c("Error:" + e.getMessage());
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    protected final String d() {
        return AdType.INTERSTITIAL;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void e() {
        c(EventConstants.CLOSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void f() {
        c("unload");
    }

    @Override // com.amazon.device.ads.DTBAdViewDisplayListener
    public final void h() {
        this.k = true;
        try {
            u();
        } catch (JSONException e) {
            DtbLog.c("JSON exception:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void i() {
        if (this.f6397a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$toNhMw91s0J7Y_bdKr1lp2BC04w
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDInterstitialController.this.w();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void j() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDInterstitialController$L9QnppyZhPHMxuIrrpmYL2cjQvA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDInterstitialController.this.v();
            }
        });
        ActivityMonitor.a().f6364b = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public final void k() {
        super.k();
    }
}
