package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwq.class */
public final class zzfwq implements zzgct {
    private final String zza;
    private final int zzb;
    private zzfym zzc;
    private zzfxo zzd;
    private int zze;
    private zzfyy zzf;

    public zzfwq(zzgau zzgauVar) throws GeneralSecurityException {
        String zza = zzgauVar.zza();
        this.zza = zza;
        if (zza.equals(zzfuo.zzb)) {
            try {
                zzfyp zzc = zzfyp.zzc(zzgauVar.zzc(), zzgfm.zza());
                this.zzc = (zzfym) zzfum.zzh(zzgauVar);
                this.zzb = zzc.zza();
            } catch (zzggm e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (zza.equals(zzfuo.zza)) {
            try {
                zzfxr zzd = zzfxr.zzd(zzgauVar.zzc(), zzgfm.zza());
                this.zzd = (zzfxo) zzfum.zzh(zzgauVar);
                this.zze = zzd.zza().zzc();
                this.zzb = this.zze + zzd.zzc().zzc();
            } catch (zzggm e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else if (!zza.equals(zzfwb.zza)) {
            String valueOf = String.valueOf(zza);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                zzfzb zzc2 = zzfzb.zzc(zzgauVar.zzc(), zzgfm.zza());
                this.zzf = (zzfyy) zzfum.zzh(zzgauVar);
                this.zzb = zzc2.zza();
            } catch (zzggm e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final zzfwr zzb(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length == this.zzb) {
            if (this.zza.equals(zzfuo.zzb)) {
                zzfyl zze = zzfym.zze();
                zze.zzai(this.zzc);
                zze.zzb(zzgex.zzs(bArr, 0, this.zzb));
                return new zzfwr((zzftg) zzfum.zzi(this.zza, zze.zzah(), zzftg.class));
            } else if (!this.zza.equals(zzfuo.zza)) {
                if (!this.zza.equals(zzfwb.zza)) {
                    throw new GeneralSecurityException("unknown DEM key type");
                }
                zzfyx zze2 = zzfyy.zze();
                zze2.zzai(this.zzf);
                zze2.zzb(zzgex.zzs(bArr, 0, this.zzb));
                return new zzfwr((zzftj) zzfum.zzi(this.zza, zze2.zzah(), zzftj.class));
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.zze);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.zze, this.zzb);
                zzfxt zzf = zzfxu.zzf();
                zzf.zzai(this.zzd.zzc());
                zzf.zzc(zzgex.zzt(copyOfRange));
                zzfxu zzah = zzf.zzah();
                zzgah zzf2 = zzgai.zzf();
                zzf2.zzai(this.zzd.zzd());
                zzf2.zzc(zzgex.zzt(copyOfRange2));
                zzgai zzah2 = zzf2.zzah();
                zzfxn zzf3 = zzfxo.zzf();
                zzf3.zza(this.zzd.zza());
                zzf3.zzb(zzah);
                zzf3.zzc(zzah2);
                return new zzfwr((zzftg) zzfum.zzi(this.zza, zzf3.zzah(), zzftg.class));
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
