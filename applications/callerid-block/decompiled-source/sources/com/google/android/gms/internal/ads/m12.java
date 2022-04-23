package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/m12.class */
public final class m12 {

    /* renamed from: a */
    private static final Logger f7203a = Logger.getLogger(m12.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, l12> f7204b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, k12> f7205c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, Boolean> f7206d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<String, j02<?>> f7207e = new ConcurrentHashMap();

    /* renamed from: f */
    private static final ConcurrentMap<Class<?>, e12<?, ?>> f7208f = new ConcurrentHashMap();

    private m12() {
    }

    @Deprecated
    /* renamed from: a */
    public static j02<?> m6617a(String str) {
        String str2;
        String str3;
        String str4;
        if (str != null) {
            ConcurrentMap<String, j02<?>> concurrentMap = f7207e;
            Locale locale = Locale.US;
            j02<?> j02Var = concurrentMap.get(str.toLowerCase(locale));
            if (j02Var != null) {
                return j02Var;
            }
            String format = String.format("no catalogue found for %s. ", str);
            String str5 = format;
            if (str.toLowerCase(locale).startsWith("tinkaead")) {
                str5 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call DeterministicAeadConfig.register().";
            } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call StreamingAeadConfig.register().";
            } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call HybridConfig.register().";
            } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call MacConfig.register().";
            } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call SignatureConfig.register().";
            } else {
                str2 = str5;
                if (str.toLowerCase(locale).startsWith("tink")) {
                    str3 = String.valueOf(str5);
                    str4 = "Maybe call TinkConfig.register().";
                }
                throw new GeneralSecurityException(str2);
            }
            str2 = str3.concat(str4);
            throw new GeneralSecurityException(str2);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    /* renamed from: b */
    public static <P> void m6616b(o02<P> o02Var, boolean z) {
        synchronized (m12.class) {
            try {
                if (o02Var != null) {
                    String f = o02Var.m6352f();
                    m6603o(f, o02Var.getClass(), z);
                    f7204b.putIfAbsent(f, new h12(o02Var));
                    f7206d.put(f, Boolean.valueOf(z));
                } else {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static <KeyProtoT extends qd2> void m6615c(u02<KeyProtoT> u02Var, boolean z) {
        synchronized (m12.class) {
            try {
                String b = u02Var.m5445b();
                m6603o(b, u02Var.getClass(), true);
                ConcurrentMap<String, l12> concurrentMap = f7204b;
                if (!concurrentMap.containsKey(b)) {
                    concurrentMap.put(b, new i12(u02Var));
                    f7205c.put(b, new k12(u02Var));
                }
                f7206d.put(b, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static <KeyProtoT extends qd2, PublicKeyProtoT extends qd2> void m6614d(g12<KeyProtoT, PublicKeyProtoT> g12Var, u02<PublicKeyProtoT> u02Var, boolean z) {
        Class<?> a;
        synchronized (m12.class) {
            try {
                m6603o("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", g12Var.getClass(), true);
                m6603o("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", u02Var.getClass(), false);
                ConcurrentMap<String, l12> concurrentMap = f7204b;
                if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (a = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").m6732a()) != null && !a.equals(u02Var.getClass())) {
                    f7203a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                    throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", g12Var.getClass().getName(), a.getName(), u02Var.getClass().getName()));
                }
                if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").m6732a() == null) {
                    concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new j12(g12Var, u02Var));
                    f7205c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new k12(g12Var));
                }
                ConcurrentMap<String, Boolean> concurrentMap2 = f7206d;
                concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                    concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new i12(u02Var));
                }
                concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public static <B, P> void m6613e(e12<B, P> e12Var) {
        synchronized (m12.class) {
            try {
                if (e12Var != null) {
                    Class<P> b = e12Var.m7677b();
                    ConcurrentMap<Class<?>, e12<?, ?>> concurrentMap = f7208f;
                    if (concurrentMap.containsKey(b)) {
                        e12<?, ?> e12Var2 = concurrentMap.get(b);
                        if (!e12Var.getClass().equals(e12Var2.getClass())) {
                            Logger logger = f7203a;
                            Level level = Level.WARNING;
                            String valueOf = String.valueOf(b);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56);
                            sb.append("Attempted overwrite of a registered SetWrapper for type ");
                            sb.append(valueOf);
                            logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                            throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", b.getName(), e12Var2.getClass().getName(), e12Var.getClass().getName()));
                        }
                    }
                    concurrentMap.put(b, e12Var);
                } else {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static o02<?> m6612f(String str) {
        return m6604n(str).m6731b();
    }

    /* renamed from: g */
    public static p72 m6611g(t72 t72Var) {
        p72 g;
        synchronized (m12.class) {
            try {
                o02<?> f = m6612f(t72Var.E());
                if (f7206d.get(t72Var.E()).booleanValue()) {
                    g = f.m6351g(t72Var.F());
                } else {
                    String valueOf = String.valueOf(t72Var.E());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return g;
    }

    /* renamed from: h */
    public static qd2 m6610h(t72 t72Var) {
        qd2 j;
        synchronized (m12.class) {
            try {
                o02<?> f = m6612f(t72Var.E());
                if (f7206d.get(t72Var.E()).booleanValue()) {
                    j = f.m6348j(t72Var.F());
                } else {
                    String valueOf = String.valueOf(t72Var.E());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    /* renamed from: i */
    public static <P> P m6609i(String str, qd2 qd2Var, Class<P> cls) {
        return (P) m6602p(str, cls).m6350h(qd2Var);
    }

    /* renamed from: j */
    public static <P> P m6608j(String str, byte[] bArr, Class<P> cls) {
        return (P) m6601q(str, zzesf.zzs(bArr), cls);
    }

    /* renamed from: k */
    public static <P> P m6607k(p72 p72Var, Class<P> cls) {
        return (P) m6601q(p72Var.E(), p72Var.F(), cls);
    }

    /* renamed from: l */
    public static <B, P> P m6606l(d12<B> d12Var, Class<P> cls) {
        e12<?, ?> e12Var = f7208f.get(cls);
        if (e12Var == null) {
            String valueOf = String.valueOf(d12Var.m7761e().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        } else if (e12Var.m7676c().equals(d12Var.m7761e())) {
            return (P) e12Var.m7678a(d12Var);
        } else {
            String valueOf2 = String.valueOf(e12Var.m7676c());
            String valueOf3 = String.valueOf(d12Var.m7761e());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf2);
            sb.append(", got ");
            sb.append(valueOf3);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    /* renamed from: m */
    public static Class<?> m6605m(Class<?> cls) {
        e12<?, ?> e12Var = f7208f.get(cls);
        if (e12Var == null) {
            return null;
        }
        return e12Var.m7676c();
    }

    /* renamed from: n */
    private static l12 m6604n(String str) {
        l12 l12Var;
        synchronized (m12.class) {
            try {
                ConcurrentMap<String, l12> concurrentMap = f7204b;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                l12Var = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return l12Var;
    }

    /* renamed from: o */
    private static void m6603o(String str, Class<?> cls, boolean z) {
        synchronized (m12.class) {
            try {
                ConcurrentMap<String, l12> concurrentMap = f7204b;
                if (concurrentMap.containsKey(str)) {
                    l12 l12Var = concurrentMap.get(str);
                    if (!l12Var.m6730c().equals(cls)) {
                        f7203a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(str) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, l12Var.m6730c().getName(), cls.getName()));
                    } else if (z && !f7206d.get(str).booleanValue()) {
                        throw new GeneralSecurityException(str.length() != 0 ? "New keys are already disallowed for key type ".concat(str) : new String("New keys are already disallowed for key type "));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: p */
    private static <P> o02<P> m6602p(String str, Class<P> cls) {
        l12 n = m6604n(str);
        if (n.m6728f().contains(cls)) {
            return n.m6729d(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(n.m6730c());
        Set<Class<?>> f = n.m6728f();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : f) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(valueOf).length() + String.valueOf(sb2).length());
        sb3.append("Primitive type ");
        sb3.append(name);
        sb3.append(" not supported by key manager of type ");
        sb3.append(valueOf);
        sb3.append(", supported primitives: ");
        sb3.append(sb2);
        throw new GeneralSecurityException(sb3.toString());
    }

    /* renamed from: q */
    private static <P> P m6601q(String str, zzesf zzesfVar, Class<P> cls) {
        return (P) m6602p(str, cls).m6349i(zzesfVar);
    }
}
