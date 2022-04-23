package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p081h.p154f.C6106b;
import p081h.p154f.C6135n;
/* loaded from: classes-dex2jar.jar:com/facebook/CurrentAccessTokenExpirationBroadcastReceiver.class */
public final class CurrentAccessTokenExpirationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction()) && C6135n.m23730u()) {
            C6106b.m23822g().m23837a();
        }
    }
}
