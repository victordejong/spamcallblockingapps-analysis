package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfx.class */
public final class zzfx implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzgz f9305f;

    /* renamed from: g */
    private final /* synthetic */ zzfv f9306g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfx(zzfv zzfvVar, zzgz zzgzVar) {
        this.f9306g = zzfvVar;
        this.f9305f = zzgzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9306g.m11360m(this.f9305f);
        this.f9306g.m11365h(this.f9305f.f9391g);
    }
}
