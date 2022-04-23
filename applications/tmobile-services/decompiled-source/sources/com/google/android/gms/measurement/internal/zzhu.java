package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhu.class */
public final class zzhu implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzad f9451f;

    /* renamed from: g */
    private final /* synthetic */ long f9452g;

    /* renamed from: h */
    private final /* synthetic */ int f9453h;

    /* renamed from: i */
    private final /* synthetic */ long f9454i;

    /* renamed from: j */
    private final /* synthetic */ boolean f9455j;

    /* renamed from: k */
    private final /* synthetic */ zzgy f9456k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhu(zzgy zzgyVar, zzad zzadVar, long j, int i, long j2, boolean z) {
        this.f9456k = zzgyVar;
        this.f9451f = zzadVar;
        this.f9452g = j;
        this.f9453h = i;
        this.f9454i = j2;
        this.f9455j = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9456k.m11288I(this.f9451f);
        this.f9456k.m11292E(this.f9452g, false);
        this.f9456k.m11286K(this.f9451f, this.f9453h, this.f9454i, true, this.f9455j);
    }
}
