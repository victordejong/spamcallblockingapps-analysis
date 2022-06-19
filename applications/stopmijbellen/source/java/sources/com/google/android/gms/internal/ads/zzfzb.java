package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzb.class */
public final class zzfzb {
    public static final Charset zza = Charset.forName("UTF-8");

    public static zzgfv zza(zzgfq zzgfqVar) {
        zzgfs zza2 = zzgfv.zza();
        zza2.zzb(zzgfqVar.zzc());
        for (zzgfp zzgfpVar : zzgfqVar.zzf()) {
            zzgft zza3 = zzgfu.zza();
            zza3.zzb(zzgfpVar.zzc().zzf());
            zza3.zzd(zzgfpVar.zzf());
            zza3.zzc(zzgfpVar.zzg());
            zza3.zza(zzgfpVar.zza());
            zza2.zza(zza3.zzah());
        }
        return zza2.zzah();
    }

    public static void zzb(zzgfq zzgfqVar) throws GeneralSecurityException {
        int zzc = zzgfqVar.zzc();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzgfp zzgfpVar : zzgfqVar.zzf()) {
            if (zzgfpVar.zzf() == 3) {
                if (!zzgfpVar.zze()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgfpVar.zza())));
                }
                if (zzgfpVar.zzg() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgfpVar.zza())));
                }
                if (zzgfpVar.zzf() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgfpVar.zza())));
                }
                boolean z3 = z;
                if (zzgfpVar.zza() == zzc) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                z2 &= zzgfpVar.zzc().zzi() == 5;
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
