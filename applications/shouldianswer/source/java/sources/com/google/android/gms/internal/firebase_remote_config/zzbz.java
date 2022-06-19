package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbz.class */
public final class zzbz {
    private static final Map<Field, zzbz> zzem = new WeakHashMap();
    private final String name;
    private final boolean zzfs;
    private final Field zzft;

    private zzbz(Field field, String str) {
        this.zzft = field;
        this.name = str == null ? null : str.intern();
        this.zzfs = zzbt.zza(this.zzft.getType());
    }

    public static zzbz zza(Enum<?> r7) {
        try {
            zzbz zza = zza(r7.getClass().getField(r7.name()));
            if (zza != null) {
                return zza;
            }
            throw new IllegalArgumentException(zzdy.zza("enum constant missing @Value or @NullValue annotation: %s", r7));
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (java.lang.reflect.Modifier.isStatic(r4.getModifiers()) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.firebase_remote_config.zzbz zza(java.lang.reflect.Field r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            java.util.Map<java.lang.reflect.Field, com.google.android.gms.internal.firebase_remote_config.zzbz> r0 = com.google.android.gms.internal.firebase_remote_config.zzbz.zzem
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            java.util.Map<java.lang.reflect.Field, com.google.android.gms.internal.firebase_remote_config.zzbz> r0 = com.google.android.gms.internal.firebase_remote_config.zzbz.zzem     // Catch: java.lang.Throwable -> Lc2
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lc2
            com.google.android.gms.internal.firebase_remote_config.zzbz r0 = (com.google.android.gms.internal.firebase_remote_config.zzbz) r0     // Catch: java.lang.Throwable -> Lc2
            r7 = r0
            r0 = r4
            boolean r0 = r0.isEnumConstant()     // Catch: java.lang.Throwable -> Lc2
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            if (r0 != 0) goto Lbd
            r0 = r8
            if (r0 != 0) goto L3a
            r0 = r7
            r9 = r0
            r0 = r4
            int r0 = r0.getModifiers()     // Catch: java.lang.Throwable -> Lc2
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)     // Catch: java.lang.Throwable -> Lc2
            if (r0 != 0) goto Lbd
        L3a:
            r0 = r8
            if (r0 == 0) goto L71
            r0 = r4
            java.lang.Class<com.google.android.gms.internal.firebase_remote_config.zzcp> r1 = com.google.android.gms.internal.firebase_remote_config.zzcp.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lc2
            com.google.android.gms.internal.firebase_remote_config.zzcp r0 = (com.google.android.gms.internal.firebase_remote_config.zzcp) r0     // Catch: java.lang.Throwable -> Lc2
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L5b
            r0 = r9
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> Lc2
            r9 = r0
            goto L93
        L5b:
            r0 = r4
            java.lang.Class<com.google.android.gms.internal.firebase_remote_config.zzcf> r1 = com.google.android.gms.internal.firebase_remote_config.zzcf.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lc2
            com.google.android.gms.internal.firebase_remote_config.zzcf r0 = (com.google.android.gms.internal.firebase_remote_config.zzcf) r0     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L6d
            r0 = r5
            r9 = r0
            goto L93
        L6d:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc2
            r0 = 0
            return r0
        L71:
            r0 = r4
            java.lang.Class<com.google.android.gms.internal.firebase_remote_config.zzcc> r1 = com.google.android.gms.internal.firebase_remote_config.zzcc.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lc2
            com.google.android.gms.internal.firebase_remote_config.zzcc r0 = (com.google.android.gms.internal.firebase_remote_config.zzcc) r0     // Catch: java.lang.Throwable -> Lc2
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L85
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc2
            r0 = 0
            return r0
        L85:
            r0 = r9
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> Lc2
            r9 = r0
            r0 = r4
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> Lc2
        L93:
            r0 = r9
            r5 = r0
            java.lang.String r0 = "##default"
            r1 = r9
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto La5
            r0 = r4
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> Lc2
            r5 = r0
        La5:
            com.google.android.gms.internal.firebase_remote_config.zzbz r0 = new com.google.android.gms.internal.firebase_remote_config.zzbz     // Catch: java.lang.Throwable -> Lc2 java.lang.Throwable -> Lc2
            r9 = r0
            r0 = r9
            r1 = r4
            r2 = r5
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> Lc2
            java.util.Map<java.lang.reflect.Field, com.google.android.gms.internal.firebase_remote_config.zzbz> r0 = com.google.android.gms.internal.firebase_remote_config.zzbz.zzem     // Catch: java.lang.Throwable -> Lc2
            r1 = r4
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lc2
        Lbd:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc2
            r0 = r9
            return r0
        Lc2:
            r4 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc2
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzbz.zza(java.lang.reflect.Field):com.google.android.gms.internal.firebase_remote_config.zzbz");
    }

    private static Object zza(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void zza(Field field, Object obj, Object obj2) {
        if (!Modifier.isFinal(field.getModifiers())) {
            try {
                field.set(obj, obj2);
                return;
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException(e);
            } catch (SecurityException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        Object zza = zza(field, obj);
        if (obj2 == null) {
            if (zza == null) {
                return;
            }
        } else if (obj2.equals(zza)) {
            return;
        }
        String valueOf = String.valueOf(zza);
        String valueOf2 = String.valueOf(obj2);
        String name = field.getName();
        String name2 = obj.getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48 + String.valueOf(valueOf2).length() + String.valueOf(name).length() + String.valueOf(name2).length());
        sb.append("expected final value <");
        sb.append(valueOf);
        sb.append("> but was <");
        sb.append(valueOf2);
        sb.append("> on ");
        sb.append(name);
        sb.append(" field in ");
        sb.append(name2);
        throw new IllegalArgumentException(sb.toString());
    }

    public final Type getGenericType() {
        return this.zzft.getGenericType();
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isPrimitive() {
        return this.zzfs;
    }

    public final void zzb(Object obj, Object obj2) {
        zza(this.zzft, obj, obj2);
    }

    public final Field zzbz() {
        return this.zzft;
    }

    public final boolean zzca() {
        return Modifier.isFinal(this.zzft.getModifiers());
    }

    public final <T extends Enum<T>> T zzcb() {
        return (T) Enum.valueOf(this.zzft.getDeclaringClass(), this.zzft.getName());
    }

    public final Object zzh(Object obj) {
        return zza(this.zzft, obj);
    }
}
