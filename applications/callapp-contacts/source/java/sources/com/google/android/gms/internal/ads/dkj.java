package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dki;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkj.class */
public final class dkj<T_WRAPPER extends dki<T_ENGINE>, T_ENGINE> {

    /* renamed from: a */
    public static final dkj<dkl, Cipher> f47146a;

    /* renamed from: b */
    public static final dkj<dkp, Mac> f47147b;

    /* renamed from: c */
    public static final dkj<dkk, KeyAgreement> f47148c;

    /* renamed from: d */
    public static final dkj<dkm, KeyPairGenerator> f47149d;

    /* renamed from: e */
    public static final dkj<dkn, KeyFactory> f47150e;

    /* renamed from: f */
    private static final Logger f47151f = Logger.getLogger(dkj.class.getName());

    /* renamed from: g */
    private static final List<Provider> f47152g;

    /* renamed from: h */
    private static final dkj<dkr, Signature> f47153h;

    /* renamed from: i */
    private static final dkj<dko, MessageDigest> f47154i;

    /* renamed from: j */
    private T_WRAPPER f47155j;

    /* renamed from: k */
    private List<Provider> f47156k = f47152g;

    /* renamed from: l */
    private boolean f47157l = true;

    static {
        if (dlb.m16519a()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f47151f.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f47152g = arrayList;
        } else {
            f47152g = new ArrayList();
        }
        f47146a = new dkj<>(new dkl());
        f47147b = new dkj<>(new dkp());
        f47153h = new dkj<>(new dkr());
        f47154i = new dkj<>(new dko());
        f47148c = new dkj<>(new dkk());
        f47149d = new dkj<>(new dkm());
        f47150e = new dkj<>(new dkn());
    }

    private dkj(T_WRAPPER t_wrapper) {
        this.f47155j = t_wrapper;
    }

    /* renamed from: a */
    public final T_ENGINE m16538a(String str) throws GeneralSecurityException {
        Exception exc = null;
        for (Provider provider : this.f47156k) {
            try {
                return (T_ENGINE) this.f47155j.mo16535a(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (this.f47157l) {
            return (T_ENGINE) this.f47155j.mo16535a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
