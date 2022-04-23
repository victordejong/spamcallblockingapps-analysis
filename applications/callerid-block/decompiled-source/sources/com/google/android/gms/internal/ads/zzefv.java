package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefv.class */
abstract class zzefv<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: b */
    private static final Runnable f9575b = new qz1(null);

    /* renamed from: c */
    private static final Runnable f9576c = new qz1(null);

    /* renamed from: d */
    private static final Runnable f9577d = new qz1(null);

    zzefv() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        T zza;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !zzd();
            if (z) {
                try {
                    zza = zza();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, f9575b)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            Runnable runnable2 = f9576c;
                            if (runnable != runnable2 && runnable != f9577d) {
                                break;
                            }
                            int i2 = i + 1;
                            if (i2 > 1000) {
                                Runnable runnable3 = f9577d;
                                if (runnable != runnable3) {
                                    z2 = z2;
                                    if (!compareAndSet(runnable2, runnable3)) {
                                    }
                                }
                                z2 = Thread.interrupted() || z2;
                                LockSupport.park(this);
                            } else {
                                Thread.yield();
                                z2 = z2;
                            }
                            runnable = get();
                            i = i2;
                        }
                        if (z2) {
                            currentThread.interrupt();
                        }
                    }
                    zzf(null, th);
                    return;
                }
            } else {
                zza = null;
            }
            if (!compareAndSet(currentThread, f9575b)) {
                Runnable runnable4 = get();
                boolean z3 = false;
                int i3 = 0;
                while (true) {
                    Runnable runnable5 = f9576c;
                    if (runnable4 != runnable5 && runnable4 != f9577d) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 > 1000) {
                        Runnable runnable6 = f9577d;
                        if (runnable4 != runnable6) {
                            z3 = z3;
                            if (!compareAndSet(runnable5, runnable6)) {
                            }
                        }
                        z3 = Thread.interrupted() || z3;
                        LockSupport.park(this);
                    } else {
                        Thread.yield();
                        z3 = z3;
                    }
                    runnable4 = get();
                    i3 = i4;
                }
                if (z3) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                zzf(zza, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f9575b) {
            str = "running=[DONE]";
        } else if (runnable == f9576c) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            str = sb.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String zzc = zzc();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(zzc).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(zzc);
        return sb2.toString();
    }

    abstract T zza();

    abstract String zzc();

    abstract boolean zzd();

    abstract void zzf(@NullableDecl T t, @NullableDecl Throwable th);

    final void zzg() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f9576c)) {
            try {
                Thread thread = (Thread) runnable;
                thread.interrupt();
                if (getAndSet(f9575b) == f9577d) {
                    LockSupport.unpark(thread);
                }
            } catch (Throwable th) {
                if (getAndSet(f9575b) == f9577d) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }
}
