package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdf.class */
public final class zzbdf extends zzgkl<zzbdf, zzbde> implements zzglw {
    private static final zzgkr<Integer, zzbbu> zzb = new zzbdd();
    private static final zzbdf zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private long zzi;
    private long zzj;
    private zzgkq zzk = zzgkl.zzaB();
    private zzbda zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;

    static {
        zzbdf zzbdfVar = new zzbdf();
        zze = zzbdfVar;
        zzgkl.zzaK(zzbdf.class, zzbdfVar);
    }

    private zzbdf() {
    }

    public static /* synthetic */ void zzA(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzo = i - 1;
        zzbdfVar.zzf |= 128;
    }

    public static /* synthetic */ void zzB(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzq = i - 1;
        zzbdfVar.zzf |= AdRequest.MAX_CONTENT_URL_LENGTH;
    }

    public static zzbde zzg() {
        return zze.zzat();
    }

    public static zzbdf zzi(byte[] bArr) throws zzgkx {
        return (zzbdf) zzgkl.zzax(zze, bArr);
    }

    public static /* synthetic */ void zzl(zzbdf zzbdfVar, long j) {
        zzbdfVar.zzf |= 1;
        zzbdfVar.zzg = j;
    }

    public static /* synthetic */ void zzm(zzbdf zzbdfVar, long j) {
        zzbdfVar.zzf |= 4;
        zzbdfVar.zzi = j;
    }

    public static /* synthetic */ void zzn(zzbdf zzbdfVar, long j) {
        zzbdfVar.zzf |= 8;
        zzbdfVar.zzj = j;
    }

    public static /* synthetic */ void zzo(zzbdf zzbdfVar, Iterable iterable) {
        zzgkq zzgkqVar = zzbdfVar.zzk;
        if (!zzgkqVar.zzc()) {
            zzbdfVar.zzk = zzgkl.zzaC(zzgkqVar);
        }
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            zzbdfVar.zzk.zzh(((zzbbu) it2.next()).zza());
        }
    }

    public static /* synthetic */ void zzp(zzbdf zzbdfVar, zzbda zzbdaVar) {
        Objects.requireNonNull(zzbdaVar);
        zzbdfVar.zzl = zzbdaVar;
        zzbdfVar.zzf |= 16;
    }

    public static /* synthetic */ void zzq(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzf |= 256;
        zzbdfVar.zzp = i;
    }

    public static /* synthetic */ void zzr(zzbdf zzbdfVar, zzbdj zzbdjVar) {
        zzbdfVar.zzr = zzbdjVar.zza();
        zzbdfVar.zzf |= 1024;
    }

    public static /* synthetic */ void zzx(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzh = i - 1;
        zzbdfVar.zzf |= 2;
    }

    public static /* synthetic */ void zzy(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzm = i - 1;
        zzbdfVar.zzf |= 32;
    }

    public static /* synthetic */ void zzz(zzbdf zzbdfVar, int i) {
        zzbdfVar.zzn = i - 1;
        zzbdfVar.zzf |= 64;
    }

    public final int zza() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgkp zzgkpVar = zzbcj.zza;
                return zzgkl.zzaJ(zze, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzf", "zzg", "zzh", zzgkpVar, "zzi", "zzj", "zzk", zzbbu.zzc(), "zzl", "zzm", zzgkpVar, "zzn", zzgkpVar, "zzo", zzgkpVar, "zzp", "zzq", zzgkpVar, "zzr", zzbdj.zzc()});
            } else if (i2 == 3) {
                return new zzbdf();
            } else {
                if (i2 == 4) {
                    return new zzbde(null);
                }
                if (i2 == 5) {
                    return zze;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzi;
    }

    public final long zze() {
        return this.zzg;
    }

    public final zzbda zzf() {
        zzbda zzbdaVar = this.zzl;
        zzbda zzbdaVar2 = zzbdaVar;
        if (zzbdaVar == null) {
            zzbdaVar2 = zzbda.zzd();
        }
        return zzbdaVar2;
    }

    public final zzbdj zzj() {
        zzbdj zzb2 = zzbdj.zzb(this.zzr);
        zzbdj zzbdjVar = zzb2;
        if (zzb2 == null) {
            zzbdjVar = zzbdj.UNSPECIFIED;
        }
        return zzbdjVar;
    }

    public final List<zzbbu> zzk() {
        return new zzgks(this.zzk, zzb);
    }

    public final int zzs() {
        int zza = zzbck.zza(this.zzn);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzt() {
        int zza = zzbck.zza(this.zzo);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzu() {
        int zza = zzbck.zza(this.zzq);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzv() {
        int zza = zzbck.zza(this.zzh);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzw() {
        int zza = zzbck.zza(this.zzm);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }
}
