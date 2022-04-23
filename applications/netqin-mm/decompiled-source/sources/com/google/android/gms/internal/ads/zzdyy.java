package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import p131c.p161d.p170b.p224d.p252g.p253a.e20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyy.class */
public abstract class zzdyy<T> extends AtomicReference<Runnable> implements Runnable {
    public static final Runnable zzhti = new e20();
    public static final Runnable zzhtj = new e20();
    public static final Runnable zzhtk = new e20();

    public final void interruptTask() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, zzhtj)) {
            try {
                ((Thread) runnable).interrupt();
                if (getAndSet(zzhti) == zzhtk) {
                    LockSupport.unpark((Thread) runnable);
                }
            } catch (Throwable th) {
                if (getAndSet(zzhti) == zzhtk) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }

    public abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        T zzayd;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    zzayd = zzayd();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, zzhti)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            if (runnable != zzhtj && runnable != zzhtk) {
                                break;
                            }
                            int i2 = i + 1;
                            if (i2 > 1000) {
                                Runnable runnable2 = zzhtk;
                                if (runnable != runnable2) {
                                    z2 = z2;
                                    if (!compareAndSet(zzhtj, runnable2)) {
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
                    if (z) {
                        zzb(null, th);
                        return;
                    }
                    return;
                }
            } else {
                zzayd = null;
            }
            if (!compareAndSet(currentThread, zzhti)) {
                Runnable runnable3 = get();
                boolean z3 = false;
                int i3 = 0;
                while (true) {
                    if (runnable3 != zzhtj && runnable3 != zzhtk) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 > 1000) {
                        Runnable runnable4 = zzhtk;
                        if (runnable3 != runnable4) {
                            z3 = z3;
                            if (!compareAndSet(zzhtj, runnable4)) {
                            }
                        }
                        z3 = Thread.interrupted() || z3;
                        LockSupport.park(this);
                    } else {
                        Thread.yield();
                        z3 = z3;
                    }
                    runnable3 = get();
                    i3 = i4;
                }
                if (z3) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                zzb(zzayd, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == zzhti) {
            str = "running=[DONE]";
        } else if (runnable == zzhtj) {
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
        String zzaye = zzaye();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(zzaye).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(zzaye);
        return sb2.toString();
    }

    public abstract T zzayd() throws Exception;

    public abstract String zzaye();

    public abstract void zzb(T t, Throwable th);
}
