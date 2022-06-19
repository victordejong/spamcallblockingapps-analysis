package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgdj;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdb.class */
public final class zzgdb<T_WRAPPER extends zzgdj<T_ENGINE>, T_ENGINE> {
    public static final zzgdb<zzgdc, Cipher> zza;
    public static final zzgdb<zzgdg, Mac> zzb;
    public static final zzgdb<zzgdi, Signature> zzc;
    public static final zzgdb<zzgdh, MessageDigest> zzd;
    public static final zzgdb<zzgdd, KeyAgreement> zze;
    public static final zzgdb<zzgdf, KeyPairGenerator> zzf;
    public static final zzgdb<zzgde, KeyFactory> zzg;
    private static final Logger zzh = Logger.getLogger(zzgdb.class.getName());
    private static final List<Provider> zzi;
    private static final boolean zzj;
    private final T_WRAPPER zzk;

    static {
        if (zzfvx.zza()) {
            zzi = zza("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt");
            zzj = false;
        } else if (zzgdt.zza()) {
            zzi = zza("GmsCore_OpenSSL", "AndroidOpenSSL");
            zzj = true;
        } else {
            zzi = new ArrayList();
            zzj = true;
        }
        zza = new zzgdb<>(new zzgdc());
        zzb = new zzgdb<>(new zzgdg());
        zzc = new zzgdb<>(new zzgdi());
        zzd = new zzgdb<>(new zzgdh());
        zze = new zzgdb<>(new zzgdd());
        zzf = new zzgdb<>(new zzgdf());
        zzg = new zzgdb<>(new zzgde());
    }

    public zzgdb(T_WRAPPER t_wrapper) {
        this.zzk = t_wrapper;
    }

    public static List<Provider> zza(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            } else {
                zzh.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
            }
        }
        return arrayList;
    }

    public final T_ENGINE zzb(String str) throws GeneralSecurityException {
        Exception exc = null;
        for (Provider provider : zzi) {
            try {
                return (T_ENGINE) this.zzk.zza(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (zzj) {
            return (T_ENGINE) this.zzk.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
