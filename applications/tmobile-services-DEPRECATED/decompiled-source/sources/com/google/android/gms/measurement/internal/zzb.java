package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzb.class */
public final class zzb implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f8986f;

    /* renamed from: g */
    private final /* synthetic */ long f8987g;

    /* renamed from: h */
    private final /* synthetic */ zza f8988h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar, String str, long j) {
        this.f8988h = zzaVar;
        this.f8986f = str;
        this.f8987g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8988h.m11811E(this.f8986f, this.f8987g);
    }
}
