package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.fa2;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/z92.class */
public final class z92<T_WRAPPER extends fa2<T_ENGINE>, T_ENGINE> {

    /* renamed from: c */
    private static final Logger f9319c = Logger.getLogger(z92.class.getName());

    /* renamed from: d */
    private static final List<Provider> f9320d;

    /* renamed from: e */
    public static final z92<aa2, Cipher> f9321e;

    /* renamed from: f */
    public static final z92<ea2, Mac> f9322f;

    /* renamed from: g */
    public static final z92<ba2, KeyAgreement> f9323g;

    /* renamed from: h */
    public static final z92<da2, KeyPairGenerator> f9324h;

    /* renamed from: i */
    public static final z92<ca2, KeyFactory> f9325i;

    /* renamed from: a */
    private final T_WRAPPER f9326a;

    /* renamed from: b */
    private final List<Provider> f9327b = f9320d;

    static {
        if (qa2.m6114a()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f9319c.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f9320d = arrayList;
        } else {
            f9320d = new ArrayList();
        }
        f9321e = new z92<>(new aa2());
        f9322f = new z92<>(new ea2());
        f9323g = new z92<>(new ba2());
        f9324h = new z92<>(new da2());
        f9325i = new z92<>(new ca2());
    }

    public z92(T_WRAPPER t_wrapper) {
        this.f9326a = t_wrapper;
    }

    /* renamed from: a */
    public final T_ENGINE m4654a(String str) {
        for (Provider provider : this.f9327b) {
            try {
                return (T_ENGINE) this.f9326a.m7557a(str, provider);
            } catch (Exception e) {
            }
        }
        return (T_ENGINE) this.f9326a.m7557a(str, null);
    }
}
