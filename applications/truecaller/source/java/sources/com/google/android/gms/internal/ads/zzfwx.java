package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwx.class */
public final class zzfwx extends zzftu<zzgai> {
    public zzfwx() {
        super(zzgai.class, new zzfwv(zzfty.class));
    }

    public static final void zzl(zzgai zzgaiVar) throws GeneralSecurityException {
        zzgdu.zzb(zzgaiVar.zza(), 0);
        if (zzgaiVar.zzd().zzc() >= 16) {
            zzn(zzgaiVar.zzc());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    public static /* synthetic */ zzftr<zzgal> zzm(int i, int i2, int i3, int i4) {
        zzgak zze = zzgal.zze();
        zzgan zzc = zzgao.zzc();
        zzc.zzb(i3);
        zzc.zza(i2);
        zze.zza(zzc.zzah());
        zze.zzb(i);
        return new zzftr<>(zze.zzah(), i4);
    }

    public static void zzn(zzgao zzgaoVar) throws GeneralSecurityException {
        if (zzgaoVar.zza() >= 10) {
            int zzg = zzgaoVar.zzg() - 2;
            if (zzg == 1) {
                if (zzgaoVar.zza() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 2) {
                if (zzgaoVar.zza() > 48) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 3) {
                if (zzgaoVar.zza() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 4) {
                if (zzgaoVar.zza() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg != 5) {
                throw new GeneralSecurityException("unknown hash type");
            } else {
                if (zzgaoVar.zza() > 28) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzgai zzc(zzgex zzgexVar) throws zzggm {
        return zzgai.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzgai zzgaiVar) throws GeneralSecurityException {
        zzl(zzgaiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzgai> zzh() {
        return new zzfww(this, zzgal.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzj() {
        return 2;
    }
}
