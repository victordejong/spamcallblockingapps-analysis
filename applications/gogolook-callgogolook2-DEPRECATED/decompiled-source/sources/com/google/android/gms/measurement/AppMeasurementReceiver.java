package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9016m0;
import p081h.p203i.p204a.p224e.p285m.p287b.C8998j0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements AbstractC9016m0 {

    /* renamed from: a */
    public C8998j0 f7144a;

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9016m0
    /* renamed from: a */
    public final BroadcastReceiver.PendingResult mo16468a() {
        return goAsync();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9016m0
    @MainThread
    /* renamed from: a */
    public final void mo16467a(Context context, Intent intent) {
        WakefulBroadcastReceiver.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (this.f7144a == null) {
            this.f7144a = new C8998j0(this);
        }
        this.f7144a.m16548a(context, intent);
    }
}
