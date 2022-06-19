package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjj.class */
public final class zzfjj extends zzgkl<zzfjj, zzfji> implements zzglw {
    private static final zzfjj zzb;
    private int zze;
    private boolean zzf;
    private long zzg;
    private int zzh;
    private int zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private int zzp;
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";
    private String zzt = "";
    private String zzu = "";

    static {
        zzfjj zzfjjVar = new zzfjj();
        zzb = zzfjjVar;
        zzgkl.zzaK(zzfjj.class, zzfjjVar);
    }

    private zzfjj() {
    }

    public static zzfji zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzi = str;
    }

    public static /* synthetic */ void zze(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzj = str;
    }

    public static /* synthetic */ void zzf(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzk = str;
    }

    public static /* synthetic */ void zzj(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzq = str;
    }

    public static /* synthetic */ void zzk(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzr = str;
    }

    public static /* synthetic */ void zzl(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzs = str;
    }

    public static /* synthetic */ void zzo(zzfjj zzfjjVar, String str) {
        Objects.requireNonNull(str);
        zzfjjVar.zzu = str;
    }

    public static /* synthetic */ void zzr(zzfjj zzfjjVar, int i) {
        if (i != 1) {
            zzfjjVar.zzm = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static /* synthetic */ void zzs(zzfjj zzfjjVar, int i) {
        if (i != 1) {
            zzfjjVar.zzp = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0011����\u0001\u0011\u0011������\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu"});
            }
            if (i2 == 3) {
                return new zzfjj();
            }
            if (i2 == 4) {
                return new zzfji(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
