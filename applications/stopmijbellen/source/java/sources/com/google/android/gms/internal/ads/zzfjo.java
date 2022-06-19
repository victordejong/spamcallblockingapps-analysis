package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjo.class */
public final class zzfjo extends zzgkl<zzfjo, zzfjl> implements zzglw {
    private static final zzfjo zzb;
    private zzgku<zzfjn> zze = zzgkl.zzaE();

    static {
        zzfjo zzfjoVar = new zzfjo();
        zzb = zzfjoVar;
        zzgkl.zzaK(zzfjo.class, zzfjoVar);
    }

    private zzfjo() {
    }

    public static zzfjl zzc() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzf(zzfjo zzfjoVar, zzfjn zzfjnVar) {
        Objects.requireNonNull(zzfjnVar);
        zzgku<zzfjn> zzgkuVar = zzfjoVar.zze;
        if (!zzgkuVar.zzc()) {
            zzfjoVar.zze = zzgkl.zzaF(zzgkuVar);
        }
        zzfjoVar.zze.add(zzfjnVar);
    }

    public final int zza() {
        return this.zze.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zze", zzfjn.class});
            }
            if (i2 == 3) {
                return new zzfjo();
            }
            if (i2 == 4) {
                return new zzfjl(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
