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
        boolean z;
        T zza;
        boolean z2;
        Thread currentThread = Thread.currentThread();
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean z3 = !zzd();
        if (z3) {
            try {
                zza = zza();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, f9575b)) {
                    Runnable runnable = get();
                    boolean z4 = false;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        Runnable runnable2 = f9576c;
                        if (runnable != runnable2 && runnable != f9577d) {
                            break;
                        }
                        int i3 = i2 + 1;
                        if (i3 > 1000) {
                            Runnable runnable3 = f9577d;
                            if (runnable != runnable3) {
                                z = z4;
                                if (!compareAndSet(runnable2, runnable3)) {
                                }
                            }
                            boolean z5 = Thread.interrupted() || z4;
                            LockSupport.park(this);
                            z = z5;
                        } else {
                            Thread.yield();
                            z = z4;
                        }
                        runnable = get();
                        z4 = z;
                        i = i3;
                    }
                    if (z4) {
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
            boolean z6 = false;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                Runnable runnable5 = f9576c;
                if (runnable4 != runnable5 && runnable4 != f9577d) {
                    break;
                }
                int i6 = i5 + 1;
                if (i6 > 1000) {
                    Runnable runnable6 = f9577d;
                    if (runnable4 != runnable6) {
                        z2 = z6;
                        if (!compareAndSet(runnable5, runnable6)) {
                        }
                    }
                    boolean z7 = Thread.interrupted() || z6;
                    LockSupport.park(this);
                    z2 = z7;
                } else {
                    Thread.yield();
                    z2 = z6;
                }
                runnable4 = get();
                z6 = z2;
                i4 = i6;
            }
            if (z6) {
                currentThread.interrupt();
            }
        }
        if (!z3) {
            return;
        }
        zzf(zza, null);
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
        if (!(runnable instanceof Thread) || !compareAndSet(runnable, f9576c)) {
            return;
        }
        try {
            Thread thread = (Thread) runnable;
            thread.interrupt();
            if (getAndSet(f9575b) != f9577d) {
                return;
            }
            LockSupport.unpark(thread);
        } catch (Throwable th) {
            if (getAndSet(f9575b) == f9577d) {
                LockSupport.unpark((Thread) runnable);
            }
            throw th;
        }
    }
}
