package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zze.class */
final class zze implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9070f;

    /* renamed from: g */
    private final /* synthetic */ zza f9071g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zza zzaVar, long j) {
        this.f9071g = zzaVar;
        this.f9070f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9071g.m11815A(this.f9070f);
    }
}
