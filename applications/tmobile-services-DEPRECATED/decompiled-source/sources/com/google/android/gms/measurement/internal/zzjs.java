package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjs.class */
final class zzjs implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzki f9620f;

    /* renamed from: g */
    private final /* synthetic */ Runnable f9621g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjs(zzjr zzjrVar, zzki zzkiVar, Runnable runnable) {
        this.f9620f = zzkiVar;
        this.f9621g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9620f.m11066j0();
        this.f9620f.m11111A(this.f9621g);
        this.f9620f.m11068i0();
    }
}
