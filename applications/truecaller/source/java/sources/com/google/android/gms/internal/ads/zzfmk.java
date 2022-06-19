package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmk.class */
public final class zzfmk {
    private static final Object zza;
    private static final Method zzb;
    private static final Method zzc;

    static {
        Object zzc2 = zzc();
        zza = zzc2;
        zzb = zzc2 == null ? null : zze("getStackTraceElement", Throwable.class, Integer.TYPE);
        zzc = zzc2 == null ? null : zzd(zzc2);
    }

    public static void zza(Throwable th) {
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }

    public static String zzb(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zzged.zzc(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private static Object zzc() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    private static Method zzd(Object obj) {
        try {
            Method zze = zze("getStackTraceDepth", Throwable.class);
            if (zze == null) {
                return null;
            }
            zze.invoke(obj, new Throwable());
            return zze;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    private static Method zze(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }
}
