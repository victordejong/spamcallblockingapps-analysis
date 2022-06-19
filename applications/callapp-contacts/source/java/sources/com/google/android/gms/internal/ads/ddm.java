package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddm.class */
public final class ddm {

    /* renamed from: a */
    private static final Logger f46982a = Logger.getLogger(ddm.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, AbstractC12323b> f46983b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, AbstractC12322a> f46984c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, Boolean> f46985d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<String, dcm<?>> f46986e = new ConcurrentHashMap();

    /* renamed from: f */
    private static final ConcurrentMap<Class<?>, ddh<?, ?>> f46987f = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.ddm$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddm$a.class */
    public interface AbstractC12322a {
    }

    /* renamed from: com.google.android.gms.internal.ads.ddm$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddm$b.class */
    public interface AbstractC12323b {
        /* renamed from: a */
        dct<?> mo16830a();

        /* renamed from: a */
        <P> dct<P> mo16829a(Class<P> cls) throws GeneralSecurityException;

        /* renamed from: b */
        Class<?> mo16828b();

        /* renamed from: c */
        Set<Class<?>> mo16827c();

        /* renamed from: d */
        Class<?> mo16826d();
    }

    private ddm() {
    }

    @Deprecated
    /* renamed from: a */
    public static dcm<?> m16841a(String str) throws GeneralSecurityException {
        String str2;
        if (str != null) {
            dcm<?> dcmVar = f46986e.get(str.toLowerCase(Locale.US));
            if (dcmVar != null) {
                return dcmVar;
            }
            String format = String.format("no catalogue found for %s. ", str);
            String str3 = format;
            if (str.toLowerCase(Locale.US).startsWith("tinkaead")) {
                str3 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase(Locale.US).startsWith("tinkdeterministicaead")) {
                str2 = String.valueOf(str3).concat("Maybe call DeterministicAeadConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkstreamingaead")) {
                str2 = String.valueOf(str3).concat("Maybe call StreamingAeadConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkhybriddecrypt") || str.toLowerCase(Locale.US).startsWith("tinkhybridencrypt")) {
                str2 = String.valueOf(str3).concat("Maybe call HybridConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkmac")) {
                str2 = String.valueOf(str3).concat("Maybe call MacConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkpublickeysign") || str.toLowerCase(Locale.US).startsWith("tinkpublickeyverify")) {
                str2 = String.valueOf(str3).concat("Maybe call SignatureConfig.register().");
            } else {
                str2 = str3;
                if (str.toLowerCase(Locale.US).startsWith("tink")) {
                    str2 = String.valueOf(str3).concat("Maybe call TinkConfig.register().");
                }
            }
            throw new GeneralSecurityException(str2);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    /* renamed from: a */
    private static <P> dct<P> m16838a(String str, Class<P> cls) throws GeneralSecurityException {
        AbstractC12323b m16833b = m16833b(str);
        if (cls == null) {
            return (dct<P>) m16833b.mo16830a();
        }
        if (m16833b.mo16827c().contains(cls)) {
            return m16833b.mo16829a(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(m16833b.mo16828b());
        Set<Class<?>> mo16827c = m16833b.mo16827c();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : mo16827c) {
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

    /* renamed from: a */
    public static dih m16844a(dik dikVar) throws GeneralSecurityException {
        dih mo16859c;
        synchronized (ddm.class) {
            try {
                dct<?> m16831c = m16831c(dikVar.zzijv);
                if (!f46985d.get(dikVar.zzijv).booleanValue()) {
                    String valueOf = String.valueOf(dikVar.zzijv);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo16859c = m16831c.mo16859c(dikVar.zzijw);
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo16859c;
    }

    /* renamed from: a */
    public static Class<?> m16843a(Class<?> cls) {
        ddh<?, ?> ddhVar = f46987f.get(cls);
        if (ddhVar == null) {
            return null;
        }
        return ddhVar.mo16792b();
    }

    /* renamed from: a */
    public static <B, P> P m16848a(ddd<B> dddVar, Class<P> cls) throws GeneralSecurityException {
        ddh<?, ?> ddhVar = f46987f.get(cls);
        if (ddhVar == null) {
            String valueOf = String.valueOf(dddVar.f46971c.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        } else if (ddhVar.mo16792b().equals(dddVar.f46971c)) {
            return (P) ddhVar.mo16793a(dddVar);
        } else {
            String valueOf2 = String.valueOf(ddhVar.mo16792b());
            String valueOf3 = String.valueOf(dddVar.f46971c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf2);
            sb.append(", got ");
            sb.append(valueOf3);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    /* renamed from: a */
    public static <P> P m16845a(dih dihVar, Class<P> cls) throws GeneralSecurityException {
        return (P) m16840a(dihVar.zzijv, dihVar.zzijw, cls);
    }

    /* renamed from: a */
    private static <T> T m16842a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    private static <P> P m16840a(String str, dlw dlwVar, Class<P> cls) throws GeneralSecurityException {
        return (P) m16838a(str, (Class) m16842a(cls)).mo16863a(dlwVar);
    }

    /* renamed from: a */
    public static <P> P m16839a(String str, dot dotVar, Class<P> cls) throws GeneralSecurityException {
        return (P) m16838a(str, (Class) m16842a(cls)).mo16862a(dotVar);
    }

    /* renamed from: a */
    public static <P> P m16836a(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) m16840a(str, dlw.m16475a(bArr), cls);
    }

    /* renamed from: a */
    public static <P> void m16850a(dct<P> dctVar, boolean z) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                if (dctVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                String mo16864a = dctVar.mo16864a();
                m16837a(mo16864a, dctVar.getClass(), z);
                f46983b.putIfAbsent(mo16864a, new ddl(dctVar));
                f46985d.put(mo16864a, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends dot> void m16849a(dcu<KeyProtoT> dcuVar) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                String mo16806a = dcuVar.mo16806a();
                m16837a(mo16806a, dcuVar.getClass(), true);
                ConcurrentMap<String, AbstractC12323b> concurrentMap = f46983b;
                if (!concurrentMap.containsKey(mo16806a)) {
                    concurrentMap.put(mo16806a, m16835b(dcuVar));
                    f46984c.put(mo16806a, m16832c(dcuVar));
                }
                f46985d.put(mo16806a, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <B, P> void m16847a(ddh<B, P> ddhVar) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                if (ddhVar == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> mo16794a = ddhVar.mo16794a();
                ConcurrentMap<Class<?>, ddh<?, ?>> concurrentMap = f46987f;
                if (concurrentMap.containsKey(mo16794a)) {
                    ddh<?, ?> ddhVar2 = concurrentMap.get(mo16794a);
                    if (!ddhVar.getClass().equals(ddhVar2.getClass())) {
                        Logger logger = f46982a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(mo16794a);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56);
                        sb.append("Attempted overwrite of a registered SetWrapper for type ");
                        sb.append(valueOf);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", mo16794a.getName(), ddhVar2.getClass().getName(), ddhVar.getClass().getName()));
                    }
                }
                concurrentMap.put(mo16794a, ddhVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends dot, PublicKeyProtoT extends dot> void m16846a(ddj<KeyProtoT, PublicKeyProtoT> ddjVar, dcu<PublicKeyProtoT> dcuVar) throws GeneralSecurityException {
        Class<?> mo16826d;
        synchronized (ddm.class) {
            try {
                String mo16806a = ddjVar.mo16806a();
                String mo16806a2 = dcuVar.mo16806a();
                m16837a(mo16806a, ddjVar.getClass(), true);
                m16837a(mo16806a2, dcuVar.getClass(), false);
                if (mo16806a.equals(mo16806a2)) {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
                ConcurrentMap<String, AbstractC12323b> concurrentMap = f46983b;
                if (concurrentMap.containsKey(mo16806a) && (mo16826d = concurrentMap.get(mo16806a).mo16826d()) != null && !mo16826d.equals(dcuVar.getClass())) {
                    Logger logger = f46982a;
                    Level level = Level.WARNING;
                    StringBuilder sb = new StringBuilder(String.valueOf(mo16806a).length() + 96 + String.valueOf(mo16806a2).length());
                    sb.append("Attempted overwrite of a registered key manager for key type ");
                    sb.append(mo16806a);
                    sb.append(" with inconsistent public key type ");
                    sb.append(mo16806a2);
                    logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                    throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", ddjVar.getClass().getName(), mo16826d.getName(), dcuVar.getClass().getName()));
                }
                if (!concurrentMap.containsKey(mo16806a) || concurrentMap.get(mo16806a).mo16826d() == null) {
                    concurrentMap.put(mo16806a, new ddn(ddjVar, dcuVar));
                    f46984c.put(mo16806a, m16832c(ddjVar));
                }
                ConcurrentMap<String, Boolean> concurrentMap2 = f46985d;
                concurrentMap2.put(mo16806a, Boolean.TRUE);
                if (!concurrentMap.containsKey(mo16806a2)) {
                    concurrentMap.put(mo16806a2, m16835b(dcuVar));
                }
                concurrentMap2.put(mo16806a2, Boolean.FALSE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m16837a(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                ConcurrentMap<String, AbstractC12323b> concurrentMap = f46983b;
                if (!concurrentMap.containsKey(str)) {
                    return;
                }
                AbstractC12323b abstractC12323b = concurrentMap.get(str);
                if (!abstractC12323b.mo16828b().equals(cls)) {
                    Logger logger = f46982a;
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(str);
                    logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, abstractC12323b.mo16828b().getName(), cls.getName()));
                } else if (!z || f46985d.get(str).booleanValue()) {
                } else {
                    String valueOf2 = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static <KeyProtoT extends dot> AbstractC12323b m16835b(dcu<KeyProtoT> dcuVar) {
        return new ddo(dcuVar);
    }

    /* renamed from: b */
    private static AbstractC12323b m16833b(String str) throws GeneralSecurityException {
        AbstractC12323b abstractC12323b;
        synchronized (ddm.class) {
            try {
                ConcurrentMap<String, AbstractC12323b> concurrentMap = f46983b;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                abstractC12323b = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC12323b;
    }

    /* renamed from: b */
    public static dot m16834b(dik dikVar) throws GeneralSecurityException {
        dot mo16860b;
        synchronized (ddm.class) {
            try {
                dct<?> m16831c = m16831c(dikVar.zzijv);
                if (!f46985d.get(dikVar.zzijv).booleanValue()) {
                    String valueOf = String.valueOf(dikVar.zzijv);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo16860b = m16831c.mo16860b(dikVar.zzijw);
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo16860b;
    }

    /* renamed from: c */
    private static dct<?> m16831c(String str) throws GeneralSecurityException {
        return m16833b(str).mo16830a();
    }

    /* renamed from: c */
    private static <KeyProtoT extends dot> AbstractC12322a m16832c(dcu<KeyProtoT> dcuVar) {
        return new ddp(dcuVar);
    }
}
