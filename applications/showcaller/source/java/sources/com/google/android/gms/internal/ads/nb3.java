package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.vb3;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nb3.class */
public final class nb3<T_WRAPPER extends vb3<T_ENGINE>, T_ENGINE> {

    /* renamed from: a */
    private static final Logger f27062a = Logger.getLogger(nb3.class.getName());

    /* renamed from: b */
    private static final List<Provider> f27063b;

    /* renamed from: c */
    private static final boolean f27064c;

    /* renamed from: d */
    public static final nb3<ob3, Cipher> f27065d;

    /* renamed from: e */
    public static final nb3<sb3, Mac> f27066e;

    /* renamed from: f */
    public static final nb3<ub3, Signature> f27067f;

    /* renamed from: g */
    public static final nb3<tb3, MessageDigest> f27068g;

    /* renamed from: h */
    public static final nb3<pb3, KeyAgreement> f27069h;

    /* renamed from: i */
    public static final nb3<rb3, KeyPairGenerator> f27070i;

    /* renamed from: j */
    public static final nb3<qb3, KeyFactory> f27071j;

    /* renamed from: k */
    private final T_WRAPPER f27072k;

    static {
        if (b43.m16450a()) {
            f27063b = m12954a("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt");
            f27064c = false;
        } else if (fc3.m15282a()) {
            f27063b = m12954a("GmsCore_OpenSSL", "AndroidOpenSSL");
            f27064c = true;
        } else {
            f27063b = new ArrayList();
            f27064c = true;
        }
        f27065d = new nb3<>(new ob3());
        f27066e = new nb3<>(new sb3());
        f27067f = new nb3<>(new ub3());
        f27068g = new nb3<>(new tb3());
        f27069h = new nb3<>(new pb3());
        f27070i = new nb3<>(new rb3());
        f27071j = new nb3<>(new qb3());
    }

    public nb3(T_WRAPPER t_wrapper) {
        this.f27072k = t_wrapper;
    }

    /* renamed from: a */
    public static List<Provider> m12954a(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            } else {
                f27062a.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final T_ENGINE m12953b(String str) {
        Exception exc = null;
        for (Provider provider : f27063b) {
            try {
                return (T_ENGINE) this.f27072k.mo10046a(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (f27064c) {
            return (T_ENGINE) this.f27072k.mo10046a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
