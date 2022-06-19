package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfun.class */
public final class zzfun {
    public static final Charset zza = Charset.forName(StringConstant.UTF8);

    public static zzgbh zza(zzgbc zzgbcVar) {
        zzgbe zza2 = zzgbh.zza();
        zza2.zza(zzgbcVar.zza());
        for (zzgbb zzgbbVar : zzgbcVar.zzc()) {
            zzgbf zza3 = zzgbg.zza();
            zza3.zza(zzgbbVar.zzc().zza());
            zza3.zzc(zzgbbVar.zzf());
            zza3.zzd(zzgbbVar.zzg());
            zza3.zzb(zzgbbVar.zzd());
            zza2.zzb(zza3.zzah());
        }
        return zza2.zzah();
    }

    public static void zzb(zzgbc zzgbcVar) throws GeneralSecurityException {
        int zza2 = zzgbcVar.zza();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzgbb zzgbbVar : zzgbcVar.zzc()) {
            if (zzgbbVar.zzf() == 3) {
                if (!zzgbbVar.zza()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgbbVar.zzd())));
                }
                if (zzgbbVar.zzg() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgbbVar.zzd())));
                }
                if (zzgbbVar.zzf() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgbbVar.zzd())));
                }
                boolean z3 = z;
                if (zzgbbVar.zzd() == zza2) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                z2 &= zzgbbVar.zzc().zzi() == 5;
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
