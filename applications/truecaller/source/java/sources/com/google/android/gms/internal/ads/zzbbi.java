package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbi.class */
public final class zzbbi extends zzgga<zzbbi, zzbbh> implements zzghj {
    private static final zzggg<Integer, zzazx> zzj = new zzbbg();
    private static final zzbbi zzr;
    private int zzb;
    private long zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private zzggf zzi = zzgga.zzaB();
    private zzbbd zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;

    static {
        zzbbi zzbbiVar = new zzbbi();
        zzr = zzbbiVar;
        zzgga.zzay(zzbbi.class, zzbbiVar);
    }

    private zzbbi() {
    }

    public static /* synthetic */ void zzA(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzn = i - 1;
        zzbbiVar.zzb |= 128;
    }

    public static /* synthetic */ void zzB(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzp = i - 1;
        zzbbiVar.zzb |= 512;
    }

    public static zzbbi zzi(byte[] bArr) throws zzggm {
        return (zzbbi) zzgga.zzaJ(zzr, bArr);
    }

    public static zzbbh zzj() {
        return zzr.zzas();
    }

    public static /* synthetic */ void zzl(zzbbi zzbbiVar, long j) {
        zzbbiVar.zzb |= 1;
        zzbbiVar.zze = j;
    }

    public static /* synthetic */ void zzm(zzbbi zzbbiVar, long j) {
        zzbbiVar.zzb |= 4;
        zzbbiVar.zzg = j;
    }

    public static /* synthetic */ void zzn(zzbbi zzbbiVar, long j) {
        zzbbiVar.zzb |= 8;
        zzbbiVar.zzh = j;
    }

    public static /* synthetic */ void zzo(zzbbi zzbbiVar, Iterable iterable) {
        zzggf zzggfVar = zzbbiVar.zzi;
        if (!zzggfVar.zza()) {
            zzbbiVar.zzi = zzgga.zzaC(zzggfVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzbbiVar.zzi.zzh(((zzazx) it.next()).zza());
        }
    }

    public static /* synthetic */ void zzp(zzbbi zzbbiVar, zzbbd zzbbdVar) {
        zzbbdVar.getClass();
        zzbbiVar.zzk = zzbbdVar;
        zzbbiVar.zzb |= 16;
    }

    public static /* synthetic */ void zzq(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzb |= 256;
        zzbbiVar.zzo = i;
    }

    public static /* synthetic */ void zzr(zzbbi zzbbiVar, zzbbm zzbbmVar) {
        zzbbiVar.zzq = zzbbmVar.zza();
        zzbbiVar.zzb |= 1024;
    }

    public static /* synthetic */ void zzx(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzf = i - 1;
        zzbbiVar.zzb |= 2;
    }

    public static /* synthetic */ void zzy(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzl = i - 1;
        zzbbiVar.zzb |= 32;
    }

    public static /* synthetic */ void zzz(zzbbi zzbbiVar, int i) {
        zzbbiVar.zzm = i - 1;
        zzbbiVar.zzb |= 64;
    }

    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgge zzggeVar = zzbam.zza;
                return zzgga.zzaz(zzr, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzb", "zze", "zzf", zzggeVar, "zzg", "zzh", "zzi", zzazx.zzc(), "zzk", "zzl", zzggeVar, "zzm", zzggeVar, "zzn", zzggeVar, "zzo", "zzp", zzggeVar, "zzq", zzbbm.zzc()});
            } else if (i2 == 3) {
                return new zzbbi();
            } else {
                if (i2 == 4) {
                    return new zzbbh(null);
                }
                if (i2 == 5) {
                    return zzr;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzg;
    }

    public final long zzd() {
        return this.zzh;
    }

    public final List<zzazx> zze() {
        return new zzggh(this.zzi, zzj);
    }

    public final zzbbd zzf() {
        zzbbd zzbbdVar = this.zzk;
        zzbbd zzbbdVar2 = zzbbdVar;
        if (zzbbdVar == null) {
            zzbbdVar2 = zzbbd.zze();
        }
        return zzbbdVar2;
    }

    public final int zzg() {
        return this.zzo;
    }

    public final zzbbm zzh() {
        zzbbm zzb = zzbbm.zzb(this.zzq);
        zzbbm zzbbmVar = zzb;
        if (zzb == null) {
            zzbbmVar = zzbbm.UNSPECIFIED;
        }
        return zzbbmVar;
    }

    public final int zzs() {
        int zza = zzban.zza(this.zzf);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzt() {
        int zza = zzban.zza(this.zzl);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzu() {
        int zza = zzban.zza(this.zzm);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzv() {
        int zza = zzban.zza(this.zzn);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzw() {
        int zza = zzban.zza(this.zzp);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }
}
