package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccy.class */
public final class zzccy implements zzeoy<zzccw> {

    /* renamed from: a */
    public final zzccw f25736a;

    public zzccy(zzccw zzccwVar) {
        this.f25736a = zzccwVar;
    }

    /* renamed from: a */
    public static zzccy m14797a(zzccw zzccwVar) {
        return new zzccy(zzccwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzccw zzccwVar = this.f25736a;
        if (zzccwVar != null) {
            zzepe.m12187a(zzccwVar, "Cannot return null from a non-@Nullable @Provides method");
            return zzccwVar;
        }
        throw null;
    }
}
