package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cye;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cti.class */
public final class cti {

    /* renamed from: a */
    private static final Logger f13665a = Logger.getLogger(cti.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, AbstractC2897a> f13666b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, AbstractC2898b> f13667c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, Boolean> f13668d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<String, csp<?>> f13669e = new ConcurrentHashMap();

    /* renamed from: f */
    private static final ConcurrentMap<Class<?>, cth<?>> f13670f = new ConcurrentHashMap();

    /* renamed from: com.google.android.gms.internal.ads.cti$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cti$a.class */
    public interface AbstractC2897a {
        /* renamed from: a */
        css<?> mo10662a();

        /* renamed from: a */
        <P> css<P> mo10661a(Class<P> cls);

        /* renamed from: b */
        Class<?> mo10660b();

        /* renamed from: c */
        Set<Class<?>> mo10659c();

        /* renamed from: d */
        Class<?> mo10658d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.cti$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cti$b.class */
    public interface AbstractC2898b {
    }

    @Deprecated
    /* renamed from: a */
    public static csp<?> m10680a(String str) {
        String concat;
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        csp<?> cspVar = f13669e.get(str.toLowerCase());
        if (cspVar != null) {
            return cspVar;
        }
        String format = String.format("no catalogue found for %s. ", str);
        String str2 = format;
        if (str.toLowerCase().startsWith("tinkaead")) {
            str2 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
            concat = String.valueOf(str2).concat("Maybe call DeterministicAeadConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
            concat = String.valueOf(str2).concat("Maybe call StreamingAeadConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
            concat = String.valueOf(str2).concat("Maybe call HybridConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkmac")) {
            concat = String.valueOf(str2).concat("Maybe call MacConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkpublickeysign") || str.toLowerCase().startsWith("tinkpublickeyverify")) {
            concat = String.valueOf(str2).concat("Maybe call SignatureConfig.register().");
        } else {
            concat = str2;
            if (str.toLowerCase().startsWith("tink")) {
                concat = String.valueOf(str2).concat("Maybe call TinkConfig.register().");
            }
        }
        throw new GeneralSecurityException(concat);
    }

    /* renamed from: a */
    private static <P> css<P> m10677a(String str, Class<P> cls) {
        css<?> mo10661a;
        AbstractC2897a m10672b = m10672b(str);
        if (cls == null) {
            mo10661a = m10672b.mo10662a();
        } else if (!m10672b.mo10659c().contains(cls)) {
            String name = cls.getName();
            String valueOf = String.valueOf(m10672b.mo10660b());
            Set<Class<?>> mo10659c = m10672b.mo10659c();
            StringBuilder sb = new StringBuilder();
            Iterator<Class<?>> it = mo10659c.iterator();
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
            throw new GeneralSecurityException(new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(valueOf).length() + String.valueOf(sb2).length()).append("Primitive type ").append(name).append(" not supported by key manager of type ").append(valueOf).append(", supported primitives: ").append(sb2).toString());
        } else {
            mo10661a = m10672b.mo10661a(cls);
        }
        return mo10661a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <P> ctf<P> m10686a(csy csyVar, css<P> cssVar, Class<P> cls) {
        Class cls2 = (Class) m10681a(cls);
        ctq.m10655b(csyVar.m10720a());
        ctf<P> ctfVar = (ctf<P>) ctf.m10692a(cls2);
        for (cye.C2935a c2935a : csyVar.m10720a().m10395b()) {
            if (c2935a.m10390c() == cxy.ENABLED) {
                cte m10691a = ctfVar.m10691a(m10679a(c2935a.m10391b().m10425a(), c2935a.m10391b().m10418b(), cls2), c2935a);
                if (c2935a.m10389d() == csyVar.m10720a().m10397a()) {
                    ctfVar.m10693a(m10691a);
                }
            }
        }
        return ctfVar;
    }

    /* renamed from: a */
    private static <KeyProtoT extends deg> AbstractC2897a m10688a(csx<KeyProtoT> csxVar) {
        return new ctk(csxVar);
    }

    /* renamed from: a */
    public static cxu m10682a(cya cyaVar) {
        cxu mo10726c;
        synchronized (cti.class) {
            try {
                css<?> m10671c = m10671c(cyaVar.m10407a());
                if (!f13668d.get(cyaVar.m10407a()).booleanValue()) {
                    String valueOf = String.valueOf(cyaVar.m10407a());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo10726c = m10671c.mo10726c(cyaVar.m10406b());
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo10726c;
    }

    /* renamed from: a */
    public static <P> P m10685a(ctf<P> ctfVar) {
        cth<?> cthVar = f13670f.get(ctfVar.m10690b());
        if (cthVar == null) {
            String valueOf = String.valueOf(ctfVar.m10690b().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        return (P) cthVar.mo10622a(ctfVar);
    }

    /* renamed from: a */
    private static <T> T m10681a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    private static <P> P m10679a(String str, dbi dbiVar, Class<P> cls) {
        return (P) m10677a(str, cls).mo10732a(dbiVar);
    }

    /* renamed from: a */
    public static <P> P m10678a(String str, deg degVar, Class<P> cls) {
        return (P) m10677a(str, (Class) m10681a(cls)).mo10731a(degVar);
    }

    /* renamed from: a */
    public static <P> P m10675a(String str, byte[] bArr, Class<P> cls) {
        return (P) m10679a(str, dbi.m10219a(bArr), (Class) m10681a(cls));
    }

    /* renamed from: a */
    public static <P> void m10689a(css<P> cssVar, boolean z) {
        synchronized (cti.class) {
            try {
                if (cssVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                String mo10733a = cssVar.mo10733a();
                m10676a(mo10733a, cssVar.getClass(), z);
                if (!f13666b.containsKey(mo10733a)) {
                    f13666b.put(mo10733a, new ctm(cssVar));
                }
                f13668d.put(mo10733a, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends deg> void m10687a(csx<KeyProtoT> csxVar, boolean z) {
        synchronized (cti.class) {
            try {
                String mo10636b = csxVar.mo10636b();
                m10676a(mo10636b, csxVar.getClass(), true);
                if (!f13666b.containsKey(mo10636b)) {
                    f13666b.put(mo10636b, m10688a((csx) csxVar));
                    f13667c.put(mo10636b, m10674b(csxVar));
                }
                f13668d.put(mo10636b, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <P> void m10684a(cth<P> cthVar) {
        synchronized (cti.class) {
            try {
                if (cthVar == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> mo10623a = cthVar.mo10623a();
                if (f13670f.containsKey(mo10623a)) {
                    cth<?> cthVar2 = f13670f.get(mo10623a);
                    if (!cthVar.getClass().equals(cthVar2.getClass())) {
                        Logger logger = f13665a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(mo10623a.toString());
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", valueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(valueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", mo10623a.getName(), cthVar2.getClass().getName(), cthVar.getClass().getName()));
                    }
                }
                f13670f.put(mo10623a, cthVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <KeyProtoT extends deg, PublicKeyProtoT extends deg> void m10683a(ctj<KeyProtoT, PublicKeyProtoT> ctjVar, csx<PublicKeyProtoT> csxVar, boolean z) {
        Class<?> mo10658d;
        synchronized (cti.class) {
            try {
                String mo10636b = ctjVar.mo10636b();
                String mo10636b2 = csxVar.mo10636b();
                m10676a(mo10636b, ctjVar.getClass(), true);
                m10676a(mo10636b2, csxVar.getClass(), false);
                if (mo10636b.equals(mo10636b2)) {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
                if (f13666b.containsKey(mo10636b) && (mo10658d = f13666b.get(mo10636b).mo10658d()) != null && !mo10658d.equals(csxVar.getClass())) {
                    f13665a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", new StringBuilder(String.valueOf(mo10636b).length() + 96 + String.valueOf(mo10636b2).length()).append("Attempted overwrite of a registered key manager for key type ").append(mo10636b).append(" with inconsistent public key type ").append(mo10636b2).toString());
                    throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", ctjVar.getClass().getName(), mo10658d.getName(), csxVar.getClass().getName()));
                }
                if (!f13666b.containsKey(mo10636b) || f13666b.get(mo10636b).mo10658d() == null) {
                    f13666b.put(mo10636b, new cto(ctjVar, csxVar));
                    f13667c.put(mo10636b, m10674b(ctjVar));
                }
                f13668d.put(mo10636b, true);
                if (!f13666b.containsKey(mo10636b2)) {
                    f13666b.put(mo10636b2, m10688a((csx) csxVar));
                }
                f13668d.put(mo10636b2, false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static <P> void m10676a(String str, Class<?> cls, boolean z) {
        synchronized (cti.class) {
            try {
                if (f13666b.containsKey(str)) {
                    AbstractC2897a abstractC2897a = f13666b.get(str);
                    if (!abstractC2897a.mo10660b().equals(cls)) {
                        Logger logger = f13665a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(str);
                        logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, abstractC2897a.mo10660b().getName(), cls.getName()));
                    } else if (z && !f13668d.get(str).booleanValue()) {
                        String valueOf2 = String.valueOf(str);
                        throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static AbstractC2897a m10672b(String str) {
        AbstractC2897a abstractC2897a;
        synchronized (cti.class) {
            try {
                if (!f13666b.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                abstractC2897a = f13666b.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC2897a;
    }

    /* renamed from: b */
    private static <KeyProtoT extends deg> AbstractC2898b m10674b(csx<KeyProtoT> csxVar) {
        return new ctn(csxVar);
    }

    /* renamed from: b */
    public static deg m10673b(cya cyaVar) {
        deg mo10729b;
        synchronized (cti.class) {
            try {
                css<?> m10671c = m10671c(cyaVar.m10407a());
                if (!f13668d.get(cyaVar.m10407a()).booleanValue()) {
                    String valueOf = String.valueOf(cyaVar.m10407a());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                mo10729b = m10671c.mo10729b(cyaVar.m10406b());
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo10729b;
    }

    /* renamed from: c */
    private static css<?> m10671c(String str) {
        return m10672b(str).mo10662a();
    }
}
