package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjn.class */
public final class zzfjn extends zzgkl<zzfjn, zzfjm> implements zzglw {
    private static final zzfjn zzb;
    private zzfjj zze;

    static {
        zzfjn zzfjnVar = new zzfjn();
        zzb = zzfjnVar;
        zzgkl.zzaK(zzfjn.class, zzfjnVar);
    }

    private zzfjn() {
    }

    public static zzfjm zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzfjn zzfjnVar, zzfjj zzfjjVar) {
        Objects.requireNonNull(zzfjjVar);
        zzfjnVar.zze = zzfjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0006\u0006\u0001������\u0006\t", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzfjn();
            }
            if (i2 == 4) {
                return new zzfjm(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
