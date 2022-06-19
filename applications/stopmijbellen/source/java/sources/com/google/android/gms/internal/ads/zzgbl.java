package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbl.class */
public final class zzgbl extends zzfyi<zzgew> {
    public zzgbl() {
        super(zzgew.class, new zzgbj(zzfym.class));
    }

    public static final void zzl(zzgew zzgewVar) throws GeneralSecurityException {
        zzgii.zzb(zzgewVar.zza(), 0);
        if (zzgewVar.zzh().zzd() >= 16) {
            zzn(zzgewVar.zzg());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    public static /* bridge */ /* synthetic */ zzfyf zzm(int i, int i2, int i3, int i4) {
        zzgey zzc = zzgez.zzc();
        zzgfb zzc2 = zzgfc.zzc();
        zzc2.zzb(i3);
        zzc2.zza(i2);
        zzc.zzb(zzc2.zzah());
        zzc.zza(i);
        return new zzfyf(zzc.zzah(), i4);
    }

    public static void zzn(zzgfc zzgfcVar) throws GeneralSecurityException {
        if (zzgfcVar.zza() >= 10) {
            int zzg = zzgfcVar.zzg() - 2;
            if (zzg == 1) {
                if (zzgfcVar.zza() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 2) {
                if (zzgfcVar.zza() > 48) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 3) {
                if (zzgfcVar.zza() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg == 4) {
                if (zzgfcVar.zza() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (zzg != 5) {
                throw new GeneralSecurityException("unknown hash type");
            } else {
                if (zzgfcVar.zza() > 28) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgew> zza() {
        return new zzgbk(this, zzgez.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgew zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgew.zzf(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgew zzgewVar) throws GeneralSecurityException {
        zzl(zzgewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzi() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
