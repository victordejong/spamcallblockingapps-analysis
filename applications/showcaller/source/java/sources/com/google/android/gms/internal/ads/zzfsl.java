package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsl.class */
public abstract class zzfsl<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: d */
    private static final Runnable f34108d = new p03(null);

    /* renamed from: e */
    private static final Runnable f34109e = new p03(null);

    /* renamed from: a */
    private final void m7859a(Thread thread) {
        boolean z;
        Runnable runnable = get();
        zzfsi zzfsiVar = null;
        boolean z2 = false;
        int i = 0;
        while (true) {
            int i2 = i;
            if (runnable instanceof zzfsi) {
                zzfsiVar = (zzfsi) runnable;
            } else if (runnable != f34109e) {
                break;
            }
            int i3 = i2 + 1;
            if (i3 > 1000) {
                Runnable runnable2 = f34109e;
                if (runnable != runnable2) {
                    z = z2;
                    if (!compareAndSet(runnable, runnable2)) {
                    }
                }
                boolean z3 = Thread.interrupted() || z2;
                LockSupport.park(zzfsiVar);
                z = z3;
            } else {
                Thread.yield();
                z = z2;
            }
            runnable = get();
            z2 = z;
            i = i3;
        }
        if (z2) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        T t = null;
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean z = !zzd();
        if (z) {
            try {
                t = zza();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, f34108d)) {
                    m7859a(currentThread);
                }
                zzg(th);
                return;
            }
        }
        if (!compareAndSet(currentThread, f34108d)) {
            m7859a(currentThread);
        }
        if (!z) {
            return;
        }
        zzf(t);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f34108d) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzfsi) {
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
        StringBuilder sb2 = new StringBuilder(str.length() + 2 + String.valueOf(zzc).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(zzc);
        return sb2.toString();
    }

    abstract T zza();

    abstract String zzc();

    abstract boolean zzd();

    abstract void zzf(T t);

    abstract void zzg(Throwable th);

    public final void zzh() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            zzfsi zzfsiVar = new zzfsi(this, null);
            zzfsl.super.setExclusiveOwnerThread(Thread.currentThread());
            if (!compareAndSet(runnable, zzfsiVar)) {
                return;
            }
            try {
                Thread thread = (Thread) runnable;
                thread.interrupt();
                if (getAndSet(f34108d) != f34109e) {
                    return;
                }
                LockSupport.unpark(thread);
            } catch (Throwable th) {
                if (getAndSet(f34108d) == f34109e) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }
}
