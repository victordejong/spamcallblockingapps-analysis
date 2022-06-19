package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoi.class */
public final class zzaoi extends zzgkl<zzaoi, zzaoh> implements zzglw {
    private static final zzaoi zzb;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private long zzi;
    private long zzj;

    static {
        zzaoi zzaoiVar = new zzaoi();
        zzb = zzaoiVar;
        zzgkl.zzaK(zzaoi.class, zzaoiVar);
    }

    private zzaoi() {
    }

    public static zzaoh zze() {
        return zzb.zzat();
    }

    public static zzaoi zzg() {
        return zzb;
    }

    public static zzaoi zzh(zzgjf zzgjfVar) throws zzgkx {
        return (zzaoi) zzgkl.zzaw(zzb, zzgjfVar);
    }

    public static zzaoi zzi(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzaoi) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzl(zzaoi zzaoiVar, String str) {
        Objects.requireNonNull(str);
        zzaoiVar.zze |= 1;
        zzaoiVar.zzf = str;
    }

    public static /* synthetic */ void zzm(zzaoi zzaoiVar, long j) {
        zzaoiVar.zze |= 16;
        zzaoiVar.zzj = j;
    }

    public static /* synthetic */ void zzn(zzaoi zzaoiVar, String str) {
        Objects.requireNonNull(str);
        zzaoiVar.zze |= 2;
        zzaoiVar.zzg = str;
    }

    public static /* synthetic */ void zzo(zzaoi zzaoiVar, long j) {
        zzaoiVar.zze |= 4;
        zzaoiVar.zzh = j;
    }

    public static /* synthetic */ void zzp(zzaoi zzaoiVar, long j) {
        zzaoiVar.zze |= 8;
        zzaoiVar.zzi = j;
    }

    public final long zza() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzaoi();
            }
            if (i2 == 4) {
                return new zzaoh(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzh;
    }

    public final long zzd() {
        return this.zzj;
    }

    public final String zzj() {
        return this.zzg;
    }

    public final String zzk() {
        return this.zzf;
    }
}
