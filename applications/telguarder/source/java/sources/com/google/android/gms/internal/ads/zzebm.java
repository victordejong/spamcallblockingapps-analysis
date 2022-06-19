package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegl;
import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebm.class */
public final class zzebm {
    private static final Logger logger = Logger.getLogger(zzebm.class.getName());
    private static final ConcurrentMap<String, zzb> zzica = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zza> zzicb = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzicc = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzeap<?>> zzicd = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, zzebh<?, ?>> zzice = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebm$zza.class */
    public interface zza {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebm$zzb.class */
    public interface zzb {
        <P> zzeaw<P> zzb(Class<P> cls) throws GeneralSecurityException;

        Set<Class<?>> zzbam();

        zzeaw<?> zzbax();

        Class<?> zzbay();

        Class<?> zzbaz();
    }

    private zzebm() {
    }

    private static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private static <P> zzeaw<P> zza(String str, Class<P> cls) throws GeneralSecurityException {
        zzb zzhq = zzhq(str);
        if (cls == null) {
            return (zzeaw<P>) zzhq.zzbax();
        }
        if (zzhq.zzbam().contains(cls)) {
            return zzhq.zzb(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzhq.zzbay());
        Set<Class<?>> zzbam = zzhq.zzbam();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : zzbam) {
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
    public static <P> zzebf<P> zza(zzebc zzebcVar, zzeaw<P> zzeawVar, Class<P> cls) throws GeneralSecurityException {
        Class cls2 = (Class) checkNotNull(cls);
        zzebq.zzc(zzebcVar.zzbaq());
        zzebf<P> zzebfVar = (zzebf<P>) zzebf.zza(cls2);
        for (zzegl.zzb zzbVar : zzebcVar.zzbaq().zzbel()) {
            if (zzbVar.zzbau() == zzege.ENABLED) {
                zzebi zza2 = zzebfVar.zza(zza(zzbVar.zzbep().zzbdx(), zzbVar.zzbep().zzbdy(), cls2), zzbVar);
                if (zzbVar.zzbeq() == zzebcVar.zzbaq().zzbek()) {
                    zzebfVar.zza(zza2);
                }
            }
        }
        return zzebfVar;
    }

    private static <KeyProtoT extends zzemo> zzb zza(zzeax<KeyProtoT> zzeaxVar) {
        return new zzebo(zzeaxVar);
    }

    public static zzegd zza(zzegg zzeggVar) throws GeneralSecurityException {
        zzegd zzo;
        synchronized (zzebm.class) {
            try {
                zzeaw<?> zzhs = zzhs(zzeggVar.zzbdx());
                if (!zzicc.get(zzeggVar.zzbdx()).booleanValue()) {
                    String valueOf = String.valueOf(zzeggVar.zzbdx());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                zzo = zzhs.zzo(zzeggVar.zzbdy());
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzo;
    }

    public static <P> P zza(zzebf<P> zzebfVar) throws GeneralSecurityException {
        zzebh<?, ?> zzebhVar = zzice.get(zzebfVar.zzbai());
        if (zzebhVar == null) {
            String valueOf = String.valueOf(zzebfVar.zzbai().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        } else if (zzebhVar.zzbas().equals(zzebfVar.zzbai())) {
            return (P) zzebhVar.zza(zzebfVar);
        } else {
            String valueOf2 = String.valueOf(zzebhVar.zzbas());
            String valueOf3 = String.valueOf(zzebfVar.zzbai());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf2);
            sb.append(", got ");
            sb.append(valueOf3);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    private static <P> P zza(String str, zzejr zzejrVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, cls).zzm(zzejrVar);
    }

    public static <P> P zza(String str, zzemo zzemoVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, (Class) checkNotNull(cls)).zza(zzemoVar);
    }

    public static <P> P zza(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, zzejr.zzt(bArr), (Class) checkNotNull(cls));
    }

    public static <P> void zza(zzeaw<P> zzeawVar, boolean z) throws GeneralSecurityException {
        synchronized (zzebm.class) {
            try {
                if (zzeawVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                String keyType = zzeawVar.getKeyType();
                zza(keyType, zzeawVar.getClass(), z);
                zzica.putIfAbsent(keyType, new zzebl(zzeawVar));
                zzicc.put(keyType, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends zzemo> void zza(zzeax<KeyProtoT> zzeaxVar, boolean z) throws GeneralSecurityException {
        synchronized (zzebm.class) {
            try {
                String keyType = zzeaxVar.getKeyType();
                zza(keyType, zzeaxVar.getClass(), true);
                ConcurrentMap<String, zzb> concurrentMap = zzica;
                if (!concurrentMap.containsKey(keyType)) {
                    concurrentMap.put(keyType, zza(zzeaxVar));
                    zzicb.put(keyType, zzb(zzeaxVar));
                }
                zzicc.put(keyType, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <B, P> void zza(zzebh<B, P> zzebhVar) throws GeneralSecurityException {
        synchronized (zzebm.class) {
            try {
                if (zzebhVar == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> zzbai = zzebhVar.zzbai();
                ConcurrentMap<Class<?>, zzebh<?, ?>> concurrentMap = zzice;
                if (concurrentMap.containsKey(zzbai)) {
                    zzebh<?, ?> zzebhVar2 = concurrentMap.get(zzbai);
                    if (!zzebhVar.getClass().equals(zzebhVar2.getClass())) {
                        Logger logger2 = logger;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(zzbai);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56);
                        sb.append("Attempted overwrite of a registered SetWrapper for type ");
                        sb.append(valueOf);
                        logger2.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", zzbai.getName(), zzebhVar2.getClass().getName(), zzebhVar.getClass().getName()));
                    }
                }
                concurrentMap.put(zzbai, zzebhVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends zzemo, PublicKeyProtoT extends zzemo> void zza(zzebj<KeyProtoT, PublicKeyProtoT> zzebjVar, zzeax<PublicKeyProtoT> zzeaxVar, boolean z) throws GeneralSecurityException {
        Class<?> zzbaz;
        synchronized (zzebm.class) {
            try {
                String keyType = zzebjVar.getKeyType();
                String keyType2 = zzeaxVar.getKeyType();
                zza(keyType, zzebjVar.getClass(), true);
                zza(keyType2, zzeaxVar.getClass(), false);
                if (keyType.equals(keyType2)) {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
                ConcurrentMap<String, zzb> concurrentMap = zzica;
                if (concurrentMap.containsKey(keyType) && (zzbaz = concurrentMap.get(keyType).zzbaz()) != null && !zzbaz.equals(zzeaxVar.getClass())) {
                    Logger logger2 = logger;
                    Level level = Level.WARNING;
                    StringBuilder sb = new StringBuilder(String.valueOf(keyType).length() + 96 + String.valueOf(keyType2).length());
                    sb.append("Attempted overwrite of a registered key manager for key type ");
                    sb.append(keyType);
                    sb.append(" with inconsistent public key type ");
                    sb.append(keyType2);
                    logger2.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                    throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzebjVar.getClass().getName(), zzbaz.getName(), zzeaxVar.getClass().getName()));
                }
                if (!concurrentMap.containsKey(keyType) || concurrentMap.get(keyType).zzbaz() == null) {
                    concurrentMap.put(keyType, new zzebn(zzebjVar, zzeaxVar));
                    zzicb.put(keyType, zzb(zzebjVar));
                }
                ConcurrentMap<String, Boolean> concurrentMap2 = zzicc;
                concurrentMap2.put(keyType, true);
                if (!concurrentMap.containsKey(keyType2)) {
                    concurrentMap.put(keyType2, zza(zzeaxVar));
                }
                concurrentMap2.put(keyType2, false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void zza(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        synchronized (zzebm.class) {
            try {
                ConcurrentMap<String, zzb> concurrentMap = zzica;
                if (!concurrentMap.containsKey(str)) {
                    return;
                }
                zzb zzbVar = concurrentMap.get(str);
                if (!zzbVar.zzbay().equals(cls)) {
                    Logger logger2 = logger;
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(str);
                    logger2.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzbVar.zzbay().getName(), cls.getName()));
                } else if (!z || zzicc.get(str).booleanValue()) {
                } else {
                    String valueOf2 = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static <KeyProtoT extends zzemo> zza zzb(zzeax<KeyProtoT> zzeaxVar) {
        return new zzebp(zzeaxVar);
    }

    public static zzemo zzb(zzegg zzeggVar) throws GeneralSecurityException {
        zzemo zzn;
        synchronized (zzebm.class) {
            try {
                zzeaw<?> zzhs = zzhs(zzeggVar.zzbdx());
                if (!zzicc.get(zzeggVar.zzbdx()).booleanValue()) {
                    String valueOf = String.valueOf(zzeggVar.zzbdx());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                zzn = zzhs.zzn(zzeggVar.zzbdy());
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzn;
    }

    private static zzb zzhq(String str) throws GeneralSecurityException {
        zzb zzbVar;
        synchronized (zzebm.class) {
            try {
                ConcurrentMap<String, zzb> concurrentMap = zzica;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                zzbVar = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbVar;
    }

    @Deprecated
    public static zzeap<?> zzhr(String str) throws GeneralSecurityException {
        String str2;
        if (str != null) {
            zzeap<?> zzeapVar = zzicd.get(str.toLowerCase(Locale.US));
            if (zzeapVar != null) {
                return zzeapVar;
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

    private static zzeaw<?> zzhs(String str) throws GeneralSecurityException {
        return zzhq(str).zzbax();
    }
}
