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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26753a = Logger.getLogger(ddm.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentMap<String, b> f26754b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final ConcurrentMap<String, a> f26755c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentMap<String, Boolean> f26756d = new ConcurrentHashMap();
    private static final ConcurrentMap<String, dcm<?>> e = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, ddh<?, ?>> f = new ConcurrentHashMap();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddm$a.class */
    interface a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddm$b.class */
    public interface b {
        dct<?> a();

        <P> dct<P> a(Class<P> cls) throws GeneralSecurityException;

        Class<?> b();

        Set<Class<?>> c();

        Class<?> d();
    }

    private ddm() {
    }

    @Deprecated
    public static dcm<?> a(String str) throws GeneralSecurityException {
        String str2;
        if (str != null) {
            dcm<?> dcmVar = e.get(str.toLowerCase(Locale.US));
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

    private static <P> dct<P> a(String str, Class<P> cls) throws GeneralSecurityException {
        b b2 = b(str);
        if (cls == null) {
            return (dct<P>) b2.a();
        }
        if (b2.c().contains(cls)) {
            return b2.a(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(b2.b());
        Set<Class<?>> c2 = b2.c();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : c2) {
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

    public static dih a(dik dikVar) throws GeneralSecurityException {
        dih c2;
        synchronized (ddm.class) {
            try {
                dct<?> c3 = c(dikVar.zzijv);
                if (f26756d.get(dikVar.zzijv).booleanValue()) {
                    c2 = c3.c(dikVar.zzijw);
                } else {
                    String valueOf = String.valueOf(dikVar.zzijv);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2;
    }

    public static Class<?> a(Class<?> cls) {
        ddh<?, ?> ddhVar = f.get(cls);
        if (ddhVar == null) {
            return null;
        }
        return ddhVar.b();
    }

    public static <B, P> P a(ddd<B> dddVar, Class<P> cls) throws GeneralSecurityException {
        ddh<?, ?> ddhVar = f.get(cls);
        if (ddhVar == null) {
            String valueOf = String.valueOf(dddVar.f26743c.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        } else if (ddhVar.b().equals(dddVar.f26743c)) {
            return (P) ddhVar.a(dddVar);
        } else {
            String valueOf2 = String.valueOf(ddhVar.b());
            String valueOf3 = String.valueOf(dddVar.f26743c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf2);
            sb.append(", got ");
            sb.append(valueOf3);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    public static <P> P a(dih dihVar, Class<P> cls) throws GeneralSecurityException {
        return (P) a(dihVar.zzijv, dihVar.zzijw, cls);
    }

    private static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private static <P> P a(String str, dlw dlwVar, Class<P> cls) throws GeneralSecurityException {
        return (P) a(str, (Class) a(cls)).a(dlwVar);
    }

    public static <P> P a(String str, dot dotVar, Class<P> cls) throws GeneralSecurityException {
        return (P) a(str, (Class) a(cls)).a(dotVar);
    }

    public static <P> P a(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) a(str, dlw.a(bArr), cls);
    }

    public static <P> void a(dct<P> dctVar, boolean z) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                if (dctVar != null) {
                    String a2 = dctVar.a();
                    a(a2, dctVar.getClass(), z);
                    f26754b.putIfAbsent(a2, new ddl(dctVar));
                    f26756d.put(a2, Boolean.valueOf(z));
                } else {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends dot> void a(dcu<KeyProtoT> dcuVar) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                String a2 = dcuVar.a();
                a(a2, dcuVar.getClass(), true);
                ConcurrentMap<String, b> concurrentMap = f26754b;
                if (!concurrentMap.containsKey(a2)) {
                    concurrentMap.put(a2, b(dcuVar));
                    f26755c.put(a2, c(dcuVar));
                }
                f26756d.put(a2, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <B, P> void a(ddh<B, P> ddhVar) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                if (ddhVar != null) {
                    Class<P> a2 = ddhVar.a();
                    ConcurrentMap<Class<?>, ddh<?, ?>> concurrentMap = f;
                    if (concurrentMap.containsKey(a2)) {
                        ddh<?, ?> ddhVar2 = concurrentMap.get(a2);
                        if (!ddhVar.getClass().equals(ddhVar2.getClass())) {
                            Logger logger = f26753a;
                            Level level = Level.WARNING;
                            String valueOf = String.valueOf(a2);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56);
                            sb.append("Attempted overwrite of a registered SetWrapper for type ");
                            sb.append(valueOf);
                            logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                            throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", a2.getName(), ddhVar2.getClass().getName(), ddhVar.getClass().getName()));
                        }
                    }
                    concurrentMap.put(a2, ddhVar);
                } else {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends dot, PublicKeyProtoT extends dot> void a(ddj<KeyProtoT, PublicKeyProtoT> ddjVar, dcu<PublicKeyProtoT> dcuVar) throws GeneralSecurityException {
        Class<?> d2;
        synchronized (ddm.class) {
            try {
                String a2 = ddjVar.a();
                String a3 = dcuVar.a();
                a(a2, ddjVar.getClass(), true);
                a(a3, dcuVar.getClass(), false);
                if (!a2.equals(a3)) {
                    ConcurrentMap<String, b> concurrentMap = f26754b;
                    if (concurrentMap.containsKey(a2) && (d2 = concurrentMap.get(a2).d()) != null && !d2.equals(dcuVar.getClass())) {
                        Logger logger = f26753a;
                        Level level = Level.WARNING;
                        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 96 + String.valueOf(a3).length());
                        sb.append("Attempted overwrite of a registered key manager for key type ");
                        sb.append(a2);
                        sb.append(" with inconsistent public key type ");
                        sb.append(a3);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", ddjVar.getClass().getName(), d2.getName(), dcuVar.getClass().getName()));
                    }
                    if (!concurrentMap.containsKey(a2) || concurrentMap.get(a2).d() == null) {
                        concurrentMap.put(a2, new ddn(ddjVar, dcuVar));
                        f26755c.put(a2, c(ddjVar));
                    }
                    ConcurrentMap<String, Boolean> concurrentMap2 = f26756d;
                    concurrentMap2.put(a2, Boolean.TRUE);
                    if (!concurrentMap.containsKey(a3)) {
                        concurrentMap.put(a3, b(dcuVar));
                    }
                    concurrentMap2.put(a3, Boolean.FALSE);
                } else {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        synchronized (ddm.class) {
            try {
                ConcurrentMap<String, b> concurrentMap = f26754b;
                if (concurrentMap.containsKey(str)) {
                    b bVar = concurrentMap.get(str);
                    if (!bVar.b().equals(cls)) {
                        Logger logger = f26753a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(str);
                        logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, bVar.b().getName(), cls.getName()));
                    } else if (z && !f26756d.get(str).booleanValue()) {
                        String valueOf2 = String.valueOf(str);
                        throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static <KeyProtoT extends dot> b b(dcu<KeyProtoT> dcuVar) {
        return new ddo(dcuVar);
    }

    private static b b(String str) throws GeneralSecurityException {
        b bVar;
        synchronized (ddm.class) {
            try {
                ConcurrentMap<String, b> concurrentMap = f26754b;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                bVar = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    public static dot b(dik dikVar) throws GeneralSecurityException {
        dot b2;
        synchronized (ddm.class) {
            try {
                dct<?> c2 = c(dikVar.zzijv);
                if (f26756d.get(dikVar.zzijv).booleanValue()) {
                    b2 = c2.b(dikVar.zzijw);
                } else {
                    String valueOf = String.valueOf(dikVar.zzijv);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b2;
    }

    private static dct<?> c(String str) throws GeneralSecurityException {
        return b(str).a();
    }

    private static <KeyProtoT extends dot> a c(dcu<KeyProtoT> dcuVar) {
        return new ddp(dcuVar);
    }
}
