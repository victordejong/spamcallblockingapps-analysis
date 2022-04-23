package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhf.class */
final class zzhf implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9404f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9405g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhf(zzgy zzgyVar, long j) {
        this.f9405g = zzgyVar;
        this.f9404f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9405g.m11312k().f9197p.m11432b(this.f9404f);
        this.f9405g.mo11081c().m11553K().m11539b("Minimum session duration set", Long.valueOf(this.f9404f));
    }
}
