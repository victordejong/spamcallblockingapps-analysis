package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.C2372a0;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookBroadcastReceiver.class */
public class FacebookBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public void m35479a(String str, String str2, Bundle bundle) {
    }

    /* renamed from: b */
    public void m35478b(String str, String str2, Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        String stringExtra2 = intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
        if (stringExtra != null && stringExtra2 != null) {
            Bundle extras = intent.getExtras();
            if (C2372a0.m34942g(intent)) {
                m35479a(stringExtra, stringExtra2, extras);
            } else {
                m35478b(stringExtra, stringExtra2, extras);
            }
        }
    }
}
