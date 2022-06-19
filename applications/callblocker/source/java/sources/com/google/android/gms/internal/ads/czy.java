package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.czx;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czy.class */
public final class czy<T_WRAPPER extends czx<T_ENGINE>, T_ENGINE> {

    /* renamed from: a */
    public static final czy<daa, Cipher> f13884a;

    /* renamed from: b */
    public static final czy<dae, Mac> f13885b;

    /* renamed from: c */
    public static final czy<czz, KeyAgreement> f13886c;

    /* renamed from: d */
    public static final czy<dab, KeyPairGenerator> f13887d;

    /* renamed from: e */
    public static final czy<dac, KeyFactory> f13888e;

    /* renamed from: f */
    private static final Logger f13889f = Logger.getLogger(czy.class.getName());

    /* renamed from: g */
    private static final List<Provider> f13890g;

    /* renamed from: h */
    private static final czy<dag, Signature> f13891h;

    /* renamed from: i */
    private static final czy<dad, MessageDigest> f13892i;

    /* renamed from: j */
    private T_WRAPPER f13893j;

    /* renamed from: k */
    private List<Provider> f13894k = f13890g;

    /* renamed from: l */
    private boolean f13895l = true;

    static {
        if (dal.m10266a()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f13889f.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f13890g = arrayList;
        } else {
            f13890g = new ArrayList();
        }
        f13884a = new czy<>(new daa());
        f13885b = new czy<>(new dae());
        f13891h = new czy<>(new dag());
        f13892i = new czy<>(new dad());
        f13886c = new czy<>(new czz());
        f13887d = new czy<>(new dab());
        f13888e = new czy<>(new dac());
    }

    private czy(T_WRAPPER t_wrapper) {
        this.f13893j = t_wrapper;
    }

    /* renamed from: a */
    public final T_ENGINE m10281a(String str) {
        Object mo10276a;
        Iterator<Provider> it = this.f13894k.iterator();
        Exception exc = null;
        while (true) {
            if (it.hasNext()) {
                try {
                    mo10276a = this.f13893j.mo10276a(str, it.next());
                    break;
                } catch (Exception e) {
                    if (exc == null) {
                        exc = e;
                    }
                }
            } else if (!this.f13895l) {
                throw new GeneralSecurityException("No good Provider found.", exc);
            } else {
                mo10276a = this.f13893j.mo10276a(str, null);
            }
        }
        return (T_ENGINE) mo10276a;
    }
}
