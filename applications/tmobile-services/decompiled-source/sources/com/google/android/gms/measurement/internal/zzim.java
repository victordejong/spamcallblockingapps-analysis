package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzim.class */
public final class zzim implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzig f9515f;

    /* renamed from: g */
    private final /* synthetic */ long f9516g;

    /* renamed from: h */
    private final /* synthetic */ zzij f9517h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzim(zzij zzijVar, zzig zzigVar, long j) {
        this.f9517h = zzijVar;
        this.f9515f = zzigVar;
        this.f9516g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9517h.m11219M(this.f9515f, false, this.f9516g);
        zzij zzijVar = this.f9517h;
        zzijVar.f9500e = null;
        zzijVar.m11598q().m11198L(null);
    }
}
