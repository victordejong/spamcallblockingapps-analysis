package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfa.class */
public final class zzfa extends zzkd<zzfa, zzez> implements zzlj {
    private static final zzfa zzi;
    private int zza;
    private String zze = "";
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        zzfa zzfaVar = new zzfa();
        zzi = zzfaVar;
        zzkd.zzby(zzfa.class, zzfaVar);
    }

    private zzfa() {
    }

    public static /* synthetic */ void zzg(zzfa zzfaVar, String str) {
        Objects.requireNonNull(str);
        zzfaVar.zza |= 1;
        zzfaVar.zze = str;
    }

    public final String zza() {
        return this.zze;
    }

    public final boolean zzb() {
        return this.zzf;
    }

    public final boolean zzc() {
        return this.zzg;
    }

    public final boolean zzd() {
        return (this.zza & 8) != 0;
    }

    public final int zze() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzfa();
            }
            if (i2 == 4) {
                return new zzez(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
