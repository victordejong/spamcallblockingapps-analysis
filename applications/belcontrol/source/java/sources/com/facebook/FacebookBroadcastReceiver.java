package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookBroadcastReceiver.class */
public class FacebookBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public void m5229a(String str, String str2, Bundle bundle) {
    }

    /* renamed from: b */
    public void m5228b(String str, String str2, Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        String stringExtra2 = intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
        if (stringExtra == null || stringExtra2 == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        if (zm0.B(intent)) {
            m5229a(stringExtra, stringExtra2, extras);
        } else {
            m5228b(stringExtra, stringExtra2, extras);
        }
    }
}
