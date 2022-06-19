package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcn.class */
public final class zzcn extends zzhs<zzcn, zzcm> implements zziy {
    private static final zzcn zzi;
    private int zza;
    private String zze = "";
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        zzcn zzcnVar = new zzcn();
        zzi = zzcnVar;
        zzhs.zzby(zzcn.class, zzcnVar);
    }

    private zzcn() {
    }

    public static /* synthetic */ void zzg(zzcn zzcnVar, String str) {
        str.getClass();
        zzcnVar.zza |= 1;
        zzcnVar.zze = str;
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

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzcn();
            }
            if (i2 == 4) {
                return new zzcm(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
