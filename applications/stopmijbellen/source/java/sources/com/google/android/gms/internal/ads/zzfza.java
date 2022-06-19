package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfza.class */
public final class zzfza {
    private static final Logger zza = Logger.getLogger(zzfza.class.getName());
    private static final ConcurrentMap<String, zzfyz> zzb = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzfyy> zzc = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzd = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzfxv<?>> zze = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, zzfys<?, ?>> zzf = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzfyd> zzg = new ConcurrentHashMap();

    private zzfza() {
    }

    @Deprecated
    public static zzfxv<?> zza(String str) throws GeneralSecurityException {
        String str2;
        if (str != null) {
            ConcurrentMap<String, zzfxv<?>> concurrentMap = zze;
            Locale locale = Locale.US;
            zzfxv<?> zzfxvVar = concurrentMap.get(str.toLowerCase(locale));
            if (zzfxvVar != null) {
                return zzfxvVar;
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

    public static zzfya<?> zzb(String str) throws GeneralSecurityException {
        return zzp(str).zzb();
    }

    public static zzgff zzc(zzgfi zzgfiVar) throws GeneralSecurityException {
        zzgff zza2;
        synchronized (zzfza.class) {
            try {
                zzfya<?> zzb2 = zzb(zzgfiVar.zzf());
                if (!zzd.get(zzgfiVar.zzf()).booleanValue()) {
                    String valueOf = String.valueOf(zzgfiVar.zzf());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                zza2 = zzb2.zza(zzgfiVar.zze());
            } catch (Throwable th) {
                throw th;
            }
        }
        return zza2;
    }

    public static zzglv zzd(zzgfi zzgfiVar) throws GeneralSecurityException {
        zzglv zzb2;
        synchronized (zzfza.class) {
            try {
                zzfya<?> zzb3 = zzb(zzgfiVar.zzf());
                if (!zzd.get(zzgfiVar.zzf()).booleanValue()) {
                    String valueOf = String.valueOf(zzgfiVar.zzf());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                zzb2 = zzb3.zzb(zzgfiVar.zze());
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzb2;
    }

    public static Class<?> zze(Class<?> cls) {
        zzfys<?, ?> zzfysVar = zzf.get(cls);
        if (zzfysVar == null) {
            return null;
        }
        return zzfysVar.zza();
    }

    public static <P> P zzf(zzgff zzgffVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zzq(zzgffVar.zzf(), zzgffVar.zze(), cls);
    }

    public static <P> P zzg(String str, zzglv zzglvVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zzo(str, cls).zze(zzglvVar);
    }

    public static <P> P zzh(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) zzq(str, zzgjf.zzv(bArr), cls);
    }

    public static <B, P> P zzi(zzfyr<B> zzfyrVar, Class<P> cls) throws GeneralSecurityException {
        zzfys<?, ?> zzfysVar = zzf.get(cls);
        if (zzfysVar == null) {
            String name = zzfyrVar.zzd().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        } else if (zzfysVar.zza().equals(zzfyrVar.zzd())) {
            return (P) zzfysVar.zzc(zzfyrVar);
        } else {
            String obj = zzfysVar.zza().toString();
            String obj2 = zzfyrVar.zzd().toString();
            throw new GeneralSecurityException(C1676a.m4788i(new StringBuilder(obj2.length() + obj.length() + 44), "Wrong input primitive class, expected ", obj, ", got ", obj2));
        }
    }

    public static Map<String, zzfyd> zzj() {
        Map<String, zzfyd> unmodifiableMap;
        synchronized (zzfza.class) {
            try {
                unmodifiableMap = Collections.unmodifiableMap(zzg);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableMap;
    }

    public static <KeyProtoT extends zzglv, PublicKeyProtoT extends zzglv> void zzk(zzfyu<KeyProtoT, PublicKeyProtoT> zzfyuVar, zzfyi<PublicKeyProtoT> zzfyiVar, boolean z) throws GeneralSecurityException {
        Class<?> zzd2;
        synchronized (zzfza.class) {
            try {
                zzr("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", zzfyuVar.getClass(), zzfyuVar.zza().zzd(), true);
                zzr("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", zzfyiVar.getClass(), Collections.emptyMap(), false);
                if (!zzgak.zza(1)) {
                    String valueOf = String.valueOf(zzfyuVar.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                    sb.append("failed to register key manager ");
                    sb.append(valueOf);
                    sb.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb.toString());
                } else if (!zzgak.zza(1)) {
                    String valueOf2 = String.valueOf(zzfyiVar.getClass());
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 61);
                    sb2.append("failed to register key manager ");
                    sb2.append(valueOf2);
                    sb2.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb2.toString());
                } else {
                    ConcurrentMap<String, zzfyz> concurrentMap = zzb;
                    if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (zzd2 = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").zzd()) != null && !zzd2.getName().equals(zzfyiVar.getClass().getName())) {
                        zza.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzfyuVar.getClass().getName(), zzd2.getName(), zzfyiVar.getClass().getName()));
                    }
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").zzd() == null) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new zzfyx(zzfyuVar, zzfyiVar));
                        zzc.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new zzfyy(zzfyuVar));
                        zzs("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", zzfyuVar.zza().zzd());
                    }
                    ConcurrentMap<String, Boolean> concurrentMap2 = zzd;
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new zzfyw(zzfyiVar));
                    }
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <P> void zzl(zzfya<P> zzfyaVar, boolean z) throws GeneralSecurityException {
        synchronized (zzfza.class) {
            try {
                if (zzfyaVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                String zzf2 = zzfyaVar.zzf();
                zzr(zzf2, zzfyaVar.getClass(), Collections.emptyMap(), z);
                zzb.putIfAbsent(zzf2, new zzfyv(zzfyaVar));
                zzd.put(zzf2, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends zzglv> void zzm(zzfyi<KeyProtoT> zzfyiVar, boolean z) throws GeneralSecurityException {
        synchronized (zzfza.class) {
            try {
                String zzf2 = zzfyiVar.zzf();
                zzr(zzf2, zzfyiVar.getClass(), zzfyiVar.zza().zzd(), true);
                if (!zzgak.zza(zzfyiVar.zzi())) {
                    String valueOf = String.valueOf(zzfyiVar.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                    sb.append("failed to register key manager ");
                    sb.append(valueOf);
                    sb.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb.toString());
                }
                ConcurrentMap<String, zzfyz> concurrentMap = zzb;
                if (!concurrentMap.containsKey(zzf2)) {
                    concurrentMap.put(zzf2, new zzfyw(zzfyiVar));
                    zzc.put(zzf2, new zzfyy(zzfyiVar));
                    zzs(zzf2, zzfyiVar.zza().zzd());
                }
                zzd.put(zzf2, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <B, P> void zzn(zzfys<B, P> zzfysVar) throws GeneralSecurityException {
        synchronized (zzfza.class) {
            try {
                if (zzfysVar == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> zzb2 = zzfysVar.zzb();
                ConcurrentMap<Class<?>, zzfys<?, ?>> concurrentMap = zzf;
                if (concurrentMap.containsKey(zzb2)) {
                    zzfys<?, ?> zzfysVar2 = concurrentMap.get(zzb2);
                    if (!zzfysVar.getClass().getName().equals(zzfysVar2.getClass().getName())) {
                        zza.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", "Attempted overwrite of a registered PrimitiveWrapper for type ".concat(zzb2.toString()));
                        throw new GeneralSecurityException(String.format("PrimitiveWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", zzb2.getName(), zzfysVar2.getClass().getName(), zzfysVar.getClass().getName()));
                    }
                }
                concurrentMap.put(zzb2, zzfysVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static <P> zzfya<P> zzo(String str, Class<P> cls) throws GeneralSecurityException {
        zzfyz zzp = zzp(str);
        if (zzp.zze().contains(cls)) {
            return zzp.zza(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzp.zzc());
        Set<Class<?>> zze2 = zzp.zze();
        StringBuilder sb = new StringBuilder();
        Iterator<Class<?>> it2 = zze2.iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it2.hasNext()) {
                break;
            }
            Class<?> next = it2.next();
            if (!z2) {
                sb.append(", ");
            }
            sb.append(next.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        int length = name.length();
        StringBuilder sb3 = new StringBuilder(sb2.length() + length + 77 + valueOf.length());
        C0082b.m8749m(sb3, "Primitive type ", name, " not supported by key manager of type ", valueOf);
        throw new GeneralSecurityException(C0082b.m8754h(sb3, ", supported primitives: ", sb2));
    }

    private static zzfyz zzp(String str) throws GeneralSecurityException {
        zzfyz zzfyzVar;
        synchronized (zzfza.class) {
            try {
                ConcurrentMap<String, zzfyz> concurrentMap = zzb;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                zzfyzVar = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfyzVar;
    }

    private static <P> P zzq(String str, zzgjf zzgjfVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zzo(str, cls).zzd(zzgjfVar);
    }

    private static <KeyProtoT extends zzglv, KeyFormatProtoT extends zzglv> void zzr(String str, Class cls, Map<String, zzfyf<KeyFormatProtoT>> map, boolean z) throws GeneralSecurityException {
        Map.Entry<String, zzfyf<KeyFormatProtoT>> next;
        synchronized (zzfza.class) {
            try {
                ConcurrentMap<String, zzfyz> concurrentMap = zzb;
                zzfyz zzfyzVar = concurrentMap.get(str);
                if (zzfyzVar != null && !zzfyzVar.zzc().equals(cls)) {
                    zza.logp(Level.WARNING, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(str) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzfyzVar.zzc().getName(), cls.getName()));
                } else if (z) {
                    ConcurrentMap<String, Boolean> concurrentMap2 = zzd;
                    if (concurrentMap2.containsKey(str) && !concurrentMap2.get(str).booleanValue()) {
                        throw new GeneralSecurityException(str.length() != 0 ? "New keys are already disallowed for key type ".concat(str) : new String("New keys are already disallowed for key type "));
                    } else if (!concurrentMap.containsKey(str)) {
                        Iterator<Map.Entry<String, zzfyf<KeyFormatProtoT>>> it2 = map.entrySet().iterator();
                        do {
                            if (it2.hasNext()) {
                                next = it2.next();
                            }
                        } while (!zzg.containsKey(next.getKey()));
                        String valueOf = String.valueOf(next.getKey());
                        throw new GeneralSecurityException(valueOf.length() != 0 ? "Attempted overwrite of a registered key template ".concat(valueOf) : new String("Attempted overwrite of a registered key template "));
                    } else {
                        for (Map.Entry<String, zzfyf<KeyFormatProtoT>> entry : map.entrySet()) {
                            if (!zzg.containsKey(entry.getKey())) {
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

    private static <KeyFormatProtoT extends zzglv> void zzs(String str, Map<String, zzfyf<KeyFormatProtoT>> map) {
        for (Map.Entry<String, zzfyf<KeyFormatProtoT>> entry : map.entrySet()) {
            zzg.put(entry.getKey(), zzfyd.zzd(str, entry.getValue().zza.zzar(), entry.getValue().zzb));
        }
    }
}
