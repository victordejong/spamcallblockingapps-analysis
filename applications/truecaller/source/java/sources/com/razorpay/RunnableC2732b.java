package com.razorpay;

import android.widget.Toast;
import com.razorpay.AnalyticsProperty;
import com.tenor.android.core.constant.StringConstant;
import org.json.JSONObject;
/* renamed from: com.razorpay.b */
/* loaded from: classes3-dex2jar.jar:com/razorpay/b.class */
public final class RunnableC2732b implements Runnable {

    /* renamed from: a */
    private /* synthetic */ String f9438a;

    /* renamed from: b */
    private /* synthetic */ RzpAssist f9439b;

    /* renamed from: com.razorpay.b$_f_ */
    /* loaded from: classes3-dex2jar.jar:com/razorpay/b$_f_.class */
    public final class _f_ implements Runnable {

        /* renamed from: a */
        private /* synthetic */ String f9440a;

        /* renamed from: b */
        private /* synthetic */ CheckoutPresenterImpl f9441b;

        public _f_(CheckoutPresenterImpl checkoutPresenterImpl, String str) {
            this.f9441b = checkoutPresenterImpl;
            this.f9440a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                JSONObject jSONObject = new JSONObject(this.f9440a);
                this.f9441b.enableAddon(jSONObject);
                if (jSONObject.has("content")) {
                    this.f9441b.view.loadDataWithBaseURL(2, "about:blank", jSONObject.getString("content"), "text/html", StringConstant.UTF8, null);
                }
                if (jSONObject.has("url")) {
                    this.f9441b.view.loadUrl(2, jSONObject.getString("url"));
                }
                if (!jSONObject.has("focus") || jSONObject.getBoolean("focus")) {
                    this.f9441b.view.makeWebViewVisible(2);
                } else {
                    this.f9441b.view.makeWebViewVisible(1);
                }
            } catch (Exception e) {
                AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
                e.printStackTrace();
            }
            AnalyticsUtil.addProperty("two_webview_flow", new AnalyticsProperty(true, AnalyticsProperty.Scope.PAYMENT));
        }
    }

    public RunnableC2732b(RzpAssist rzpAssist, String str) {
        this.f9439b = rzpAssist;
        this.f9438a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(RzpAssist.access$100(this.f9439b), this.f9438a, 1).show();
    }
}
