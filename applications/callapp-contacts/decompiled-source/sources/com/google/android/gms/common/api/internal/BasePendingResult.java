package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.internal.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends m> extends j<R> {

    /* renamed from: c  reason: collision with root package name */
    static final ThreadLocal<Boolean> f22623c = new bw();
    public static final /* synthetic */ int f = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Object f22624a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f22625b;

    /* renamed from: d  reason: collision with root package name */
    protected final a<R> f22626d;
    protected final WeakReference<g> e;
    private final ArrayList<j.a> g;
    private n<? super R> h;
    private final AtomicReference<bj> i;
    private R j;
    private Status k;
    private volatile boolean l;
    private boolean m;
    private bx mResultGuardian;
    private boolean n;
    private com.google.android.gms.common.internal.j o;
    private volatile bi<R> p;
    private boolean q;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public static final class a<R extends m> extends com.google.android.gms.internal.base.j {
        public a() {
            super(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public final void a(n<? super R> nVar, R r) {
            int i = BasePendingResult.f;
            sendMessage(obtainMessage(1, new Pair((n) o.a(nVar), r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                n nVar = (n) pair.first;
                m mVar = (m) pair.second;
                try {
                    nVar.a(mVar);
                } catch (RuntimeException e) {
                    BasePendingResult.b(mVar);
                    throw e;
                }
            } else if (i != 2) {
                int i2 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).c(Status.RESULT_TIMEOUT);
            }
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f22624a = new Object();
        this.f22625b = new CountDownLatch(1);
        this.g = new ArrayList<>();
        this.i = new AtomicReference<>();
        this.q = false;
        this.f22626d = new a<>(Looper.getMainLooper());
        this.e = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public BasePendingResult(Looper looper) {
        this.f22624a = new Object();
        this.f22625b = new CountDownLatch(1);
        this.g = new ArrayList<>();
        this.i = new AtomicReference<>();
        this.q = false;
        this.f22626d = new a<>(looper);
        this.e = new WeakReference<>(null);
    }

    public BasePendingResult(g gVar) {
        this.f22624a = new Object();
        this.f22625b = new CountDownLatch(1);
        this.g = new ArrayList<>();
        this.i = new AtomicReference<>();
        this.q = false;
        this.f22626d = new a<>(gVar != null ? gVar.c() : Looper.getMainLooper());
        this.e = new WeakReference<>(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasePendingResult(a<R> aVar) {
        this.f22624a = new Object();
        this.f22625b = new CountDownLatch(1);
        this.g = new ArrayList<>();
        this.i = new AtomicReference<>();
        this.q = false;
        this.f22626d = (a) o.a(aVar, "CallbackHandler must not be null");
        this.e = new WeakReference<>(null);
    }

    public static void b(m mVar) {
        if (mVar instanceof l) {
            try {
                ((l) mVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(mVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    private boolean b() {
        return this.f22625b.getCount() == 0;
    }

    private final void c(R r) {
        this.j = r;
        this.k = r.getStatus();
        this.o = null;
        this.f22625b.countDown();
        if (this.m) {
            this.h = null;
        } else {
            n<? super R> nVar = this.h;
            if (nVar != null) {
                this.f22626d.removeMessages(2);
                this.f22626d.a(nVar, d());
            } else if (this.j instanceof l) {
                this.mResultGuardian = new bx(this, null);
            }
        }
        ArrayList<j.a> arrayList = this.g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).a(this.k);
        }
        this.g.clear();
    }

    private boolean c() {
        boolean z;
        synchronized (this.f22624a) {
            z = this.m;
        }
        return z;
    }

    private final R d() {
        R r;
        synchronized (this.f22624a) {
            o.a(!this.l, "Result has already been consumed.");
            o.a(b(), "Result is not ready.");
            r = this.j;
            this.j = null;
            this.h = null;
            this.l = true;
        }
        bj andSet = this.i.getAndSet(null);
        if (andSet != null) {
            andSet.f22688a.f22690b.remove(this);
        }
        return (R) ((m) o.a(r));
    }

    @Override // com.google.android.gms.common.api.j
    public final R a(long j, TimeUnit timeUnit) {
        if (j > 0) {
            o.c("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        o.a(!this.l, "Result has already been consumed.");
        if (this.p != null) {
            z = false;
        }
        o.a(z, "Cannot await if then() has been called.");
        try {
            if (!this.f22625b.await(j, timeUnit)) {
                c(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException e) {
            c(Status.RESULT_INTERRUPTED);
        }
        o.a(b(), "Result is not ready.");
        return d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract R a(Status status);

    public final void a() {
        boolean z = true;
        if (!this.q) {
            z = f22623c.get().booleanValue();
        }
        this.q = z;
    }

    @Override // com.google.android.gms.common.api.j
    public final void a(j.a aVar) {
        o.b(aVar != null, "Callback cannot be null.");
        synchronized (this.f22624a) {
            if (b()) {
                aVar.a(this.k);
            } else {
                this.g.add(aVar);
            }
        }
    }

    public final void a(R r) {
        synchronized (this.f22624a) {
            if (this.n || this.m) {
                b(r);
                return;
            }
            b();
            o.a(!b(), "Results have already been set");
            o.a(!this.l, "Result has already been consumed");
            c((BasePendingResult<R>) r);
        }
    }

    @Override // com.google.android.gms.common.api.j
    public final void a(n<? super R> nVar) {
        synchronized (this.f22624a) {
            if (nVar == null) {
                this.h = null;
                return;
            }
            boolean z = true;
            o.a(!this.l, "Result has already been consumed.");
            if (this.p != null) {
                z = false;
            }
            o.a(z, "Cannot set callbacks if then() has been called.");
            if (!c()) {
                if (b()) {
                    this.f22626d.a(nVar, d());
                } else {
                    this.h = nVar;
                }
            }
        }
    }

    @Deprecated
    public final void c(Status status) {
        synchronized (this.f22624a) {
            if (!b()) {
                a((BasePendingResult<R>) a(status));
                this.n = true;
            }
        }
    }
}
