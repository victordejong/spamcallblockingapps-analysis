package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzil.class */
public final class zzil implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzig f9510f;

    /* renamed from: g */
    private final /* synthetic */ zzig f9511g;

    /* renamed from: h */
    private final /* synthetic */ long f9512h;

    /* renamed from: i */
    private final /* synthetic */ boolean f9513i;

    /* renamed from: j */
    private final /* synthetic */ zzij f9514j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzil(zzij zzijVar, zzig zzigVar, zzig zzigVar2, long j, boolean z) {
        this.f9514j = zzijVar;
        this.f9510f = zzigVar;
        this.f9511g = zzigVar2;
        this.f9512h = j;
        this.f9513i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9514j.m11220L(this.f9510f, this.f9511g, this.f9512h, this.f9513i, null);
    }
}
