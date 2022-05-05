package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.internal.zzaj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/AnalyticsReceiver.class */
public final class AnalyticsReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private zzaj f3766a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f3766a == null) {
            this.f3766a = new zzaj();
        }
        this.f3766a.onReceive(context, intent);
    }
}
