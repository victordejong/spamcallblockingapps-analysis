package com.google.android.gms.measurement.internal;

import android.os.Handler;
import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjz.class */
public final class zzjz {

    /* renamed from: a */
    private zzjy f9636a;

    /* renamed from: b */
    final /* synthetic */ zzju f9637b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjz(zzju zzjuVar) {
        this.f9637b = zzjuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: a */
    public final void m11136a() {
        Handler handler;
        this.f9637b.mo11316e();
        if (this.f9636a != null) {
            handler = this.f9637b.f9625c;
            handler.removeCallbacks(this.f9636a);
        }
        if (this.f9637b.m11311l().m10880r(zzat.f8971v0)) {
            this.f9637b.m11312k().f9204w.m11439a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: b */
    public final void m11135b(long j) {
        Handler handler;
        this.f9636a = new zzjy(this, this.f9637b.mo11085a().mo14335a(), j);
        handler = this.f9637b.f9625c;
        handler.postDelayed(this.f9636a, 2000L);
    }
}
