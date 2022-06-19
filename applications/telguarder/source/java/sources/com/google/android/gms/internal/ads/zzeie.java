package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeid;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeie.class */
public final class zzeie<T_WRAPPER extends zzeid<T_ENGINE>, T_ENGINE> {
    private static final Logger logger = Logger.getLogger(zzeie.class.getName());
    private static final List<Provider> zzikf;
    public static final zzeie<zzeig, Cipher> zzikg;
    public static final zzeie<zzeik, Mac> zzikh;
    private static final zzeie<zzeim, Signature> zziki;
    private static final zzeie<zzeij, MessageDigest> zzikj;
    public static final zzeie<zzeif, KeyAgreement> zzikk;
    public static final zzeie<zzeih, KeyPairGenerator> zzikl;
    public static final zzeie<zzeii, KeyFactory> zzikm;
    private T_WRAPPER zzikn;
    private List<Provider> zziko = zzikf;
    private boolean zzikp = true;

    static {
        if (zzeiw.zzbfw()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    logger.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            zzikf = arrayList;
        } else {
            zzikf = new ArrayList();
        }
        zzikg = new zzeie<>(new zzeig());
        zzikh = new zzeie<>(new zzeik());
        zziki = new zzeie<>(new zzeim());
        zzikj = new zzeie<>(new zzeij());
        zzikk = new zzeie<>(new zzeif());
        zzikl = new zzeie<>(new zzeih());
        zzikm = new zzeie<>(new zzeii());
    }

    private zzeie(T_WRAPPER t_wrapper) {
        this.zzikn = t_wrapper;
    }

    public final T_ENGINE zzhw(String str) throws GeneralSecurityException {
        Exception exc = null;
        for (Provider provider : this.zziko) {
            try {
                return (T_ENGINE) this.zzikn.zza(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (this.zzikp) {
            return (T_ENGINE) this.zzikn.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
