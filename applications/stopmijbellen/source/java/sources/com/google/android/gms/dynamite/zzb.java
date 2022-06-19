package com.google.android.gms.dynamite;

import android.os.Looper;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzb.class */
public final class zzb {
    private static volatile ClassLoader zza;
    private static volatile Thread zzb;

    public static ClassLoader zza() {
        ClassLoader classLoader;
        synchronized (zzb.class) {
            try {
                if (zza == null) {
                    zza = zzb();
                }
                classLoader = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return classLoader;
    }

    private static ClassLoader zzb() {
        ClassLoader classLoader;
        synchronized (zzb.class) {
            try {
                if (zzb == null) {
                    zzb = zzc();
                    if (zzb == null) {
                        return null;
                    }
                }
                synchronized (zzb) {
                    try {
                        classLoader = zzb.getContextClassLoader();
                    } catch (SecurityException e) {
                        String valueOf = String.valueOf(e.getMessage());
                        Log.w("DynamiteLoaderV2CL", valueOf.length() != 0 ? "Failed to get thread context classloader ".concat(valueOf) : new String("Failed to get thread context classloader "));
                        classLoader = null;
                    }
                }
                return classLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Thread zzc() {
        zza zzaVar;
        zza zzaVar2;
        SecurityException e;
        ThreadGroup threadGroup;
        ThreadGroup threadGroup2;
        zza zzaVar3;
        synchronized (zzb.class) {
            try {
                ThreadGroup threadGroup3 = Looper.getMainLooper().getThread().getThreadGroup();
                if (threadGroup3 == null) {
                    return null;
                }
                synchronized (Void.class) {
                    try {
                        int activeGroupCount = threadGroup3.activeGroupCount();
                        ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                        threadGroup3.enumerate(threadGroupArr);
                        int i = 0;
                        while (true) {
                            if (i >= activeGroupCount) {
                                threadGroup = null;
                                break;
                            }
                            threadGroup = threadGroupArr[i];
                            if ("dynamiteLoader".equals(threadGroup.getName())) {
                                break;
                            }
                            i++;
                        }
                        threadGroup2 = threadGroup;
                        if (threadGroup == null) {
                            threadGroup2 = new ThreadGroup(threadGroup3, "dynamiteLoader");
                        }
                        int activeCount = threadGroup2.activeCount();
                        Thread[] threadArr = new Thread[activeCount];
                        threadGroup2.enumerate(threadArr);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= activeCount) {
                                zzaVar2 = null;
                                break;
                            }
                            zzaVar2 = threadArr[i2];
                            if ("GmsDynamite".equals(zzaVar2.getName())) {
                                break;
                            }
                            i2++;
                        }
                        zzaVar = zzaVar2;
                    } catch (SecurityException e2) {
                        e = e2;
                        zzaVar2 = null;
                    }
                    if (zzaVar2 == null) {
                        try {
                            zzaVar3 = new zza(threadGroup2, "GmsDynamite");
                        } catch (SecurityException e3) {
                            e = e3;
                        }
                        try {
                            zzaVar3.setContextClassLoader(null);
                            zzaVar3.start();
                            zzaVar2 = zzaVar3;
                        } catch (SecurityException e4) {
                            e = e4;
                            zzaVar2 = zzaVar3;
                            String valueOf = String.valueOf(e.getMessage());
                            Log.w("DynamiteLoaderV2CL", valueOf.length() != 0 ? "Failed to enumerate thread/threadgroup ".concat(valueOf) : new String("Failed to enumerate thread/threadgroup "));
                            zzaVar = zzaVar2;
                            return zzaVar;
                        }
                        zzaVar = zzaVar2;
                    }
                }
                return zzaVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
