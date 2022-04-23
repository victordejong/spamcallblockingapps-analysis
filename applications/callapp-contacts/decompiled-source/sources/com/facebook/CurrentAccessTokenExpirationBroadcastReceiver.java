package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/facebook/CurrentAccessTokenExpirationBroadcastReceiver.class */
public final class CurrentAccessTokenExpirationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction()) && g.a()) {
            b a2 = b.a();
            a2.a(a2.f19680b, a2.f19680b);
        }
    }
}
