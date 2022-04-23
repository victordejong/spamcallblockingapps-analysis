package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.referrer.Payload;
import com.facebook.appevents.C2271g;
/* loaded from: classes-dex2jar.jar:com/facebook/CampaignTrackingReceiver.class */
public final class CampaignTrackingReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(Payload.REFERRER);
        if (stringExtra != null && stringExtra.startsWith("fb")) {
            C2271g.m35333a(intent.getStringExtra(Payload.REFERRER));
        }
    }
}
