package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzej.class */
public final class zzej extends zzkd<zzej, zzei> implements zzlj {
    private static final zzej zzm;
    private int zza;
    private int zze;
    private String zzf = "";
    private zzkk<zzel> zzg = zzkd.zzbE();
    private boolean zzh;
    private zzeq zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        zzej zzejVar = new zzej();
        zzm = zzejVar;
        zzkd.zzby(zzej.class, zzejVar);
    }

    private zzej() {
    }

    public static zzei zzn() {
        return zzm.zzbt();
    }

    public static /* synthetic */ void zzp(zzej zzejVar, String str) {
        zzejVar.zza |= 2;
        zzejVar.zzf = str;
    }

    public static /* synthetic */ void zzq(zzej zzejVar, int i, zzel zzelVar) {
        Objects.requireNonNull(zzelVar);
        zzkk<zzel> zzkkVar = zzejVar.zzg;
        if (!zzkkVar.zza()) {
            zzejVar.zzg = zzkd.zzbF(zzkkVar);
        }
        zzejVar.zzg.set(i, zzelVar);
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final List<zzel> zzd() {
        return this.zzg;
    }

    public final int zze() {
        return this.zzg.size();
    }

    public final zzel zzf(int i) {
        return this.zzg.get(i);
    }

    public final boolean zzg() {
        return (this.zza & 8) != 0;
    }

    public final zzeq zzh() {
        zzeq zzeqVar = this.zzi;
        zzeq zzeqVar2 = zzeqVar;
        if (zzeqVar == null) {
            zzeqVar2 = zzeq.zzk();
        }
        return zzeqVar2;
    }

    public final boolean zzi() {
        return this.zzj;
    }

    public final boolean zzj() {
        return this.zzk;
    }

    public final boolean zzk() {
        return (this.zza & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzm, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zza", "zze", "zzf", "zzg", zzel.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
            }
            if (i2 == 3) {
                return new zzej();
            }
            if (i2 == 4) {
                return new zzei(null);
            }
            if (i2 == 5) {
                return zzm;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zzm() {
        return this.zzl;
    }
}
