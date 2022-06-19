package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgez.class */
public final class zzgez extends zzgkl<zzgez, zzgey> implements zzglw {
    private static final zzgez zzb;
    private zzgfc zze;
    private int zzf;
    private int zzg;

    static {
        zzgez zzgezVar = new zzgez();
        zzb = zzgezVar;
        zzgkl.zzaK(zzgez.class, zzgezVar);
    }

    private zzgez() {
    }

    public static zzgey zzc() {
        return zzb.zzat();
    }

    public static zzgez zze() {
        return zzb;
    }

    public static zzgez zzf(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgez) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzh(zzgez zzgezVar, zzgfc zzgfcVar) {
        Objects.requireNonNull(zzgfcVar);
        zzgezVar.zze = zzgfcVar;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgez();
            }
            if (i2 == 4) {
                return new zzgey(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgfc zzg() {
        zzgfc zzgfcVar = this.zze;
        zzgfc zzgfcVar2 = zzgfcVar;
        if (zzgfcVar == null) {
            zzgfcVar2 = zzgfc.zze();
        }
        return zzgfcVar2;
    }
}
