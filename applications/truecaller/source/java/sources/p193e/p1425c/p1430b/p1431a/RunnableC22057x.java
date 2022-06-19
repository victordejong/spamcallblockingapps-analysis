package p193e.p1425c.p1430b.p1431a;

import android.app.Activity;
import com.amazon.device.ads.DTBAdInterstitialListener;
import com.amazon.device.ads.DTBAdMRAIDInterstitialController;
/* renamed from: e.c.b.a.x */
/* loaded from: classes-dex2jar.jar:e/c/b/a/x.class */
public final /* synthetic */ class RunnableC22057x implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDInterstitialController f61302a;

    /* renamed from: b */
    public final /* synthetic */ Activity f61303b;

    public /* synthetic */ RunnableC22057x(DTBAdMRAIDInterstitialController dTBAdMRAIDInterstitialController, Activity activity) {
        this.f61302a = dTBAdMRAIDInterstitialController;
        this.f61303b = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDInterstitialController dTBAdMRAIDInterstitialController = this.f61302a;
        Activity activity = this.f61303b;
        dTBAdMRAIDInterstitialController.adView.setWebViewClient(null);
        DTBAdInterstitialListener dTBAdInterstitialListener = dTBAdMRAIDInterstitialController.interstitialListener;
        if (dTBAdInterstitialListener != null) {
            dTBAdInterstitialListener.onAdClosed(dTBAdMRAIDInterstitialController.adView);
        }
        dTBAdMRAIDInterstitialController.getAdView().cleanup();
        activity.finish();
    }
}
