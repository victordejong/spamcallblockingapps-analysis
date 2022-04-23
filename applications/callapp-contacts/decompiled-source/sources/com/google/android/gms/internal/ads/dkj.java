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

    /* renamed from: a  reason: collision with root package name */
    public static final dkj<dkl, Cipher> f26896a;

    /* renamed from: b  reason: collision with root package name */
    public static final dkj<dkp, Mac> f26897b;

    /* renamed from: c  reason: collision with root package name */
    public static final dkj<dkk, KeyAgreement> f26898c;

    /* renamed from: d  reason: collision with root package name */
    public static final dkj<dkm, KeyPairGenerator> f26899d;
    public static final dkj<dkn, KeyFactory> e;
    private static final Logger f = Logger.getLogger(dkj.class.getName());
    private static final List<Provider> g;
    private static final dkj<dkr, Signature> h;
    private static final dkj<dko, MessageDigest> i;
    private T_WRAPPER j;
    private List<Provider> k = g;
    private boolean l = true;

    static {
        if (dlb.a()) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i2];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            g = arrayList;
        } else {
            g = new ArrayList();
        }
        f26896a = new dkj<>(new dkl());
        f26897b = new dkj<>(new dkp());
        h = new dkj<>(new dkr());
        i = new dkj<>(new dko());
        f26898c = new dkj<>(new dkk());
        f26899d = new dkj<>(new dkm());
        e = new dkj<>(new dkn());
    }

    private dkj(T_WRAPPER t_wrapper) {
        this.j = t_wrapper;
    }

    public final T_ENGINE a(String str) throws GeneralSecurityException {
        Exception e2 = null;
        for (Provider provider : this.k) {
            try {
                return (T_ENGINE) this.j.a(str, provider);
            } catch (Exception e3) {
                e2 = e3;
                if (e2 == null) {
                }
            }
        }
        if (this.l) {
            return (T_ENGINE) this.j.a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", e2);
    }
}
