package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfc.class */
public final class zzfc extends zzjx implements zzld {
    private static final zzfc zza;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private String zzg = "";
    private zzke zzi = zzjx.zzby();
    private zzke zzj = zzjx.zzby();
    private zzke zzk = zzjx.zzby();
    private String zzl = "";
    private zzke zzn = zzjx.zzby();

    static {
        zzfc zzfcVar = new zzfc();
        zza = zzfcVar;
        zzjx.zzbE(zzfc.class, zzfcVar);
    }

    private zzfc() {
    }

    public static zzfb zze() {
        return (zzfb) zza.zzbs();
    }

    public static zzfc zzg() {
        return zza;
    }

    public static /* synthetic */ void zzm(zzfc zzfcVar, int i, zzfa zzfaVar) {
        zzfaVar.getClass();
        zzke zzkeVar = zzfcVar.zzj;
        if (!zzkeVar.zzc()) {
            zzfcVar.zzj = zzjx.zzbz(zzkeVar);
        }
        zzfcVar.zzj.set(i, zzfaVar);
    }

    public final int zza() {
        return this.zzn.size();
    }

    public final int zzb() {
        return this.zzj.size();
    }

    public final long zzc() {
        return this.zzf;
    }

    public final zzfa zzd(int i) {
        return (zzfa) this.zzj.get(i);
    }

    public final String zzh() {
        return this.zzg;
    }

    public final List zzi() {
        return this.zzk;
    }

    public final List zzj() {
        return this.zzn;
    }

    public final List zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", zzfe.class, "zzj", zzfa.class, "zzk", zzeh.class, "zzl", "zzm", "zzn", zzgo.class});
            }
            if (i2 == 3) {
                return new zzfc();
            }
            if (i2 == 4) {
                return new zzfb(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zzo() {
        return this.zzm;
    }

    public final boolean zzp() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzq() {
        return (this.zze & 1) != 0;
    }
}
