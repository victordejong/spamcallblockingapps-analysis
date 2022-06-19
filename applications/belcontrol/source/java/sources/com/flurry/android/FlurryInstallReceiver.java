package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.flurry.sdk.C0403hy;
import com.flurry.sdk.C0478ku;
import com.flurry.sdk.C0505md;
/* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryInstallReceiver.class */
public final class FlurryInstallReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f3178a = FlurryInstallReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str = f3178a;
        C0478ku.m4596a(4, str, "Received an Install notification of " + intent.getAction());
        String string = intent.getExtras().getString("referrer");
        C0478ku.m4596a(4, str, "Received an Install referrer of " + string);
        if (string == null || !"com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) {
            C0478ku.m4596a(5, str, "referrer is null");
            return;
        }
        String str2 = string;
        if (!string.contains("=")) {
            C0478ku.m4596a(4, str, "referrer is before decoding: " + string);
            str2 = C0505md.m4474h(string);
            C0478ku.m4596a(4, str, "referrer is: " + str2);
        }
        new C0403hy(context).m4767a(str2);
    }
}
