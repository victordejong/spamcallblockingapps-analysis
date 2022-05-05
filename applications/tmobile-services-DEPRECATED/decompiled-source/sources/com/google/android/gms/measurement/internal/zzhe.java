package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhe.class */
final class zzhe implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9402f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9403g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhe(zzgy zzgyVar, long j) {
        this.f9403g = zzgyVar;
        this.f9402f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9403g.m11312k().f9198q.m11432b(this.f9402f);
        this.f9403g.mo11081c().m11553K().m11539b("Session timeout duration set", Long.valueOf(this.f9402f));
    }
}
