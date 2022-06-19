package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzeb.class */
public final class zzeb {
    @NullableDecl
    private static final Object zzir;
    @NullableDecl
    private static final Method zzis;
    @NullableDecl
    private static final Method zzit;

    static {
        Object zzck = zzck();
        zzir = zzck;
        zzis = zzck == null ? null : zza("getStackTraceElement", Throwable.class, Integer.TYPE);
        zzit = zzir == null ? null : zzcl();
    }

    @NullableDecl
    private static Method zza(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    @Deprecated
    public static RuntimeException zzb(Throwable th) {
        zzdt.checkNotNull(th);
        if (!(th instanceof RuntimeException)) {
            if (!(th instanceof Error)) {
                throw new RuntimeException(th);
            }
            throw ((Error) th);
        }
        throw ((RuntimeException) th);
    }

    @NullableDecl
    private static Object zzck() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    @NullableDecl
    private static Method zzcl() {
        try {
            Method zza = zza("getStackTraceDepth", Throwable.class);
            if (zza == null) {
                return null;
            }
            zza.invoke(zzck(), new Throwable());
            return zza;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }
}
