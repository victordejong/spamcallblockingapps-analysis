package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.AbstractC2499g;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.AbstractC2501i;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC2650m;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.p137d.HandlerC3718f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends AbstractC2500h> extends AbstractC2495e<R> {

    /* renamed from: a */
    static final ThreadLocal<Boolean> f7062a = new C2536be();

    /* renamed from: b */
    private final Object f7063b;

    /* renamed from: c */
    private final HandlerC2502a<R> f7064c;

    /* renamed from: d */
    private final WeakReference<AbstractC2492d> f7065d;

    /* renamed from: e */
    private final CountDownLatch f7066e;

    /* renamed from: f */
    private final ArrayList<AbstractC2495e.AbstractC2496a> f7067f;

    /* renamed from: g */
    private AbstractC2501i<? super R> f7068g;

    /* renamed from: h */
    private final AtomicReference<AbstractC2525au> f7069h;

    /* renamed from: i */
    private R f7070i;

    /* renamed from: j */
    private Status f7071j;

    /* renamed from: k */
    private volatile boolean f7072k;

    /* renamed from: l */
    private boolean f7073l;

    /* renamed from: m */
    private boolean f7074m;
    @KeepName
    private C2503b mResultGuardian;

    /* renamed from: n */
    private AbstractC2650m f7075n;

    /* renamed from: o */
    private volatile C2521aq<R> f7076o;

    /* renamed from: p */
    private boolean f7077p;

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public static class HandlerC2502a<R extends AbstractC2500h> extends HandlerC3718f {
        public HandlerC2502a() {
            this(Looper.getMainLooper());
        }

        public HandlerC2502a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m14405a(AbstractC2501i<? super R> abstractC2501i, R r) {
            sendMessage(obtainMessage(1, new Pair(BasePendingResult.m14407c(abstractC2501i), r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    AbstractC2501i abstractC2501i = (AbstractC2501i) pair.first;
                    AbstractC2500h abstractC2500h = (AbstractC2500h) pair.second;
                    try {
                        abstractC2501i.mo14376a(abstractC2500h);
                        return;
                    } catch (RuntimeException e) {
                        BasePendingResult.m14408c(abstractC2500h);
                        throw e;
                    }
                case 2:
                    ((BasePendingResult) message.obj).m14409c(Status.f7032d);
                    return;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    return;
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$b.class */
    public final class C2503b {
        private C2503b() {
            BasePendingResult.this = r4;
        }

        /* synthetic */ C2503b(BasePendingResult basePendingResult, C2536be c2536be) {
            this();
        }

        protected final void finalize() {
            BasePendingResult.m14408c(BasePendingResult.this.f7070i);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f7063b = new Object();
        this.f7066e = new CountDownLatch(1);
        this.f7067f = new ArrayList<>();
        this.f7069h = new AtomicReference<>();
        this.f7077p = false;
        this.f7064c = new HandlerC2502a<>(Looper.getMainLooper());
        this.f7065d = new WeakReference<>(null);
    }

    public BasePendingResult(AbstractC2492d abstractC2492d) {
        this.f7063b = new Object();
        this.f7066e = new CountDownLatch(1);
        this.f7067f = new ArrayList<>();
        this.f7069h = new AtomicReference<>();
        this.f7077p = false;
        this.f7064c = new HandlerC2502a<>(abstractC2492d != null ? abstractC2492d.mo14397b() : Looper.getMainLooper());
        this.f7065d = new WeakReference<>(abstractC2492d);
    }

    /* renamed from: a */
    private final void m14415a(R r) {
        this.f7070i = r;
        this.f7075n = null;
        this.f7066e.countDown();
        this.f7071j = this.f7070i.mo14416b();
        if (this.f7073l) {
            this.f7068g = null;
        } else if (this.f7068g != null) {
            this.f7064c.removeMessages(2);
            this.f7064c.m14405a(this.f7068g, m14406d());
        } else if (this.f7070i instanceof AbstractC2499g) {
            this.mResultGuardian = new C2503b(this, null);
        }
        ArrayList<AbstractC2495e.AbstractC2496a> arrayList = this.f7067f;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            i++;
            arrayList.get(i).mo14140a(this.f7071j);
        }
        this.f7067f.clear();
    }

    /* renamed from: c */
    public static <R extends AbstractC2500h> AbstractC2501i<R> m14407c(AbstractC2501i<R> abstractC2501i) {
        return abstractC2501i;
    }

    /* renamed from: c */
    public static void m14408c(AbstractC2500h abstractC2500h) {
        if (abstractC2500h instanceof AbstractC2499g) {
            try {
                ((AbstractC2499g) abstractC2500h).mo13641a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(abstractC2500h);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    /* renamed from: d */
    private final R m14406d() {
        R r;
        boolean z = true;
        synchronized (this.f7063b) {
            if (this.f7072k) {
                z = false;
            }
            C2662s.m13976a(z, "Result has already been consumed.");
            C2662s.m13976a(m14413b(), "Result is not ready.");
            r = this.f7070i;
            this.f7070i = null;
            this.f7068g = null;
            this.f7072k = true;
        }
        AbstractC2525au andSet = this.f7069h.getAndSet(null);
        if (andSet != null) {
            andSet.m14365a(this);
        }
        return r;
    }

    @Override // com.google.android.gms.common.api.AbstractC2495e
    /* renamed from: a */
    public final R mo14389a(long j, TimeUnit timeUnit) {
        if (j > 0) {
            C2662s.m13971c("await must not be called on the UI thread when time is greater than zero.");
        }
        C2662s.m13976a(!this.f7072k, "Result has already been consumed.");
        C2662s.m13976a(this.f7076o == null, "Cannot await if then() has been called.");
        try {
            if (!this.f7066e.await(j, timeUnit)) {
                m14409c(Status.f7032d);
            }
        } catch (InterruptedException e) {
            m14409c(Status.f7030b);
        }
        C2662s.m13976a(m14413b(), "Result is not ready.");
        return m14406d();
    }

    /* renamed from: a */
    public abstract R mo14232a(Status status);

    @Override // com.google.android.gms.common.api.AbstractC2495e
    /* renamed from: a */
    public final void mo14388a(AbstractC2495e.AbstractC2496a abstractC2496a) {
        C2662s.m13972b(abstractC2496a != null, "Callback cannot be null.");
        synchronized (this.f7063b) {
            if (m14413b()) {
                abstractC2496a.mo14140a(this.f7071j);
            } else {
                this.f7067f.add(abstractC2496a);
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC2495e
    /* renamed from: a */
    public final void mo14387a(AbstractC2501i<? super R> abstractC2501i) {
        synchronized (this.f7063b) {
            if (abstractC2501i == null) {
                this.f7068g = null;
                return;
            }
            C2662s.m13976a(!this.f7072k, "Result has already been consumed.");
            C2662s.m13976a(this.f7076o == null, "Cannot set callbacks if then() has been called.");
            if (mo14390a()) {
                return;
            }
            if (m14413b()) {
                this.f7064c.m14405a(abstractC2501i, m14406d());
            } else {
                this.f7068g = abstractC2501i;
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC2495e
    /* renamed from: a */
    public boolean mo14390a() {
        boolean z;
        synchronized (this.f7063b) {
            z = this.f7073l;
        }
        return z;
    }

    /* renamed from: b */
    public final void m14412b(R r) {
        synchronized (this.f7063b) {
            if (this.f7074m || this.f7073l) {
                m14408c(r);
                return;
            }
            if (m14413b()) {
            }
            C2662s.m13976a(!m14413b(), "Results have already been set");
            C2662s.m13976a(!this.f7072k, "Result has already been consumed");
            m14415a((BasePendingResult<R>) r);
        }
    }

    /* renamed from: b */
    public final boolean m14413b() {
        return this.f7066e.getCount() == 0;
    }

    /* renamed from: c */
    public final void m14410c() {
        this.f7077p = this.f7077p || f7062a.get().booleanValue();
    }

    /* renamed from: c */
    public final void m14409c(Status status) {
        synchronized (this.f7063b) {
            if (!m14413b()) {
                m14412b((BasePendingResult<R>) mo14232a(status));
                this.f7074m = true;
            }
        }
    }
}
