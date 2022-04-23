package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbp.class */
abstract class dbp<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Runnable f26704a = new dbq();

    /* renamed from: b  reason: collision with root package name */
    private static final Runnable f26705b = new dbq();

    /* renamed from: c  reason: collision with root package name */
    private static final Runnable f26706c = new dbq();

    abstract void a(T t, Throwable th);

    abstract boolean a();

    abstract T c() throws Exception;

    abstract String d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f26705b)) {
            try {
                ((Thread) runnable).interrupt();
                if (getAndSet(f26704a) == f26706c) {
                    LockSupport.unpark((Thread) runnable);
                }
            } catch (Throwable th) {
                if (getAndSet(f26704a) == f26706c) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        T c2;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !a();
            if (z) {
                try {
                    c2 = c();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, f26704a)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            Runnable runnable2 = f26705b;
                            if (runnable != runnable2 && runnable != f26706c) {
                                break;
                            }
                            int i2 = i + 1;
                            if (i2 > 1000) {
                                Runnable runnable3 = f26706c;
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
                    if (z) {
                        a(null, th);
                        return;
                    }
                    return;
                }
            } else {
                c2 = null;
            }
            if (!compareAndSet(currentThread, f26704a)) {
                Runnable runnable4 = get();
                boolean z3 = false;
                int i3 = 0;
                while (true) {
                    Runnable runnable5 = f26705b;
                    if (runnable4 != runnable5 && runnable4 != f26706c) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 > 1000) {
                        Runnable runnable6 = f26706c;
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
                a(c2, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f26704a) {
            str = "running=[DONE]";
        } else if (runnable == f26705b) {
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
        String d2 = d();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(d2).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(d2);
        return sb2.toString();
    }
}
