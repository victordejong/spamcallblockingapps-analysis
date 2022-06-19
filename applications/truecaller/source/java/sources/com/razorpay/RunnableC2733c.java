package com.razorpay;

import com.razorpay.AnalyticsProperty;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.razorpay.c */
/* loaded from: classes3-dex2jar.jar:com/razorpay/c.class */
public final class RunnableC2733c implements Runnable {

    /* renamed from: a */
    private /* synthetic */ String f9442a;

    /* renamed from: b */
    private /* synthetic */ RzpAssist f9443b;

    /* renamed from: com.razorpay.c$_2_ */
    /* loaded from: classes3-dex2jar.jar:com/razorpay/c$_2_.class */
    public final class _2_ implements Runnable {

        /* renamed from: a */
        private /* synthetic */ JSONObject f9444a;

        /* renamed from: b */
        private /* synthetic */ CheckoutPresenterImpl f9445b;

        public _2_(CheckoutPresenterImpl checkoutPresenterImpl, JSONObject jSONObject) {
            this.f9445b = checkoutPresenterImpl;
            this.f9444a = jSONObject;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f9445b.view.loadUrl(1, String.format("javascript: CheckoutBridge.sendExtraAnalyticsData(%s)", this.f9444a.toString()));
            } catch (Exception e) {
                AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getLocalizedMessage());
            }
        }
    }

    public RunnableC2733c(RzpAssist rzpAssist, String str) {
        this.f9443b = rzpAssist;
        this.f9442a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            JSONObject jSONObject = new JSONObject(this.f9442a);
            OTP otp = new OTP(jSONObject.getString(AnalyticsConstants.OTP), jSONObject.getString(AnalyticsConstants.SENDER), jSONObject.getString(AnalyticsConstants.BANK));
            HashMap hashMap = new HashMap();
            hashMap.put(AnalyticsConstants.SENDER, otp.f9411a);
            if (otp.f9411a.contains("RZRPAY")) {
                RzpAssist.access$202(this.f9443b, true);
                hashMap.put(AnalyticsConstants.RAZORPAY_OTP, Boolean.TRUE);
            } else {
                hashMap.put(AnalyticsConstants.RAZORPAY_OTP, Boolean.FALSE);
                RzpAssist.access$302(this.f9443b, true);
                AnalyticsUtil.addProperty("payment_otp_received", new AnalyticsProperty(true, AnalyticsProperty.Scope.PAYMENT));
            }
            AnalyticsUtil.trackEvent(AnalyticsEvent.OTP_RECEIVED, hashMap);
        } catch (Exception e) {
            d__1_.m36087a("Error in parsing json", e);
        }
    }
}
