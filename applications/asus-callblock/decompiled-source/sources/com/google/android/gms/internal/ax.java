package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ax.class */
public abstract class ax<R extends e> extends c<R> {

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<Boolean> f4131a = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.ax.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ Boolean initialValue() {
            return false;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    protected final a<R> f4132b;
    protected final WeakReference<com.google.android.gms.common.api.b> c;
    private final Object d;
    private final CountDownLatch e;
    private final ArrayList<Object> f;
    private f<? super R> g;
    private R h;
    private b i;
    private volatile boolean j;
    private boolean k;
    private boolean l;
    private w m;
    private volatile be<R> n;
    private boolean o;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ax$a.class */
    public static final class a<R extends e> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public final void a(f<? super R> fVar, R r) {
            sendMessage(obtainMessage(1, new Pair(fVar, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    f fVar = (f) pair.first;
                    e eVar = (e) pair.second;
                    try {
                        fVar.a(eVar);
                        return;
                    } catch (RuntimeException e) {
                        ax.b(eVar);
                        throw e;
                    }
                case 2:
                    ((ax) message.obj).b(Status.d);
                    return;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ax$b.class */
    public final class b {
        private b() {
        }

        /* synthetic */ b(ax axVar, byte b2) {
            this();
        }

        protected final void finalize() {
            ax.b(ax.this.h);
            super.finalize();
        }
    }

    @Deprecated
    ax() {
        this.d = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.o = false;
        this.f4132b = new a<>(Looper.getMainLooper());
        this.c = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public ax(Looper looper) {
        this.d = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.o = false;
        this.f4132b = new a<>(looper);
        this.c = new WeakReference<>(null);
    }

    private boolean a() {
        boolean z;
        synchronized (this.d) {
            z = this.k;
        }
        return z;
    }

    public static void b(e eVar) {
        if (eVar instanceof d) {
            try {
                ((d) eVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(eVar);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private void c(R r) {
        this.h = r;
        this.m = null;
        this.e.countDown();
        this.h.b();
        if (this.k) {
            this.g = null;
        } else if (this.g != null) {
            this.f4132b.removeMessages(2);
            this.f4132b.a(this.g, e());
        } else if (this.h instanceof d) {
            this.i = new b(this, (byte) 0);
        }
        Iterator<Object> it = this.f.iterator();
        while (it.hasNext()) {
            it.next();
        }
        this.f.clear();
    }

    private R e() {
        R r;
        boolean z = true;
        synchronized (this.d) {
            if (this.j) {
                z = false;
            }
            com.google.android.gms.common.internal.b.a(z, "Result has already been consumed.");
            com.google.android.gms.common.internal.b.a(b(), "Result is not ready.");
            r = this.h;
            this.h = null;
            this.g = null;
            this.j = true;
        }
        return r;
    }

    public abstract R a(Status status);

    @Override // com.google.android.gms.common.api.c
    public final R a(TimeUnit timeUnit) {
        boolean z = true;
        com.google.android.gms.common.internal.b.a(1000 <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        com.google.android.gms.common.internal.b.a(!this.j, "Result has already been consumed.");
        if (this.n != null) {
            z = false;
        }
        com.google.android.gms.common.internal.b.a(z, "Cannot await if then() has been called.");
        try {
            if (!this.e.await(1000L, timeUnit)) {
                b(Status.d);
            }
        } catch (InterruptedException e) {
            b(Status.f3946b);
        }
        com.google.android.gms.common.internal.b.a(b(), "Result is not ready.");
        return e();
    }

    public final void a(R r) {
        boolean z = true;
        synchronized (this.d) {
            if (this.l || this.k) {
                b(r);
                return;
            }
            if (b()) {
            }
            com.google.android.gms.common.internal.b.a(!b(), "Results have already been set");
            if (this.j) {
                z = false;
            }
            com.google.android.gms.common.internal.b.a(z, "Result has already been consumed");
            c(r);
        }
    }

    @Override // com.google.android.gms.common.api.c
    public final void a(f<? super R> fVar) {
        boolean z = true;
        synchronized (this.d) {
            if (fVar == null) {
                this.g = null;
                return;
            }
            com.google.android.gms.common.internal.b.a(!this.j, "Result has already been consumed.");
            if (this.n != null) {
                z = false;
            }
            com.google.android.gms.common.internal.b.a(z, "Cannot set callbacks if then() has been called.");
            if (!a()) {
                if (b()) {
                    this.f4132b.a(fVar, e());
                } else {
                    this.g = fVar;
                }
            }
        }
    }

    public final void b(Status status) {
        synchronized (this.d) {
            if (!b()) {
                a((ax<R>) a(status));
                this.l = true;
            }
        }
    }

    public final boolean b() {
        return this.e.getCount() == 0;
    }

    public final void c() {
        synchronized (this.d) {
            if (!this.k && !this.j) {
                b(this.h);
                this.k = true;
                c(a(Status.e));
            }
        }
    }

    public final boolean d() {
        boolean a2;
        synchronized (this.d) {
            if (this.c.get() == null || !this.o) {
                c();
            }
            a2 = a();
        }
        return a2;
    }
}
