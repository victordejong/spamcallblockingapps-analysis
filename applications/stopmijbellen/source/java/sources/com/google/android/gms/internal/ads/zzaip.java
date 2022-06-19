package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaip.class */
public final class zzaip extends zzgkl<zzaip, zzail> implements zzglw {
    private static final zzaip zzb;
    private int zze;
    private long zzg;
    private long zzk;
    private long zzl;
    private long zzn;
    private int zzr;
    private String zzf = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzm = "";
    private String zzo = "";
    private String zzp = "";
    private zzgku<zzain> zzq = zzgkl.zzaE();

    static {
        zzaip zzaipVar = new zzaip();
        zzb = zzaipVar;
        zzgkl.zzaK(zzaip.class, zzaipVar);
    }

    private zzaip() {
    }

    public static zzail zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzaip zzaipVar, long j) {
        zzaipVar.zze |= 2;
        zzaipVar.zzg = j;
    }

    public static /* synthetic */ void zze(zzaip zzaipVar, String str) {
        Objects.requireNonNull(str);
        zzaipVar.zze |= 4;
        zzaipVar.zzh = str;
    }

    public static /* synthetic */ void zzf(zzaip zzaipVar, String str) {
        Objects.requireNonNull(str);
        zzaipVar.zze |= 8;
        zzaipVar.zzi = str;
    }

    public static /* synthetic */ void zzg(zzaip zzaipVar, String str) {
        zzaipVar.zze |= 16;
        zzaipVar.zzj = str;
    }

    public static /* synthetic */ void zzh(zzaip zzaipVar, String str) {
        zzaipVar.zze |= 1024;
        zzaipVar.zzp = str;
    }

    public static /* synthetic */ void zzi(zzaip zzaipVar, String str) {
        Objects.requireNonNull(str);
        zzaipVar.zze |= 1;
        zzaipVar.zzf = str;
    }

    public static /* synthetic */ void zzj(zzaip zzaipVar, int i) {
        zzaipVar.zzr = i - 1;
        zzaipVar.zze |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", zzain.class, "zzr", zzaio.zza});
            } else if (i2 == 3) {
                return new zzaip();
            } else {
                if (i2 == 4) {
                    return new zzail(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
