package com.google.android.gms.dynamite;

import android.os.Looper;
import p193e.p1577m.p1578a.p1642f.p1661g.C25002a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/zzb.class */
public final class zzb {

    /* renamed from: a */
    public static volatile ClassLoader f6193a;

    /* renamed from: b */
    public static volatile Thread f6194b;

    /* renamed from: a */
    public static ClassLoader m38730a() {
        ClassLoader classLoader;
        synchronized (zzb.class) {
            try {
                if (f6193a == null) {
                    f6193a = m38729b();
                }
                classLoader = f6193a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return classLoader;
    }

    /* renamed from: b */
    public static ClassLoader m38729b() {
        synchronized (zzb.class) {
            try {
                ClassLoader classLoader = null;
                if (f6194b == null) {
                    f6194b = m38728c();
                    if (f6194b == null) {
                        return null;
                    }
                }
                synchronized (f6194b) {
                    try {
                        classLoader = f6194b.getContextClassLoader();
                    } catch (SecurityException e) {
                        String valueOf = String.valueOf(e.getMessage());
                        if (valueOf.length() != 0) {
                            "Failed to get thread context classloader ".concat(valueOf);
                        } else {
                            new String("Failed to get thread context classloader ");
                        }
                    }
                }
                return classLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static Thread m38728c() {
        C25002a c25002a;
        C25002a c25002a2;
        SecurityException e;
        ThreadGroup threadGroup;
        ThreadGroup threadGroup2;
        C25002a c25002a3;
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
                                c25002a2 = null;
                                break;
                            }
                            c25002a2 = threadArr[i2];
                            if ("GmsDynamite".equals(c25002a2.getName())) {
                                break;
                            }
                            i2++;
                        }
                        c25002a = c25002a2;
                    } catch (SecurityException e2) {
                        e = e2;
                        c25002a2 = null;
                    }
                    if (c25002a2 == null) {
                        try {
                            c25002a3 = new C25002a(threadGroup2);
                        } catch (SecurityException e3) {
                            e = e3;
                        }
                        try {
                            c25002a3.setContextClassLoader(null);
                            c25002a3.start();
                            c25002a2 = c25002a3;
                        } catch (SecurityException e4) {
                            e = e4;
                            c25002a2 = c25002a3;
                            String valueOf = String.valueOf(e.getMessage());
                            if (valueOf.length() != 0) {
                                "Failed to enumerate thread/threadgroup ".concat(valueOf);
                            } else {
                                new String("Failed to enumerate thread/threadgroup ");
                            }
                            c25002a = c25002a2;
                            return c25002a;
                        }
                        c25002a = c25002a2;
                    }
                }
                return c25002a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
