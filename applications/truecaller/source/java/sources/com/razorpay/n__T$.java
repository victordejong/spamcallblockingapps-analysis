package com.razorpay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/razorpay/n__T$.class */
public final class n__T$ extends BroadcastReceiver {

    /* renamed from: a */
    private /* synthetic */ CheckoutPresenterImpl f9465a;

    public n__T$(CheckoutPresenterImpl checkoutPresenterImpl) {
        this.f9465a = checkoutPresenterImpl;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            int i = ((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).f5728b;
            if (i != 0) {
                if (i != 15) {
                    return;
                }
                AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT);
                return;
            }
            String str = (String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
            Intent intent2 = new Intent();
            intent2.putExtra("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE", str);
            this.f9465a.onActivityResultReceived(1001, -1, intent2);
        }
    }
}
