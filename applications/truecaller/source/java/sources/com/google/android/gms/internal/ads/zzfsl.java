package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsl.class */
public abstract class zzfsl<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable zza = new zzfsj(null);
    private static final Runnable zzb = new zzfsj(null);

    private final void zzb(Thread thread) {
        boolean z;
        Runnable runnable = get();
        zzfsi zzfsiVar = null;
        boolean z2 = false;
        int i = 0;
        while (true) {
            int i2 = i;
            if (runnable instanceof zzfsi) {
                zzfsiVar = (zzfsi) runnable;
            } else if (runnable != zzb) {
                break;
            }
            int i3 = i2 + 1;
            if (i3 > 1000) {
                Runnable runnable2 = zzb;
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
                if (!compareAndSet(currentThread, zza)) {
                    zzb(currentThread);
                }
                zzg(th);
                return;
            }
        }
        if (!compareAndSet(currentThread, zza)) {
            zzb(currentThread);
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
        if (runnable == zza) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzfsi) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = C22128a.m8610j(new StringBuilder(String.valueOf(name).length() + 21), "running=[RUNNING ON ", name, "]");
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String zzc = zzc();
        return C22128a.m8610j(new StringBuilder(str.length() + 2 + String.valueOf(zzc).length()), str, ", ", zzc);
    }

    public abstract T zza() throws Exception;

    public abstract String zzc();

    public abstract boolean zzd();

    public abstract void zzf(T t);

    public abstract void zzg(Throwable th);

    public final void zzh() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            zzfsi zzfsiVar = new zzfsi(this, null);
            zzfsiVar.setExclusiveOwnerThread(Thread.currentThread());
            if (!compareAndSet(runnable, zzfsiVar)) {
                return;
            }
            try {
                Thread thread = (Thread) runnable;
                thread.interrupt();
                if (getAndSet(zza) != zzb) {
                    return;
                }
                LockSupport.unpark(thread);
            } catch (Throwable th) {
                if (getAndSet(zza) == zzb) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }
}
