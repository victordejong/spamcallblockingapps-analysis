package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzehe;
import java.security.GeneralSecurityException;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehb.class */
public final class zzehb<T_WRAPPER extends zzehe<T_ENGINE>, T_ENGINE> {

    /* renamed from: d */
    public static final Logger f28021d = Logger.getLogger(zzehb.class.getName());

    /* renamed from: e */
    public static final List<Provider> f28022e;

    /* renamed from: f */
    public static final zzehb<zzehd, Cipher> f28023f;

    /* renamed from: g */
    public static final zzehb<zzehh, Mac> f28024g;

    /* renamed from: h */
    public static final zzehb<zzehg, KeyAgreement> f28025h;

    /* renamed from: i */
    public static final zzehb<zzehi, KeyPairGenerator> f28026i;

    /* renamed from: j */
    public static final zzehb<zzehf, KeyFactory> f28027j;

    /* renamed from: a */
    public T_WRAPPER f28028a;

    /* renamed from: b */
    public List<Provider> f28029b = f28022e;

    /* renamed from: c */
    public boolean f28030c = true;

    static {
        if (zzehu.m12546a()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f28021d.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f28022e = arrayList;
        } else {
            f28022e = new ArrayList();
        }
        f28023f = new zzehb<>(new zzehd());
        f28024g = new zzehb<>(new zzehh());
        new zzehb(new zzehj());
        new zzehb(new zzehk());
        f28025h = new zzehb<>(new zzehg());
        f28026i = new zzehb<>(new zzehi());
        f28027j = new zzehb<>(new zzehf());
    }

    public zzehb(T_WRAPPER t_wrapper) {
        this.f28028a = t_wrapper;
    }

    /* renamed from: a */
    public final T_ENGINE m12561a(String str) throws GeneralSecurityException {
        Exception e = null;
        for (Provider provider : this.f28029b) {
            try {
                return (T_ENGINE) this.f28028a.mo12559a(str, provider);
            } catch (Exception e2) {
                e = e2;
                if (e == null) {
                }
            }
        }
        if (this.f28030c) {
            return (T_ENGINE) this.f28028a.mo12559a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", e);
    }
}
