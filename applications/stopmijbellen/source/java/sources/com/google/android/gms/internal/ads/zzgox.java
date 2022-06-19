package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgox.class */
public final class zzgox extends zzgkl<zzgox, zzgnz> implements zzglw {
    private static final zzgox zzb;
    private int zze;
    private int zzf;
    private int zzg;
    private zzgob zzk;
    private zzgoo zzn;
    private boolean zzo;
    private boolean zzr;
    private boolean zzs;
    private zzgow zzu;
    private byte zzx = (byte) 2;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private zzgku<zzgou> zzl = zzgkl.zzaE();
    private String zzm = "";
    private zzgku<String> zzp = zzgkl.zzaE();
    private String zzq = "";
    private zzgjf zzt = zzgjf.zzb;
    private zzgku<String> zzv = zzgkl.zzaE();
    private zzgku<String> zzw = zzgkl.zzaE();

    static {
        zzgox zzgoxVar = new zzgox();
        zzb = zzgoxVar;
        zzgkl.zzaK(zzgox.class, zzgoxVar);
    }

    private zzgox() {
    }

    public static zzgnz zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzg(zzgox zzgoxVar, String str) {
        Objects.requireNonNull(str);
        zzgoxVar.zze |= 4;
        zzgoxVar.zzh = str;
    }

    public static /* synthetic */ void zzh(zzgox zzgoxVar, String str) {
        Objects.requireNonNull(str);
        zzgoxVar.zze |= 8;
        zzgoxVar.zzi = str;
    }

    public static /* synthetic */ void zzi(zzgox zzgoxVar, zzgob zzgobVar) {
        Objects.requireNonNull(zzgobVar);
        zzgoxVar.zzk = zzgobVar;
        zzgoxVar.zze |= 32;
    }

    public static /* synthetic */ void zzj(zzgox zzgoxVar, zzgou zzgouVar) {
        Objects.requireNonNull(zzgouVar);
        zzgku<zzgou> zzgkuVar = zzgoxVar.zzl;
        if (!zzgkuVar.zzc()) {
            zzgoxVar.zzl = zzgkl.zzaF(zzgkuVar);
        }
        zzgoxVar.zzl.add(zzgouVar);
    }

    public static /* synthetic */ void zzk(zzgox zzgoxVar, String str) {
        zzgoxVar.zze |= 64;
        zzgoxVar.zzm = str;
    }

    public static /* synthetic */ void zzl(zzgox zzgoxVar) {
        zzgoxVar.zze &= -65;
        zzgoxVar.zzm = zzb.zzm;
    }

    public static /* synthetic */ void zzm(zzgox zzgoxVar, zzgoo zzgooVar) {
        Objects.requireNonNull(zzgooVar);
        zzgoxVar.zzn = zzgooVar;
        zzgoxVar.zze |= 128;
    }

    public static /* synthetic */ void zzn(zzgox zzgoxVar, zzgow zzgowVar) {
        Objects.requireNonNull(zzgowVar);
        zzgoxVar.zzu = zzgowVar;
        zzgoxVar.zze |= 8192;
    }

    public static /* synthetic */ void zzo(zzgox zzgoxVar, Iterable iterable) {
        zzgku<String> zzgkuVar = zzgoxVar.zzv;
        if (!zzgkuVar.zzc()) {
            zzgoxVar.zzv = zzgkl.zzaF(zzgkuVar);
        }
        zzgin.zzap(iterable, zzgoxVar.zzv);
    }

    public static /* synthetic */ void zzp(zzgox zzgoxVar, Iterable iterable) {
        zzgku<String> zzgkuVar = zzgoxVar.zzw;
        if (!zzgkuVar.zzc()) {
            zzgoxVar.zzw = zzgkl.zzaF(zzgkuVar);
        }
        zzgin.zzap(iterable, zzgoxVar.zzw);
    }

    public static /* synthetic */ void zzq(zzgox zzgoxVar, int i) {
        zzgoxVar.zzf = i - 1;
        zzgoxVar.zze |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zze", "zzh", "zzi", "zzj", "zzl", zzgou.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zzf", zzgop.zza, "zzg", zzgny.zza, "zzk", "zzm", "zzn", "zzt", "zzu", "zzv", "zzw"});
            } else if (i2 == 3) {
                return new zzgox();
            } else {
                if (i2 == 4) {
                    return new zzgnz(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                if (obj == null) {
                    i3 = 0;
                }
                this.zzx = (byte) i3;
                return null;
            }
        }
        return Byte.valueOf(this.zzx);
    }

    public final String zzd() {
        return this.zzm;
    }

    public final String zze() {
        return this.zzh;
    }

    public final List<zzgou> zzf() {
        return this.zzl;
    }
}
