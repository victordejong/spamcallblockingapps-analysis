package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbr.class */
public final class zzbr {
    private static final Map<Class<?>, zzbr> zzem = new WeakHashMap();
    private static final Map<Class<?>, zzbr> zzen = new WeakHashMap();
    private final Class<?> zzeo;
    private final boolean zzep;
    private final IdentityHashMap<String, zzbz> zzeq = new IdentityHashMap<>();
    final List<String> zzer;

    private zzbr(Class<?> cls, boolean z) {
        Field[] declaredFields;
        this.zzeo = cls;
        this.zzep = z;
        boolean z2 = !z || !cls.isEnum();
        String valueOf = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
        sb.append("cannot ignore case on an enum: ");
        sb.append(valueOf);
        String sb2 = sb.toString();
        if (z2) {
            TreeSet treeSet = new TreeSet(new zzbq(this));
            for (Field field : cls.getDeclaredFields()) {
                zzbz zza = zzbz.zza(field);
                if (zza != null) {
                    String name = zza.getName();
                    String intern = z ? name.toLowerCase(Locale.US).intern() : name;
                    zzbz zzbzVar = this.zzeq.get(intern);
                    boolean z3 = zzbzVar == null;
                    String str = z ? "case-insensitive " : "";
                    Field zzbz = zzbzVar == null ? null : zzbzVar.zzbz();
                    if (!z3) {
                        throw new IllegalArgumentException(zzdy.zza("two fields have the same %sname <%s>: %s and %s", str, intern, field, zzbz));
                    }
                    this.zzeq.put(intern, zza);
                    treeSet.add(intern);
                }
            }
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass != null) {
                zzbr zza2 = zza(superclass, z);
                treeSet.addAll(zza2.zzer);
                for (Map.Entry<String, zzbz> entry : zza2.zzeq.entrySet()) {
                    String key = entry.getKey();
                    if (!this.zzeq.containsKey(key)) {
                        this.zzeq.put(key, entry.getValue());
                    }
                }
            }
            this.zzer = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
            return;
        }
        throw new IllegalArgumentException(String.valueOf(sb2));
    }

    public static zzbr zza(Class<?> cls, boolean z) {
        zzbr zzbrVar;
        if (cls == null) {
            return null;
        }
        Map<Class<?>, zzbr> map = z ? zzen : zzem;
        synchronized (map) {
            try {
                zzbr zzbrVar2 = map.get(cls);
                zzbrVar = zzbrVar2;
                if (zzbrVar2 == null) {
                    zzbrVar = new zzbr(cls, z);
                    map.put(cls, zzbrVar);
                }
            } catch (Throwable th) {
                Map<Class<?>, zzbr> map2 = map;
                throw th;
            }
        }
        return zzbrVar;
    }

    public static zzbr zzc(Class<?> cls) {
        return zza(cls, false);
    }

    public final boolean isEnum() {
        return this.zzeo.isEnum();
    }

    public final zzbz zzae(String str) {
        String str2 = str;
        if (str != null) {
            String str3 = str;
            if (this.zzep) {
                str3 = str.toLowerCase(Locale.US);
            }
            str2 = str3.intern();
        }
        return this.zzeq.get(str2);
    }

    public final boolean zzbv() {
        return this.zzep;
    }

    public final Collection<zzbz> zzbw() {
        return Collections.unmodifiableCollection(this.zzeq.values());
    }
}
