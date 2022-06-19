package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbe.class */
final class zzgbe implements zzghh {
    private final String zza;
    private final int zzb;
    private zzgda zzc;
    private zzgcc zzd;
    private int zze;
    private zzgdm zzf;

    public zzgbe(zzgfi zzgfiVar) throws GeneralSecurityException {
        String zzf = zzgfiVar.zzf();
        this.zza = zzf;
        if (zzf.equals(zzfzc.zzb)) {
            try {
                zzgdd zze = zzgdd.zze(zzgfiVar.zze(), zzgjx.zza());
                this.zzc = (zzgda) zzfza.zzd(zzgfiVar);
                this.zzb = zze.zza();
            } catch (zzgkx e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (zzf.equals(zzfzc.zza)) {
            try {
                zzgcf zzd = zzgcf.zzd(zzgfiVar.zze(), zzgjx.zza());
                this.zzd = (zzgcc) zzfza.zzd(zzgfiVar);
                this.zze = zzd.zze().zza();
                this.zzb = this.zze + zzd.zzf().zza();
            } catch (zzgkx e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else if (!zzf.equals(zzgap.zza)) {
            String valueOf = String.valueOf(zzf);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                zzgdp zze2 = zzgdp.zze(zzgfiVar.zze(), zzgjx.zza());
                this.zzf = (zzgdm) zzfza.zzd(zzgfiVar);
                this.zzb = zze2.zza();
            } catch (zzgkx e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghh
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzghh
    public final zzgbf zzb(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length == this.zzb) {
            if (this.zza.equals(zzfzc.zzb)) {
                zzgcz zzc = zzgda.zzc();
                zzc.zzaf(this.zzc);
                zzc.zza(zzgjf.zzw(bArr, 0, this.zzb));
                return new zzgbf((zzfxu) zzfza.zzg(this.zza, zzc.zzah(), zzfxu.class));
            } else if (!this.zza.equals(zzfzc.zza)) {
                if (!this.zza.equals(zzgap.zza)) {
                    throw new GeneralSecurityException("unknown DEM key type");
                }
                zzgdl zzc2 = zzgdm.zzc();
                zzc2.zzaf(this.zzf);
                zzc2.zza(zzgjf.zzw(bArr, 0, this.zzb));
                return new zzgbf((zzfxx) zzfza.zzg(this.zza, zzc2.zzah(), zzfxx.class));
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.zze);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.zze, this.zzb);
                zzgch zzc3 = zzgci.zzc();
                zzc3.zzaf(this.zzd.zzf());
                zzc3.zza(zzgjf.zzv(copyOfRange));
                zzgci zzah = zzc3.zzah();
                zzgev zzc4 = zzgew.zzc();
                zzc4.zzaf(this.zzd.zzg());
                zzc4.zza(zzgjf.zzv(copyOfRange2));
                zzgew zzah2 = zzc4.zzah();
                zzgcb zzc5 = zzgcc.zzc();
                zzc5.zzc(this.zzd.zza());
                zzc5.zza(zzah);
                zzc5.zzb(zzah2);
                return new zzgbf((zzfxu) zzfza.zzg(this.zza, zzc5.zzah(), zzfxu.class));
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
