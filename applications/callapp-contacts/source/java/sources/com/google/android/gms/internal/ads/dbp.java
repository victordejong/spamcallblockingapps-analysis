package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbp.class */
abstract class dbp<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a */
    private static final Runnable f46923a = new dbq();

    /* renamed from: b */
    private static final Runnable f46924b = new dbq();

    /* renamed from: c */
    private static final Runnable f46925c = new dbq();

    /* renamed from: a */
    abstract void mo16874a(T t, Throwable th);

    /* renamed from: a */
    abstract boolean mo16875a();

    /* renamed from: c */
    abstract T mo16873c() throws Exception;

    /* renamed from: d */
    abstract String mo16872d();

    /* renamed from: e */
    public final void m16892e() {
        Runnable runnable = get();
        if (!(runnable instanceof Thread) || !compareAndSet(runnable, f46924b)) {
            return;
        }
        try {
            ((Thread) runnable).interrupt();
            if (getAndSet(f46923a) != f46925c) {
                return;
            }
            LockSupport.unpark((Thread) runnable);
        } catch (Throwable th) {
            if (getAndSet(f46923a) == f46925c) {
                LockSupport.unpark((Thread) runnable);
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        T mo16873c;
        boolean z2;
        Thread currentThread = Thread.currentThread();
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean z3 = !mo16875a();
        if (z3) {
            try {
                mo16873c = mo16873c();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, f46923a)) {
                    Runnable runnable = get();
                    boolean z4 = false;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        Runnable runnable2 = f46924b;
                        if (runnable != runnable2 && runnable != f46925c) {
                            break;
                        }
                        int i3 = i2 + 1;
                        if (i3 > 1000) {
                            Runnable runnable3 = f46925c;
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
                mo16874a(null, th);
                return;
            }
        } else {
            mo16873c = null;
        }
        if (!compareAndSet(currentThread, f46923a)) {
            Runnable runnable4 = get();
            boolean z6 = false;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                Runnable runnable5 = f46924b;
                if (runnable4 != runnable5 && runnable4 != f46925c) {
                    break;
                }
                int i6 = i5 + 1;
                if (i6 > 1000) {
                    Runnable runnable6 = f46925c;
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
        mo16874a(mo16873c, null);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f46923a) {
            str = "running=[DONE]";
        } else if (runnable == f46924b) {
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
        String mo16872d = mo16872d();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(mo16872d).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(mo16872d);
        return sb2.toString();
    }
}
