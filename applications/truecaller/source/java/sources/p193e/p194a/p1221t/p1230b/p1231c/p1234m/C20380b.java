package p193e.p194a.p1221t.p1230b.p1231c.p1234m;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.clients.VerificationCallback;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
/* renamed from: e.a.t.b.c.m.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/m/b.class */
public class C20380b extends BroadcastReceiver {

    /* renamed from: a */
    public final WeakReference<VerificationCallback> f57256a;

    public C20380b(VerificationCallback verificationCallback) {
        this.f57256a = new WeakReference<>(verificationCallback);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        context.unregisterReceiver(this);
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            if (((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).f5728b != 0) {
                return;
            }
            Matcher matcher = Pattern.compile("\\b\\d{6,}\\b").matcher((String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"));
            C20363h c20363h = new C20363h();
            if (matcher.find()) {
                c20363h.f57217a.put(AnalyticsConstants.OTP, matcher.group());
            }
            if (this.f57256a.get() == null) {
                return;
            }
            this.f57256a.get().onRequestSuccess(2, c20363h);
        }
    }
}
