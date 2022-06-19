package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzegl;
import com.google.android.gms.internal.ads.zzego;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebq.class */
public final class zzebq {
    private static final Charset UTF_8 = Charset.forName(POBCommonConstants.URL_ENCODING);

    public static zzego zzb(zzegl zzeglVar) {
        zzego.zzb zzfn = zzego.zzbes().zzfn(zzeglVar.zzbek());
        for (zzegl.zzb zzbVar : zzeglVar.zzbel()) {
            zzfn.zzb((zzego.zza) ((zzelb) zzego.zza.zzbeu().zzhv(zzbVar.zzbep().zzbdx()).zzb(zzbVar.zzbau()).zzb(zzbVar.zzbav()).zzfo(zzbVar.zzbeq()).zzbiw()));
        }
        return (zzego) ((zzelb) zzfn.zzbiw());
    }

    public static void zzc(zzegl zzeglVar) throws GeneralSecurityException {
        int zzbek = zzeglVar.zzbek();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzegl.zzb zzbVar : zzeglVar.zzbel()) {
            if (zzbVar.zzbau() == zzege.ENABLED) {
                if (!zzbVar.zzbeo()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzbVar.zzbeq())));
                }
                if (zzbVar.zzbav() == zzegx.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzbVar.zzbeq())));
                }
                if (zzbVar.zzbau() == zzege.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzbVar.zzbeq())));
                }
                boolean z3 = z;
                if (zzbVar.zzbeq() == zzbek) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                if (zzbVar.zzbep().zzbdz() != zzegd.zza.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
                i++;
                z = z3;
            }
        }
        if (i != 0) {
            if (!z && !z2) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
