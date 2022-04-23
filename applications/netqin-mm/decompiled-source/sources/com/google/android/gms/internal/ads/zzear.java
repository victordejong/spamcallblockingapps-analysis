package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefj;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p170b.p224d.p252g.p253a.v20;
import p131c.p161d.p170b.p224d.p252g.p253a.w20;
import p131c.p161d.p170b.p224d.p252g.p253a.x20;
import p131c.p161d.p170b.p224d.p252g.p253a.y20;
import p131c.p161d.p170b.p224d.p252g.p253a.z20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzear.class */
public final class zzear {

    /* renamed from: a */
    public static final Logger f27977a = Logger.getLogger(zzear.class.getName());

    /* renamed from: b */
    public static final ConcurrentMap<String, AbstractC7257a> f27978b = new ConcurrentHashMap();

    /* renamed from: c */
    public static final ConcurrentMap<String, AbstractC7258b> f27979c = new ConcurrentHashMap();

    /* renamed from: d */
    public static final ConcurrentMap<String, Boolean> f27980d = new ConcurrentHashMap();

    /* renamed from: e */
    public static final ConcurrentMap<String, zzdzy<?>> f27981e = new ConcurrentHashMap();

    /* renamed from: f */
    public static final ConcurrentMap<Class<?>, zzeaq<?>> f27982f = new ConcurrentHashMap();

    /* renamed from: com.google.android.gms.internal.ads.zzear$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzear$a.class */
    public interface AbstractC7257a {
        /* renamed from: a */
        Class<?> mo12912a();

        /* renamed from: b */
        <P> zzeab<P> mo12910b(Class<P> cls) throws GeneralSecurityException;

        /* renamed from: b */
        Set<Class<?>> mo12911b();

        /* renamed from: c */
        zzeab<?> mo12909c();

        /* renamed from: d */
        Class<?> mo12908d();
    }

    /* renamed from: com.google.android.gms.internal.ads.zzear$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzear$b.class */
    public interface AbstractC7258b {
    }

    /* renamed from: a */
    public static <P> zzeab<P> m12919a(String str, Class<P> cls) throws GeneralSecurityException {
        AbstractC7257a a = m12922a(str);
        if (cls == null) {
            return (zzeab<P>) a.mo12909c();
        }
        if (a.mo12911b().contains(cls)) {
            return a.mo12910b(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(a.mo12908d());
        Set<Class<?>> b = a.mo12911b();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : b) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <P> zzeao<P> m12928a(zzeah zzeahVar, zzeab<P> zzeabVar, Class<P> cls) throws GeneralSecurityException {
        m12923a(cls);
        Class<P> cls2 = cls;
        z20.m26105b(zzeahVar.m12948a());
        zzeao<P> zzeaoVar = (zzeao<P>) zzeao.m12934a(cls2);
        for (zzefj.zzb zzbVar : zzeahVar.m12948a().m12669n()) {
            if (zzbVar.m12666m() == zzefc.ENABLED) {
                zzean a = zzeaoVar.m12933a(m12921a(zzbVar.m12663p().m12690m(), zzbVar.m12663p().m12689n(), cls2), zzbVar);
                if (zzbVar.m12662q() == zzeahVar.m12948a().m12670m()) {
                    zzeaoVar.m12935a(a);
                }
            }
        }
        return zzeaoVar;
    }

    /* renamed from: a */
    public static <KeyProtoT extends zzelj> AbstractC7257a m12930a(zzeag<KeyProtoT> zzeagVar) {
        return new v20(zzeagVar);
    }

    /* renamed from: a */
    public static AbstractC7257a m12922a(String str) throws GeneralSecurityException {
        AbstractC7257a aVar;
        synchronized (zzear.class) {
            try {
                if (!f27978b.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                aVar = f27978b.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public static zzefb m12924a(zzefe zzefeVar) throws GeneralSecurityException {
        zzefb a;
        synchronized (zzear.class) {
            try {
                zzeab<?> c = m12913c(zzefeVar.m12681m());
                if (f27980d.get(zzefeVar.m12681m()).booleanValue()) {
                    a = c.mo12963a(zzefeVar.m12680n());
                } else {
                    String valueOf = String.valueOf(zzefeVar.m12681m());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }

    /* renamed from: a */
    public static <P> P m12927a(zzeao<P> zzeaoVar) throws GeneralSecurityException {
        zzeaq<?> zzeaqVar = f27982f.get(zzeaoVar.m12936a());
        if (zzeaqVar != null) {
            return (P) zzeaqVar.mo12903a(zzeaoVar);
        }
        String valueOf = String.valueOf(zzeaoVar.m12936a().getName());
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
    }

    /* renamed from: a */
    public static <T> T m12923a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static <P> P m12921a(String str, zzeip zzeipVar, Class<P> cls) throws GeneralSecurityException {
        return (P) m12919a(str, cls).mo12957c(zzeipVar);
    }

    /* renamed from: a */
    public static <P> P m12920a(String str, zzelj zzeljVar, Class<P> cls) throws GeneralSecurityException {
        m12923a(cls);
        return (P) m12919a(str, cls).mo12962a(zzeljVar);
    }

    /* renamed from: a */
    public static <P> P m12917a(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        zzeip zzu = zzeip.zzu(bArr);
        m12923a(cls);
        return (P) m12921a(str, zzu, cls);
    }

    /* renamed from: a */
    public static <P> void m12931a(zzeab<P> zzeabVar, boolean z) throws GeneralSecurityException {
        synchronized (zzear.class) {
            try {
                if (zzeabVar != null) {
                    String b = zzeabVar.mo12961b();
                    m12918a(b, zzeabVar.getClass(), z);
                    if (!f27978b.containsKey(b)) {
                        f27978b.put(b, new w20(zzeabVar));
                    }
                    f27980d.put(b, Boolean.valueOf(z));
                } else {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends zzelj> void m12929a(zzeag<KeyProtoT> zzeagVar, boolean z) throws GeneralSecurityException {
        synchronized (zzear.class) {
            try {
                String a = zzeagVar.mo12897a();
                m12918a(a, zzeagVar.getClass(), true);
                if (!f27978b.containsKey(a)) {
                    f27978b.put(a, m12930a((zzeag) zzeagVar));
                    f27979c.put(a, m12916b(zzeagVar));
                }
                f27980d.put(a, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <P> void m12926a(zzeaq<P> zzeaqVar) throws GeneralSecurityException {
        synchronized (zzear.class) {
            try {
                if (zzeaqVar != null) {
                    Class<P> a = zzeaqVar.mo12904a();
                    if (f27982f.containsKey(a)) {
                        zzeaq<?> zzeaqVar2 = f27982f.get(a);
                        if (!zzeaqVar.getClass().equals(zzeaqVar2.getClass())) {
                            Logger logger = f27977a;
                            Level level = Level.WARNING;
                            String valueOf = String.valueOf(a.toString());
                            logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", valueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(valueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                            throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", a.getName(), zzeaqVar2.getClass().getName(), zzeaqVar.getClass().getName()));
                        }
                    }
                    f27982f.put(a, zzeaqVar);
                } else {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends zzelj, PublicKeyProtoT extends zzelj> void m12925a(zzeas<KeyProtoT, PublicKeyProtoT> zzeasVar, zzeag<PublicKeyProtoT> zzeagVar, boolean z) throws GeneralSecurityException {
        Class<?> a;
        synchronized (zzear.class) {
            try {
                String a2 = zzeasVar.mo12897a();
                String a3 = zzeagVar.mo12897a();
                m12918a(a2, zzeasVar.getClass(), true);
                m12918a(a3, zzeagVar.getClass(), false);
                if (!a2.equals(a3)) {
                    if (f27978b.containsKey(a2) && (a = f27978b.get(a2).mo12912a()) != null && !a.equals(zzeagVar.getClass())) {
                        Logger logger = f27977a;
                        Level level = Level.WARNING;
                        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 96 + String.valueOf(a3).length());
                        sb.append("Attempted overwrite of a registered key manager for key type ");
                        sb.append(a2);
                        sb.append(" with inconsistent public key type ");
                        sb.append(a3);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzeasVar.getClass().getName(), a.getName(), zzeagVar.getClass().getName()));
                    }
                    if (!f27978b.containsKey(a2) || f27978b.get(a2).mo12912a() == null) {
                        f27978b.put(a2, new y20(zzeasVar, zzeagVar));
                        f27979c.put(a2, m12916b(zzeasVar));
                    }
                    f27980d.put(a2, true);
                    if (!f27978b.containsKey(a3)) {
                        f27978b.put(a3, m12930a((zzeag) zzeagVar));
                    }
                    f27980d.put(a3, false);
                } else {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m12918a(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        synchronized (zzear.class) {
            try {
                if (f27978b.containsKey(str)) {
                    AbstractC7257a aVar = f27978b.get(str);
                    if (!aVar.mo12908d().equals(cls)) {
                        Logger logger = f27977a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(str);
                        logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, aVar.mo12908d().getName(), cls.getName()));
                    } else if (z && !f27980d.get(str).booleanValue()) {
                        String valueOf2 = String.valueOf(str);
                        throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    public static zzdzy<?> m12914b(String str) throws GeneralSecurityException {
        String str2;
        if (str != null) {
            zzdzy<?> zzdzyVar = f27981e.get(str.toLowerCase());
            if (zzdzyVar != null) {
                return zzdzyVar;
            }
            String format = String.format("no catalogue found for %s. ", str);
            String str3 = format;
            if (str.toLowerCase().startsWith("tinkaead")) {
                str3 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
                str2 = String.valueOf(str3).concat("Maybe call DeterministicAeadConfig.register().");
            } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
                str2 = String.valueOf(str3).concat("Maybe call StreamingAeadConfig.register().");
            } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
                str2 = String.valueOf(str3).concat("Maybe call HybridConfig.register().");
            } else if (str.toLowerCase().startsWith("tinkmac")) {
                str2 = String.valueOf(str3).concat("Maybe call MacConfig.register().");
            } else if (str.toLowerCase().startsWith("tinkpublickeysign") || str.toLowerCase().startsWith("tinkpublickeyverify")) {
                str2 = String.valueOf(str3).concat("Maybe call SignatureConfig.register().");
            } else {
                str2 = str3;
                if (str.toLowerCase().startsWith("tink")) {
                    str2 = String.valueOf(str3).concat("Maybe call TinkConfig.register().");
                }
            }
            throw new GeneralSecurityException(str2);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    /* renamed from: b */
    public static <KeyProtoT extends zzelj> AbstractC7258b m12916b(zzeag<KeyProtoT> zzeagVar) {
        return new x20(zzeagVar);
    }

    /* renamed from: b */
    public static zzelj m12915b(zzefe zzefeVar) throws GeneralSecurityException {
        zzelj b;
        synchronized (zzear.class) {
            try {
                zzeab<?> c = m12913c(zzefeVar.m12681m());
                if (f27980d.get(zzefeVar.m12681m()).booleanValue()) {
                    b = c.mo12960b(zzefeVar.m12680n());
                } else {
                    String valueOf = String.valueOf(zzefeVar.m12681m());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    /* renamed from: c */
    public static zzeab<?> m12913c(String str) throws GeneralSecurityException {
        return m12922a(str).mo12909c();
    }
}
