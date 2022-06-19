package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcm.class */
public final class zzbcm extends zzgkl<zzbcm, zzbcl> implements zzglw {
    private static final zzbcm zzb;
    private int zze;
    private int zzf;
    private int zzh;
    private zzbdw zzj;
    private zzbce zzl;
    private zzbch zzm;
    private zzbda zzn;
    private zzbbi zzo;
    private zzbdk zzp;
    private zzber zzq;
    private zzbbr zzr;
    private String zzg = "";
    private int zzi = 1000;
    private zzgkt zzk = zzgkl.zzaD();

    static {
        zzbcm zzbcmVar = new zzbcm();
        zzb = zzbcmVar;
        zzgkl.zzaK(zzbcm.class, zzbcmVar);
    }

    private zzbcm() {
    }

    public static zzbcl zzd() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzg(zzbcm zzbcmVar, String str) {
        Objects.requireNonNull(str);
        zzbcmVar.zze |= 2;
        zzbcmVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzbcm zzbcmVar, Iterable iterable) {
        zzgkt zzgktVar = zzbcmVar.zzk;
        if (!zzgktVar.zzc()) {
            int size = zzgktVar.size();
            zzbcmVar.zzk = zzgktVar.zza(size == 0 ? 10 : size + size);
        }
        zzgin.zzap(iterable, zzbcmVar.zzk);
    }

    public static /* synthetic */ void zzj(zzbcm zzbcmVar, zzbce zzbceVar) {
        Objects.requireNonNull(zzbceVar);
        zzbcmVar.zzl = zzbceVar;
        zzbcmVar.zze |= 32;
    }

    public static /* synthetic */ void zzk(zzbcm zzbcmVar, zzbbi zzbbiVar) {
        Objects.requireNonNull(zzbbiVar);
        zzbcmVar.zzo = zzbbiVar;
        zzbcmVar.zze |= 256;
    }

    public static /* synthetic */ void zzl(zzbcm zzbcmVar, zzbdk zzbdkVar) {
        Objects.requireNonNull(zzbdkVar);
        zzbcmVar.zzp = zzbdkVar;
        zzbcmVar.zze |= AdRequest.MAX_CONTENT_URL_LENGTH;
    }

    public static /* synthetic */ void zzm(zzbcm zzbcmVar, zzber zzberVar) {
        Objects.requireNonNull(zzberVar);
        zzbcmVar.zzq = zzberVar;
        zzbcmVar.zze |= 1024;
    }

    public static /* synthetic */ void zzn(zzbcm zzbcmVar, zzbbr zzbbrVar) {
        Objects.requireNonNull(zzbbrVar);
        zzbcmVar.zzr = zzbbrVar;
        zzbcmVar.zze |= 2048;
    }

    public final zzbbi zza() {
        zzbbi zzbbiVar = this.zzo;
        zzbbi zzbbiVar2 = zzbbiVar;
        if (zzbbiVar == null) {
            zzbbiVar2 = zzbbi.zzc();
        }
        return zzbbiVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\r��\u0001\t\u0015\r��\u0001��\tင��\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", zzbcj.zza, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr"});
            } else if (i2 == 3) {
                return new zzbcm();
            } else {
                if (i2 == 4) {
                    return new zzbcl(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final zzbce zzc() {
        zzbce zzbceVar = this.zzl;
        zzbce zzbceVar2 = zzbceVar;
        if (zzbceVar == null) {
            zzbceVar2 = zzbce.zzc();
        }
        return zzbceVar2;
    }

    public final String zzf() {
        return this.zzg;
    }
}
