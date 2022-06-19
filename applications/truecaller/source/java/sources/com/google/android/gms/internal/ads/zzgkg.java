package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkg.class */
public final class zzgkg extends zzgga<zzgkg, zzgji> implements zzghj {
    private static final zzgkg zzx;
    private int zzb;
    private int zze;
    private int zzf;
    private zzgjk zzj;
    private zzgjx zzm;
    private boolean zzn;
    private boolean zzq;
    private boolean zzr;
    private zzgkf zzt;
    private byte zzw = (byte) 2;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzggj<zzgkd> zzk = zzgga.zzaE();
    private String zzl = "";
    private zzggj<String> zzo = zzgga.zzaE();
    private String zzp = "";
    private zzgex zzs = zzgex.zzb;
    private zzggj<String> zzu = zzgga.zzaE();
    private zzggj<String> zzv = zzgga.zzaE();

    static {
        zzgkg zzgkgVar = new zzgkg();
        zzx = zzgkgVar;
        zzgga.zzay(zzgkg.class, zzgkgVar);
    }

    private zzgkg() {
    }

    public static zzgji zze() {
        return zzx.zzas();
    }

    public static /* synthetic */ void zzg(zzgkg zzgkgVar, String str) {
        str.getClass();
        zzgkgVar.zzb |= 4;
        zzgkgVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzgkg zzgkgVar, String str) {
        str.getClass();
        zzgkgVar.zzb |= 8;
        zzgkgVar.zzh = str;
    }

    public static /* synthetic */ void zzi(zzgkg zzgkgVar, zzgjk zzgjkVar) {
        zzgjkVar.getClass();
        zzgkgVar.zzj = zzgjkVar;
        zzgkgVar.zzb |= 32;
    }

    public static /* synthetic */ void zzj(zzgkg zzgkgVar, zzgkd zzgkdVar) {
        zzgkdVar.getClass();
        zzggj<zzgkd> zzggjVar = zzgkgVar.zzk;
        if (!zzggjVar.zza()) {
            zzgkgVar.zzk = zzgga.zzaF(zzggjVar);
        }
        zzgkgVar.zzk.add(zzgkdVar);
    }

    public static /* synthetic */ void zzk(zzgkg zzgkgVar, String str) {
        zzgkgVar.zzb |= 64;
        zzgkgVar.zzl = str;
    }

    public static /* synthetic */ void zzl(zzgkg zzgkgVar) {
        zzgkgVar.zzb &= -65;
        zzgkgVar.zzl = zzx.zzl;
    }

    public static /* synthetic */ void zzm(zzgkg zzgkgVar, zzgjx zzgjxVar) {
        zzgjxVar.getClass();
        zzgkgVar.zzm = zzgjxVar;
        zzgkgVar.zzb |= 128;
    }

    public static /* synthetic */ void zzn(zzgkg zzgkgVar, zzgkf zzgkfVar) {
        zzgkfVar.getClass();
        zzgkgVar.zzt = zzgkfVar;
        zzgkgVar.zzb |= 8192;
    }

    public static /* synthetic */ void zzo(zzgkg zzgkgVar, Iterable iterable) {
        zzggj<String> zzggjVar = zzgkgVar.zzu;
        if (!zzggjVar.zza()) {
            zzgkgVar.zzu = zzgga.zzaF(zzggjVar);
        }
        zzgeg.zzar(iterable, zzgkgVar.zzu);
    }

    public static /* synthetic */ void zzp(zzgkg zzgkgVar, Iterable iterable) {
        zzggj<String> zzggjVar = zzgkgVar.zzv;
        if (!zzggjVar.zza()) {
            zzgkgVar.zzv = zzgga.zzaF(zzggjVar);
        }
        zzgeg.zzar(iterable, zzgkgVar.zzv);
    }

    public static /* synthetic */ void zzq(zzgkg zzgkgVar, int i) {
        zzgkgVar.zze = i - 1;
        zzgkgVar.zzb |= 1;
    }

    public final String zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgga.zzaz(zzx, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzb", "zzg", "zzh", "zzi", "zzk", zzgkd.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zze", zzgjy.zza, "zzf", zzgjh.zza, "zzj", "zzl", "zzm", "zzs", "zzt", "zzu", "zzv"});
            } else if (i2 == 3) {
                return new zzgkg();
            } else {
                if (i2 == 4) {
                    return new zzgji(null);
                }
                if (i2 == 5) {
                    return zzx;
                }
                if (obj == null) {
                    i3 = 0;
                }
                this.zzw = (byte) i3;
                return null;
            }
        }
        return Byte.valueOf(this.zzw);
    }

    public final List<zzgkd> zzc() {
        return this.zzk;
    }

    public final String zzd() {
        return this.zzl;
    }
}
