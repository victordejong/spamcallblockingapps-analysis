package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzs.class */
abstract class zzdzs<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable zziaq = new zzdzt();
    private static final Runnable zziar = new zzdzt();
    private static final Runnable zzias = new zzdzt();

    public final void interruptTask() {
        Runnable runnable = get();
        if (!(runnable instanceof Thread) || !compareAndSet(runnable, zziar)) {
            return;
        }
        try {
            ((Thread) runnable).interrupt();
            if (getAndSet(zziaq) != zzias) {
                return;
            }
            LockSupport.unpark((Thread) runnable);
        } catch (Throwable th) {
            if (getAndSet(zziaq) == zzias) {
                LockSupport.unpark((Thread) runnable);
            }
            throw th;
        }
    }

    abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        T zzbab;
        boolean z2;
        Thread currentThread = Thread.currentThread();
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean z3 = !isDone();
        if (z3) {
            try {
                zzbab = zzbab();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, zziaq)) {
                    Runnable runnable = get();
                    boolean z4 = false;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        Runnable runnable2 = zziar;
                        if (runnable != runnable2 && runnable != zzias) {
                            break;
                        }
                        int i3 = i2 + 1;
                        if (i3 > 1000) {
                            Runnable runnable3 = zzias;
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
                if (!z3) {
                    return;
                }
                zzb(null, th);
                return;
            }
        } else {
            zzbab = null;
        }
        if (!compareAndSet(currentThread, zziaq)) {
            Runnable runnable4 = get();
            boolean z6 = false;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                Runnable runnable5 = zziar;
                if (runnable4 != runnable5 && runnable4 != zzias) {
                    break;
                }
                int i6 = i5 + 1;
                if (i6 > 1000) {
                    Runnable runnable6 = zzias;
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
        zzb(zzbab, null);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == zziaq) {
            str = "running=[DONE]";
        } else if (runnable == zziar) {
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
        String zzbac = zzbac();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(zzbac).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(zzbac);
        return sb2.toString();
    }

    abstract void zzb(@NullableDecl T t, @NullableDecl Throwable th);

    abstract T zzbab() throws Exception;

    abstract String zzbac();
}
