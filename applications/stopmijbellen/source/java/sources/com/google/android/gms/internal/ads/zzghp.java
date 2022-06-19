package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzghx;
import com.google.android.gms.security.ProviderInstaller;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghp.class */
public final class zzghp<T_WRAPPER extends zzghx<T_ENGINE>, T_ENGINE> {
    public static final zzghp<zzghq, Cipher> zza;
    public static final zzghp<zzghu, Mac> zzb;
    public static final zzghp<zzghw, Signature> zzc;
    public static final zzghp<zzghv, MessageDigest> zzd;
    public static final zzghp<zzghr, KeyAgreement> zze;
    public static final zzghp<zzght, KeyPairGenerator> zzf;
    public static final zzghp<zzghs, KeyFactory> zzg;
    private static final Logger zzh = Logger.getLogger(zzghp.class.getName());
    private static final List<Provider> zzi;
    private static final boolean zzj;
    private final T_WRAPPER zzk;

    static {
        if (zzgal.zzb()) {
            zzi = zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL", "Conscrypt");
            zzj = false;
        } else if (zzgih.zzb()) {
            zzi = zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL");
            zzj = true;
        } else {
            zzi = new ArrayList();
            zzj = true;
        }
        zza = new zzghp<>(new zzghq());
        zzb = new zzghp<>(new zzghu());
        zzc = new zzghp<>(new zzghw());
        zzd = new zzghp<>(new zzghv());
        zze = new zzghp<>(new zzghr());
        zzf = new zzghp<>(new zzght());
        zzg = new zzghp<>(new zzghs());
    }

    public zzghp(T_WRAPPER t_wrapper) {
        this.zzk = t_wrapper;
    }

    public static List<Provider> zzb(String... strArr) {
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

    public final T_ENGINE zza(String str) throws GeneralSecurityException {
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
