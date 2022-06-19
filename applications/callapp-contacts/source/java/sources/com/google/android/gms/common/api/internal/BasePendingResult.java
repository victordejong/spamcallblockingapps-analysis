package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.AbstractC11924l;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.AbstractC11926n;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC12038j;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.base.HandlerC13160j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends AbstractC11925m> extends AbstractC11921j<R> {

    /* renamed from: c */
    static final ThreadLocal<Boolean> f39195c = new C11882bw();

    /* renamed from: f */
    public static final /* synthetic */ int f39196f = 0;

    /* renamed from: a */
    private final Object f39197a;

    /* renamed from: b */
    private final CountDownLatch f39198b;

    /* renamed from: d */
    protected final HandlerC11831a<R> f39199d;

    /* renamed from: e */
    protected final WeakReference<AbstractC11826g> f39200e;

    /* renamed from: g */
    private final ArrayList<AbstractC11921j.AbstractC11922a> f39201g;

    /* renamed from: h */
    private AbstractC11926n<? super R> f39202h;

    /* renamed from: i */
    private final AtomicReference<C11869bj> f39203i;

    /* renamed from: j */
    private R f39204j;

    /* renamed from: k */
    private Status f39205k;

    /* renamed from: l */
    private volatile boolean f39206l;

    /* renamed from: m */
    private boolean f39207m;
    private C11883bx mResultGuardian;

    /* renamed from: n */
    private boolean f39208n;

    /* renamed from: o */
    private AbstractC12038j f39209o;

    /* renamed from: p */
    private volatile C11868bi<R> f39210p;

    /* renamed from: q */
    private boolean f39211q;

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public static final class HandlerC11831a<R extends AbstractC11925m> extends HandlerC13160j {
        public HandlerC11831a() {
            super(Looper.getMainLooper());
        }

        public HandlerC11831a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m19431a(AbstractC11926n<? super R> abstractC11926n, R r) {
            int i = BasePendingResult.f39196f;
            sendMessage(obtainMessage(1, new Pair((AbstractC11926n) C12045o.m19162a(abstractC11926n), r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                AbstractC11926n abstractC11926n = (AbstractC11926n) pair.first;
                AbstractC11925m abstractC11925m = (AbstractC11925m) pair.second;
                try {
                    abstractC11926n.mo19289a(abstractC11925m);
                } catch (RuntimeException e) {
                    BasePendingResult.m19436b(abstractC11925m);
                    throw e;
                }
            } else if (i == 2) {
                ((BasePendingResult) message.obj).m19434c(Status.RESULT_TIMEOUT);
            } else {
                int i2 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            }
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f39197a = new Object();
        this.f39198b = new CountDownLatch(1);
        this.f39201g = new ArrayList<>();
        this.f39203i = new AtomicReference<>();
        this.f39211q = false;
        this.f39199d = new HandlerC11831a<>(Looper.getMainLooper());
        this.f39200e = new WeakReference<>(null);
    }

    @Deprecated
    public BasePendingResult(Looper looper) {
        this.f39197a = new Object();
        this.f39198b = new CountDownLatch(1);
        this.f39201g = new ArrayList<>();
        this.f39203i = new AtomicReference<>();
        this.f39211q = false;
        this.f39199d = new HandlerC11831a<>(looper);
        this.f39200e = new WeakReference<>(null);
    }

    public BasePendingResult(AbstractC11826g abstractC11826g) {
        this.f39197a = new Object();
        this.f39198b = new CountDownLatch(1);
        this.f39201g = new ArrayList<>();
        this.f39203i = new AtomicReference<>();
        this.f39211q = false;
        this.f39199d = new HandlerC11831a<>(abstractC11826g != null ? abstractC11826g.mo19403c() : Looper.getMainLooper());
        this.f39200e = new WeakReference<>(abstractC11826g);
    }

    public BasePendingResult(HandlerC11831a<R> handlerC11831a) {
        this.f39197a = new Object();
        this.f39198b = new CountDownLatch(1);
        this.f39201g = new ArrayList<>();
        this.f39203i = new AtomicReference<>();
        this.f39211q = false;
        this.f39199d = (HandlerC11831a) C12045o.m19161a(handlerC11831a, "CallbackHandler must not be null");
        this.f39200e = new WeakReference<>(null);
    }

    /* renamed from: b */
    public static void m19436b(AbstractC11925m abstractC11925m) {
        if (abstractC11925m instanceof AbstractC11924l) {
            try {
                ((AbstractC11924l) abstractC11925m).mo11351a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(abstractC11925m);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    /* renamed from: b */
    private boolean m19437b() {
        return this.f39198b.getCount() == 0;
    }

    /* renamed from: c */
    private final void m19433c(R r) {
        this.f39204j = r;
        this.f39205k = r.getStatus();
        this.f39209o = null;
        this.f39198b.countDown();
        if (this.f39207m) {
            this.f39202h = null;
        } else {
            AbstractC11926n<? super R> abstractC11926n = this.f39202h;
            if (abstractC11926n != null) {
                this.f39199d.removeMessages(2);
                this.f39199d.m19431a(abstractC11926n, m19432d());
            } else if (this.f39204j instanceof AbstractC11924l) {
                this.mResultGuardian = new C11883bx(this, null);
            }
        }
        ArrayList<AbstractC11921j.AbstractC11922a> arrayList = this.f39201g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo19222a(this.f39205k);
        }
        this.f39201g.clear();
    }

    /* renamed from: c */
    private boolean m19435c() {
        boolean z;
        synchronized (this.f39197a) {
            z = this.f39207m;
        }
        return z;
    }

    /* renamed from: d */
    private final R m19432d() {
        R r;
        synchronized (this.f39197a) {
            C12045o.m19157a(!this.f39206l, "Result has already been consumed.");
            C12045o.m19157a(m19437b(), "Result is not ready.");
            r = this.f39204j;
            this.f39204j = null;
            this.f39202h = null;
            this.f39206l = true;
        }
        C11869bj andSet = this.f39203i.getAndSet(null);
        if (andSet != null) {
            andSet.f39294a.f39296b.remove(this);
        }
        return (R) C12045o.m19162a(r);
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final R mo19293a(long j, TimeUnit timeUnit) {
        if (j > 0) {
            C12045o.m19152c("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        C12045o.m19157a(!this.f39206l, "Result has already been consumed.");
        if (this.f39210p != null) {
            z = false;
        }
        C12045o.m19157a(z, "Cannot await if then() has been called.");
        try {
            if (!this.f39198b.await(j, timeUnit)) {
                m19434c(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException e) {
            m19434c(Status.RESULT_INTERRUPTED);
        }
        C12045o.m19157a(m19437b(), "Result is not ready.");
        return m19432d();
    }

    /* renamed from: a */
    public abstract R mo11354a(Status status);

    /* renamed from: a */
    public final void m19440a() {
        boolean z = true;
        if (!this.f39211q) {
            z = f39195c.get().booleanValue();
        }
        this.f39211q = z;
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final void mo19292a(AbstractC11921j.AbstractC11922a abstractC11922a) {
        C12045o.m19153b(abstractC11922a != null, "Callback cannot be null.");
        synchronized (this.f39197a) {
            if (m19437b()) {
                abstractC11922a.mo19222a(this.f39205k);
            } else {
                this.f39201g.add(abstractC11922a);
            }
        }
    }

    /* renamed from: a */
    public final void m19438a(R r) {
        synchronized (this.f39197a) {
            if (this.f39208n || this.f39207m) {
                m19436b(r);
                return;
            }
            m19437b();
            C12045o.m19157a(!m19437b(), "Results have already been set");
            C12045o.m19157a(!this.f39206l, "Result has already been consumed");
            m19433c((BasePendingResult<R>) r);
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final void mo19291a(AbstractC11926n<? super R> abstractC11926n) {
        synchronized (this.f39197a) {
            if (abstractC11926n == null) {
                this.f39202h = null;
                return;
            }
            boolean z = true;
            C12045o.m19157a(!this.f39206l, "Result has already been consumed.");
            if (this.f39210p != null) {
                z = false;
            }
            C12045o.m19157a(z, "Cannot set callbacks if then() has been called.");
            if (m19435c()) {
                return;
            }
            if (m19437b()) {
                this.f39199d.m19431a(abstractC11926n, m19432d());
            } else {
                this.f39202h = abstractC11926n;
            }
        }
    }

    @Deprecated
    /* renamed from: c */
    public final void m19434c(Status status) {
        synchronized (this.f39197a) {
            if (!m19437b()) {
                m19438a((BasePendingResult<R>) mo11354a(status));
                this.f39208n = true;
            }
        }
    }
}
