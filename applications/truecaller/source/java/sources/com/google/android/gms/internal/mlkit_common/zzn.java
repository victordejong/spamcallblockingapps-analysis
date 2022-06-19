package com.google.android.gms.internal.mlkit_common;

import com.freshchat.consumer.sdk.beans.User;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzn.class */
public final class zzn {
    private static final Method zza;
    private static final Method zzb;
    private static final Method zzc;
    private static final Field zzd;
    private static final Field zze;
    private static final Field zzf;
    private static final Object zzg;
    private static final Throwable zzh;

    static {
        Method method;
        Field field;
        Field field2;
        Method method2;
        Field field3;
        Method method3;
        Throwable th;
        Field field4;
        Throwable th2;
        Field field5;
        Method method4;
        Class<?> cls;
        Class<?> cls2;
        Method declaredMethod;
        Field field6;
        try {
            cls = Class.forName("libcore.io.Libcore");
            cls2 = Class.forName("libcore.io.StructStat");
            Class<?> cls3 = Class.forName("libcore.io.OsConstants");
            Class<?> cls4 = Class.forName("libcore.io.ForwardingOs");
            method3 = cls3.getDeclaredMethod("S_ISLNK", Integer.TYPE);
            try {
                method3.setAccessible(true);
                method2 = cls4.getDeclaredMethod("lstat", String.class);
                try {
                    declaredMethod = cls4.getDeclaredMethod("fstat", FileDescriptor.class);
                } catch (Throwable th3) {
                    th2 = th3;
                    method4 = null;
                    field5 = null;
                }
            } catch (Throwable th4) {
                th2 = th4;
                method4 = null;
                method2 = null;
                field5 = null;
                field2 = field5;
                Throwable th5 = th2;
                field = field2;
                field3 = field5;
                method = method4;
                field4 = null;
                th = th5;
                zza = method3;
                zzb = method2;
                zzc = method;
                zzd = field3;
                zze = field2;
                zzf = field4;
                zzg = field;
                zzh = th;
            }
        } catch (Throwable th6) {
            th2 = th6;
            method3 = null;
        }
        try {
            Field declaredField = cls.getDeclaredField(User.DEVICE_META_OS_NAME);
            declaredField.setAccessible(true);
            field = declaredField.get(cls);
            try {
                field3 = cls2.getField("st_dev");
                try {
                    field6 = cls2.getField("st_ino");
                    try {
                        field4 = cls2.getField("st_mode");
                    } catch (Throwable th7) {
                        th = th7;
                        field4 = null;
                        method = declaredMethod;
                        field2 = field6;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    field4 = null;
                    method = declaredMethod;
                    field2 = null;
                    zza = method3;
                    zzb = method2;
                    zzc = method;
                    zzd = field3;
                    zze = field2;
                    zzf = field4;
                    zzg = field;
                    zzh = th;
                }
            } catch (Throwable th9) {
                th = th9;
                field3 = null;
            }
            try {
                field3.setAccessible(true);
                field6.setAccessible(true);
                field4.setAccessible(true);
                zza = method3;
                zzb = method2;
                zzc = declaredMethod;
                zzd = field3;
                zze = field6;
                zzf = field4;
                zzg = field;
                zzh = null;
            } catch (Throwable th10) {
                th = th10;
                method = declaredMethod;
                field2 = field6;
                zza = method3;
                zzb = method2;
                zzc = method;
                zzd = field3;
                zze = field2;
                zzf = field4;
                zzg = field;
                zzh = th;
            }
        } catch (Throwable th11) {
            th2 = th11;
            field5 = null;
            method4 = declaredMethod;
            field2 = field5;
            Throwable th52 = th2;
            field = field2;
            field3 = field5;
            method = method4;
            field4 = null;
            th = th52;
            zza = method3;
            zzb = method2;
            zzc = method;
            zzd = field3;
            zze = field2;
            zzf = field4;
            zzg = field;
            zzh = th;
        }
    }

    public static zzj zza(FileDescriptor fileDescriptor) throws IOException {
        return (zzj) zza((Callable<Object>) new Callable(fileDescriptor) { // from class: com.google.android.gms.internal.mlkit_common.zzp
            private final FileDescriptor zza;

            {
                this.zza = fileDescriptor;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzj zza2;
                zza2 = zzn.zza(zzn.zzc.invoke(zzn.zzg, this.zza));
                return zza2;
            }
        });
    }

    public static zzj zza(Object obj) throws Exception {
        return new zzj(((Long) zzd.get(obj)).longValue(), ((Long) zze.get(obj)).longValue(), ((Boolean) zza.invoke(null, Integer.valueOf(((Integer) zzf.get(obj)).intValue()))).booleanValue());
    }

    public static zzj zza(String str) throws IOException {
        return (zzj) zza((Callable<Object>) new Callable(str) { // from class: com.google.android.gms.internal.mlkit_common.zzm
            private final String zza;

            {
                this.zza = str;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzj zza2;
                zza2 = zzn.zza(zzn.zzb.invoke(zzn.zzg, this.zza));
                return zza2;
            }
        });
    }

    private static <T> T zza(Callable<T> callable) throws IOException {
        try {
            th = zzh;
            if (th != null) {
                throw new IOException(th);
            }
            return callable.call();
        } finally {
            IOException iOException = new IOException(th);
        }
    }
}
