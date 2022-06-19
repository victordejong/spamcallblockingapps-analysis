package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p23.class */
public final class p23 {

    /* renamed from: a */
    private static final Logger f27819a = Logger.getLogger(p23.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, o23> f27820b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, n23> f27821c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, Boolean> f27822d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<String, j13<?>> f27823e = new ConcurrentHashMap();

    /* renamed from: f */
    private static final ConcurrentMap<Class<?>, h23<?, ?>> f27824f = new ConcurrentHashMap();

    /* renamed from: g */
    private static final ConcurrentMap<String, r13> f27825g = new ConcurrentHashMap();

    private p23() {
    }

    @Deprecated
    /* renamed from: a */
    public static j13<?> m12459a(String str) {
        String str2;
        if (str != null) {
            ConcurrentMap<String, j13<?>> concurrentMap = f27823e;
            Locale locale = Locale.US;
            j13<?> j13Var = concurrentMap.get(str.toLowerCase(locale));
            if (j13Var != null) {
                return j13Var;
            }
            String format = String.format("no catalogue found for %s. ", str);
            String str3 = format;
            if (str.toLowerCase(locale).startsWith("tinkaead")) {
                str3 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
                str2 = String.valueOf(str3).concat("Maybe call DeterministicAeadConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
                str2 = String.valueOf(str3).concat("Maybe call StreamingAeadConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
                str2 = String.valueOf(str3).concat("Maybe call HybridConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
                str2 = String.valueOf(str3).concat("Maybe call MacConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
                str2 = String.valueOf(str3).concat("Maybe call SignatureConfig.register().");
            } else {
                str2 = str3;
                if (str.toLowerCase(locale).startsWith("tink")) {
                    str2 = String.valueOf(str3).concat("Maybe call TinkConfig.register().");
                }
            }
            throw new GeneralSecurityException(str2);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    /* renamed from: b */
    public static <P> void m12458b(o13<P> o13Var, boolean z) {
        synchronized (p23.class) {
            try {
                if (o13Var == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                String mo12053e = o13Var.mo12053e();
                m12444p(mo12053e, o13Var.getClass(), Collections.emptyMap(), z);
                f27820b.putIfAbsent(mo12053e, new k23(o13Var));
                f27822d.put(mo12053e, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static <KeyProtoT extends mf3> void m12457c(w13<KeyProtoT> w13Var, boolean z) {
        synchronized (p23.class) {
            try {
                String mo8529b = w13Var.mo8529b();
                m12444p(mo8529b, w13Var.getClass(), w13Var.mo8526h().mo8952e(), true);
                if (!a43.m16694a(w13Var.mo9362j())) {
                    String valueOf = String.valueOf(w13Var.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                    sb.append("failed to register key manager ");
                    sb.append(valueOf);
                    sb.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb.toString());
                }
                ConcurrentMap<String, o23> concurrentMap = f27820b;
                if (!concurrentMap.containsKey(mo8529b)) {
                    concurrentMap.put(mo8529b, new l23(w13Var));
                    f27821c.put(mo8529b, new n23(w13Var));
                    m12443q(mo8529b, w13Var.mo8526h().mo8952e());
                }
                f27822d.put(mo8529b, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static <KeyProtoT extends mf3, PublicKeyProtoT extends mf3> void m12456d(j23<KeyProtoT, PublicKeyProtoT> j23Var, w13<PublicKeyProtoT> w13Var, boolean z) {
        Class<?> mo12756a;
        synchronized (p23.class) {
            try {
                m12444p("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", j23Var.getClass(), j23Var.mo8526h().mo8952e(), true);
                m12444p("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", w13Var.getClass(), Collections.emptyMap(), false);
                if (!a43.m16694a(1)) {
                    String valueOf = String.valueOf(j23Var.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                    sb.append("failed to register key manager ");
                    sb.append(valueOf);
                    sb.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb.toString());
                } else if (!a43.m16694a(1)) {
                    String valueOf2 = String.valueOf(w13Var.getClass());
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 61);
                    sb2.append("failed to register key manager ");
                    sb2.append(valueOf2);
                    sb2.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb2.toString());
                } else {
                    ConcurrentMap<String, o23> concurrentMap = f27820b;
                    if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (mo12756a = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").mo12756a()) != null && !mo12756a.getName().equals(w13Var.getClass().getName())) {
                        f27819a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", j23Var.getClass().getName(), mo12756a.getName(), w13Var.getClass().getName()));
                    }
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").mo12756a() == null) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new m23(j23Var, w13Var));
                        f27821c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new n23(j23Var));
                        m12443q("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", j23Var.mo8526h().mo8952e());
                    }
                    ConcurrentMap<String, Boolean> concurrentMap2 = f27822d;
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new l23(w13Var));
                    }
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public static <B, P> void m12455e(h23<B, P> h23Var) {
        synchronized (p23.class) {
            try {
                if (h23Var == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> mo10420b = h23Var.mo10420b();
                ConcurrentMap<Class<?>, h23<?, ?>> concurrentMap = f27824f;
                if (concurrentMap.containsKey(mo10420b)) {
                    h23<?, ?> h23Var2 = concurrentMap.get(mo10420b);
                    if (!h23Var.getClass().getName().equals(h23Var2.getClass().getName())) {
                        f27819a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", "Attempted overwrite of a registered PrimitiveWrapper for type ".concat(mo10420b.toString()));
                        throw new GeneralSecurityException(String.format("PrimitiveWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", mo10420b.getName(), h23Var2.getClass().getName(), h23Var.getClass().getName()));
                    }
                }
                concurrentMap.put(mo10420b, h23Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static o13<?> m12454f(String str) {
        return m12445o(str).mo12755b();
    }

    /* renamed from: g */
    public static a93 m12453g(d93 d93Var) {
        a93 mo12052g;
        synchronized (p23.class) {
            try {
                o13<?> m12454f = m12454f(d93Var.m15860C());
                if (!f27822d.get(d93Var.m15860C()).booleanValue()) {
                    String valueOf = String.valueOf(d93Var.m15860C());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo12052g = m12454f.mo12052g(d93Var.m15859D());
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo12052g;
    }

    /* renamed from: h */
    public static mf3 m12452h(d93 d93Var) {
        mf3 mo12050i;
        synchronized (p23.class) {
            try {
                o13<?> m12454f = m12454f(d93Var.m15860C());
                if (!f27822d.get(d93Var.m15860C()).booleanValue()) {
                    String valueOf = String.valueOf(d93Var.m15860C());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo12050i = m12454f.mo12050i(d93Var.m15859D());
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo12050i;
    }

    /* renamed from: i */
    public static <P> P m12451i(String str, mf3 mf3Var, Class<P> cls) {
        return (P) m12442r(str, cls).mo12051h(mf3Var);
    }

    /* renamed from: j */
    public static <P> P m12450j(String str, byte[] bArr, Class<P> cls) {
        return (P) m12441s(str, zzgex.zzt(bArr), cls);
    }

    /* renamed from: k */
    public static <P> P m12449k(a93 a93Var, Class<P> cls) {
        return (P) m12441s(a93Var.m16668C(), a93Var.m16667D(), cls);
    }

    /* renamed from: l */
    public static <B, P> P m12448l(g23<B> g23Var, Class<P> cls) {
        h23<?, ?> h23Var = f27824f.get(cls);
        if (h23Var == null) {
            String name = g23Var.m14991e().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        } else if (h23Var.mo10419c().equals(g23Var.m14991e())) {
            return (P) h23Var.mo10421a(g23Var);
        } else {
            String obj = h23Var.mo10419c().toString();
            String obj2 = g23Var.m14991e().toString();
            StringBuilder sb = new StringBuilder(obj.length() + 44 + obj2.length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(obj);
            sb.append(", got ");
            sb.append(obj2);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    /* renamed from: m */
    public static Map<String, r13> m12447m() {
        Map<String, r13> unmodifiableMap;
        synchronized (p23.class) {
            try {
                unmodifiableMap = Collections.unmodifiableMap(f27825g);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableMap;
    }

    /* renamed from: n */
    public static Class<?> m12446n(Class<?> cls) {
        h23<?, ?> h23Var = f27824f.get(cls);
        if (h23Var == null) {
            return null;
        }
        return h23Var.mo10419c();
    }

    /* renamed from: o */
    private static o23 m12445o(String str) {
        o23 o23Var;
        synchronized (p23.class) {
            try {
                ConcurrentMap<String, o23> concurrentMap = f27820b;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                o23Var = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return o23Var;
    }

    /* renamed from: p */
    private static <KeyProtoT extends mf3, KeyFormatProtoT extends mf3> void m12444p(String str, Class cls, Map<String, t13<KeyFormatProtoT>> map, boolean z) {
        Map.Entry<String, t13<KeyFormatProtoT>> next;
        synchronized (p23.class) {
            try {
                ConcurrentMap<String, o23> concurrentMap = f27820b;
                o23 o23Var = concurrentMap.get(str);
                if (o23Var != null && !o23Var.mo12754c().equals(cls)) {
                    f27819a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(str) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, o23Var.mo12754c().getName(), cls.getName()));
                } else if (z) {
                    ConcurrentMap<String, Boolean> concurrentMap2 = f27822d;
                    if (concurrentMap2.containsKey(str) && !concurrentMap2.get(str).booleanValue()) {
                        throw new GeneralSecurityException(str.length() != 0 ? "New keys are already disallowed for key type ".concat(str) : new String("New keys are already disallowed for key type "));
                    } else if (!concurrentMap.containsKey(str)) {
                        Iterator<Map.Entry<String, t13<KeyFormatProtoT>>> it = map.entrySet().iterator();
                        do {
                            if (it.hasNext()) {
                                next = it.next();
                            }
                        } while (!f27825g.containsKey(next.getKey()));
                        String valueOf = String.valueOf(next.getKey());
                        throw new GeneralSecurityException(valueOf.length() != 0 ? "Attempted overwrite of a registered key template ".concat(valueOf) : new String("Attempted overwrite of a registered key template "));
                    } else {
                        for (Map.Entry<String, t13<KeyFormatProtoT>> entry : map.entrySet()) {
                            if (!f27825g.containsKey(entry.getKey())) {
                                String key = entry.getKey();
                                StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 79 + str.length());
                                sb.append("Attempted to register a new key template ");
                                sb.append(key);
                                sb.append(" from an existing key manager of type ");
                                sb.append(str);
                                throw new GeneralSecurityException(sb.toString());
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: q */
    private static <KeyFormatProtoT extends mf3> void m12443q(String str, Map<String, t13<KeyFormatProtoT>> map) {
        for (Map.Entry<String, t13<KeyFormatProtoT>> entry : map.entrySet()) {
            f27825g.put(entry.getKey(), r13.m11733c(str, entry.getValue().f29783a.mo10723K(), entry.getValue().f29784b));
        }
    }

    /* renamed from: r */
    private static <P> o13<P> m12442r(String str, Class<P> cls) {
        o23 m12445o = m12445o(str);
        if (m12445o.mo12752e().contains(cls)) {
            return m12445o.mo12753d(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(m12445o.mo12754c());
        Set<Class<?>> mo12752e = m12445o.mo12752e();
        StringBuilder sb = new StringBuilder();
        Iterator<Class<?>> it = mo12752e.iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                break;
            }
            Class<?> next = it.next();
            if (!z2) {
                sb.append(", ");
            }
            sb.append(next.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(name.length() + 77 + valueOf.length() + sb2.length());
        sb3.append("Primitive type ");
        sb3.append(name);
        sb3.append(" not supported by key manager of type ");
        sb3.append(valueOf);
        sb3.append(", supported primitives: ");
        sb3.append(sb2);
        throw new GeneralSecurityException(sb3.toString());
    }

    /* renamed from: s */
    private static <P> P m12441s(String str, zzgex zzgexVar, Class<P> cls) {
        return (P) m12442r(str, cls).mo12049j(zzgexVar);
    }
}
