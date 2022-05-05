package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.referrer.Payload;
import com.flurry.sdk.C3183gr;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3445la;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryInstallReceiver.class */
public final class FlurryInstallReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f3865a = FlurryInstallReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str = f3865a;
        C3356jq.m32615a(4, str, "Received an Install notification of " + intent.getAction());
        String string = intent.getExtras().getString(Payload.REFERRER);
        String str2 = f3865a;
        C3356jq.m32615a(4, str2, "Received an Install referrer of " + string);
        if (string == null || !"com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) {
            C3356jq.m32615a(5, f3865a, "referrer is null");
            return;
        }
        String str3 = string;
        if (!string.contains("=")) {
            String str4 = f3865a;
            C3356jq.m32615a(4, str4, "referrer is before decoding: " + string);
            str3 = C3445la.m32450h(string);
            String str5 = f3865a;
            C3356jq.m32615a(4, str5, "referrer is: " + str3);
        }
        new C3183gr(context).m32920a(str3);
    }
}
