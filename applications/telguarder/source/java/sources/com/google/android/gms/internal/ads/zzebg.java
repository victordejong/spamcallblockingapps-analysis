package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzegl;
import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebg.class */
public final class zzebg {
    @Deprecated
    public static final zzebc zzl(byte[] bArr) throws GeneralSecurityException {
        try {
            zzegl zzc = zzegl.zzc(bArr, zzeko.zzbhw());
            for (zzegl.zzb zzbVar : zzc.zzbel()) {
                if (zzbVar.zzbep().zzbdz() == zzegd.zza.UNKNOWN_KEYMATERIAL || zzbVar.zzbep().zzbdz() == zzegd.zza.SYMMETRIC || zzbVar.zzbep().zzbdz() == zzegd.zza.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzebc.zza(zzc);
        } catch (zzelo e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
