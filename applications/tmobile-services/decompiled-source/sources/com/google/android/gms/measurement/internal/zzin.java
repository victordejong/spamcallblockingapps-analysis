package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzin.class */
public final class zzin implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9518f;

    /* renamed from: g */
    private final /* synthetic */ zzij f9519g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzin(zzij zzijVar, long j) {
        this.f9519g = zzijVar;
        this.f9518f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9519g.m11601n().m11810u(this.f9518f);
        this.f9519g.f9500e = null;
    }
}
