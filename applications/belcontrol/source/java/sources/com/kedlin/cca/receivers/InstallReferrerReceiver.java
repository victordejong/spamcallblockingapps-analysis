package com.kedlin.cca.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import p000.w91;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/InstallReferrerReceiver.class */
public class InstallReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            Bundle extras = intent.getExtras();
            Bundle bundle = null;
            String string = extras != null ? extras.getString("referrer") : null;
            if (!TextUtils.isEmpty(string)) {
                bundle = new Bundle();
                bundle.putString("Referrer", string);
            }
            w91.m275c(this, w91.EnumC1708a.INSTALL, bundle);
        } catch (Throwable th) {
            j91.m1495u(th);
        }
    }
}
