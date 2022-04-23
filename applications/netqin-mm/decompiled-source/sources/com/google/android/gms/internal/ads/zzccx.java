package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccx.class */
public final class zzccx implements zzeoy<zzcep> {

    /* renamed from: a */
    public final zzccw f25735a;

    public zzccx(zzccw zzccwVar) {
        this.f25735a = zzccwVar;
    }

    /* renamed from: a */
    public static zzccx m14799a(zzccw zzccwVar) {
        return new zzccx(zzccwVar);
    }

    /* renamed from: b */
    public static zzcep m14798b(zzccw zzccwVar) {
        zzcep a = zzccwVar.m14801a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14798b(this.f25735a);
    }
}
