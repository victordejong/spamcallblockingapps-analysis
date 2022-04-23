package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzfm;
import com.google.android.gms.measurement.internal.zzfn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzfm {

    /* renamed from: c */
    private zzfn f8818c;

    @Override // com.google.android.gms.measurement.internal.zzfm
    @MainThread
    /* renamed from: a */
    public final void mo11425a(Context context, Intent intent) {
        WakefulBroadcastReceiver.m18266c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (this.f8818c == null) {
            this.f8818c = new zzfn(this);
        }
        this.f8818c.m11424a(context, intent);
    }
}
