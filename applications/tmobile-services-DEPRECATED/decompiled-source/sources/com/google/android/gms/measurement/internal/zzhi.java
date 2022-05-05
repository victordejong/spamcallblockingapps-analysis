package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhi.class */
final class zzhi implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9420f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9421g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhi(zzgy zzgyVar, long j) {
        this.f9421g = zzgyVar;
        this.f9420f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9421g.m11292E(this.f9420f, true);
        this.f9421g.m11598q().m11193Q(new AtomicReference<>());
    }
}
