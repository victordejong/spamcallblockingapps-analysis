package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedj.class */
final class zzedj implements zzehr {
    private final String zzido;
    private final int zzidp;
    private zzees zzidq;
    private zzeec zzidr;
    private int zzids;

    public zzedj(zzegg zzeggVar) throws GeneralSecurityException {
        String zzbdx = zzeggVar.zzbdx();
        this.zzido = zzbdx;
        if (zzbdx.equals(zzebs.zzick)) {
            try {
                zzeev zzl = zzeev.zzl(zzeggVar.zzbdy(), zzeko.zzbhw());
                this.zzidq = (zzees) zzebm.zzb(zzeggVar);
                this.zzidp = zzl.getKeySize();
            } catch (zzelo e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (!zzbdx.equals(zzebs.zzicj)) {
            String valueOf = String.valueOf(zzbdx);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                zzeef zzf = zzeef.zzf(zzeggVar.zzbdy(), zzeko.zzbhw());
                this.zzidr = (zzeec) zzebm.zzb(zzeggVar);
                this.zzids = zzf.zzbbq().getKeySize();
                this.zzidp = this.zzids + zzf.zzbbr().getKeySize();
            } catch (zzelo e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzehr
    public final int zzbbd() {
        return this.zzidp;
    }

    @Override // com.google.android.gms.internal.ads.zzehr
    public final zzeaq zzm(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length == this.zzidp) {
            if (this.zzido.equals(zzebs.zzick)) {
                return (zzeaq) zzebm.zza(this.zzido, (zzees) ((zzelb) zzees.zzbci().zza(this.zzidq).zzw(zzejr.zzi(bArr, 0, this.zzidp)).zzbiw()), zzeaq.class);
            } else if (!this.zzido.equals(zzebs.zzicj)) {
                throw new GeneralSecurityException("unknown DEM key type");
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.zzids);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.zzids, this.zzidp);
                zzeeg zzeegVar = (zzeeg) ((zzelb) zzeeg.zzbbu().zza(this.zzidr.zzbbm()).zzu(zzejr.zzt(copyOfRange)).zzbiw());
                return (zzeaq) zzebm.zza(this.zzido, (zzeec) ((zzelb) zzeec.zzbbo().zzex(this.zzidr.getVersion()).zzc(zzeegVar).zzc((zzefv) ((zzelb) zzefv.zzbdp().zza(this.zzidr.zzbbn()).zzae(zzejr.zzt(copyOfRange2)).zzbiw())).zzbiw()), zzeaq.class);
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
