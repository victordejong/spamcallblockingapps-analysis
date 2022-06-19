package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwz.class */
public abstract class zzfwz<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable zza = new zzfwy(null);
    private static final Runnable zzb = new zzfwy(null);

    private final void zzc(Thread thread) {
        boolean z;
        Runnable runnable = get();
        zzfww zzfwwVar = null;
        boolean z2 = false;
        int i = 0;
        while (true) {
            int i2 = i;
            if (runnable instanceof zzfww) {
                zzfwwVar = (zzfww) runnable;
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
                LockSupport.park(zzfwwVar);
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
        boolean z = !zzg();
        if (z) {
            try {
                t = zza();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, zza)) {
                    zzc(currentThread);
                }
                zzd(th);
                return;
            }
        }
        if (!compareAndSet(currentThread, zza)) {
            zzc(currentThread);
        }
        if (!z) {
            return;
        }
        zze(t);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == zza) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzfww) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = C0608b.m7625j(new StringBuilder(String.valueOf(name).length() + 21), "running=[RUNNING ON ", name, "]");
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String zzb2 = zzb();
        return C0608b.m7625j(new StringBuilder(C0033h.m8889h(str, 2, String.valueOf(zzb2).length())), str, ", ", zzb2);
    }

    public abstract T zza() throws Exception;

    public abstract String zzb();

    public abstract void zzd(Throwable th);

    public abstract void zze(T t);

    public abstract boolean zzg();

    public final void zzh() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            zzfww zzfwwVar = new zzfww(this, null);
            zzfwwVar.setExclusiveOwnerThread(Thread.currentThread());
            if (!compareAndSet(runnable, zzfwwVar)) {
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
