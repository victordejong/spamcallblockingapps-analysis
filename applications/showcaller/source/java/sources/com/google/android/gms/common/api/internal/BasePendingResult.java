package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.AbstractC6006h;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.AbstractC6077j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC6138j;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.base.HandlerC7287f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends AbstractC6007i> extends AbstractC6003f<R> {

    /* renamed from: a */
    static final ThreadLocal<Boolean> f19199a = new C6033h1();

    /* renamed from: b */
    public static final /* synthetic */ int f19200b = 0;

    /* renamed from: c */
    private final Object f19201c;
    @RecentlyNonNull

    /* renamed from: d */
    protected final HandlerC6008a<R> f19202d;
    @RecentlyNonNull

    /* renamed from: e */
    protected final WeakReference<AbstractC5999d> f19203e;

    /* renamed from: f */
    private final CountDownLatch f19204f;

    /* renamed from: g */
    private final ArrayList<AbstractC6003f.AbstractC6004a> f19205g;

    /* renamed from: h */
    private AbstractC6077j<? super R> f19206h;

    /* renamed from: i */
    private final AtomicReference<C6070w0> f19207i;

    /* renamed from: j */
    private R f19208j;

    /* renamed from: k */
    private Status f19209k;

    /* renamed from: l */
    private volatile boolean f19210l;

    /* renamed from: m */
    private boolean f19211m;
    @KeepName
    private C6036i1 mResultGuardian;

    /* renamed from: n */
    private boolean f19212n;

    /* renamed from: o */
    private AbstractC6138j f19213o;

    /* renamed from: p */
    private volatile C6068v0<R> f19214p;

    /* renamed from: q */
    private boolean f19215q;

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public static class HandlerC6008a<R extends AbstractC6007i> extends HandlerC7287f {
        public HandlerC6008a(@RecentlyNonNull Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m17442a(@RecentlyNonNull AbstractC6077j<? super R> abstractC6077j, @RecentlyNonNull R r) {
            int i = BasePendingResult.f19200b;
            sendMessage(obtainMessage(1, new Pair((AbstractC6077j) C6155o.m17018j(abstractC6077j), r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@RecentlyNonNull Message message) {
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    ((BasePendingResult) message.obj).m17450d(Status.f19170g);
                    return;
                }
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
                return;
            }
            Pair pair = (Pair) message.obj;
            AbstractC6077j abstractC6077j = (AbstractC6077j) pair.first;
            AbstractC6007i abstractC6007i = (AbstractC6007i) pair.second;
            try {
                abstractC6077j.m17241a(abstractC6007i);
            } catch (RuntimeException e) {
                BasePendingResult.m17444j(abstractC6007i);
                throw e;
            }
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f19201c = new Object();
        this.f19204f = new CountDownLatch(1);
        this.f19205g = new ArrayList<>();
        this.f19207i = new AtomicReference<>();
        this.f19215q = false;
        this.f19202d = new HandlerC6008a<>(Looper.getMainLooper());
        this.f19203e = new WeakReference<>(null);
    }

    public BasePendingResult(AbstractC5999d abstractC5999d) {
        this.f19201c = new Object();
        this.f19204f = new CountDownLatch(1);
        this.f19205g = new ArrayList<>();
        this.f19207i = new AtomicReference<>();
        this.f19215q = false;
        this.f19202d = new HandlerC6008a<>(abstractC5999d != null ? abstractC5999d.mo17333c() : Looper.getMainLooper());
        this.f19203e = new WeakReference<>(abstractC5999d);
    }

    /* renamed from: g */
    private final R m17447g() {
        R r;
        synchronized (this.f19201c) {
            C6155o.m17014n(!this.f19210l, "Result has already been consumed.");
            C6155o.m17014n(m17449e(), "Result is not ready.");
            r = this.f19208j;
            this.f19208j = null;
            this.f19206h = null;
            this.f19210l = true;
        }
        if (this.f19207i.getAndSet(null) == null) {
            return (R) C6155o.m17018j(r);
        }
        throw null;
    }

    /* renamed from: h */
    private final void m17446h(R r) {
        this.f19208j = r;
        this.f19209k = r.mo5849e();
        this.f19213o = null;
        this.f19204f.countDown();
        if (this.f19211m) {
            this.f19206h = null;
        } else {
            AbstractC6077j<? super R> abstractC6077j = this.f19206h;
            if (abstractC6077j != null) {
                this.f19202d.removeMessages(2);
                this.f19202d.m17442a(abstractC6077j, m17447g());
            } else if (this.f19208j instanceof AbstractC6006h) {
                this.mResultGuardian = new C6036i1(this, null);
            }
        }
        ArrayList<AbstractC6003f.AbstractC6004a> arrayList = this.f19205g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo17053a(this.f19209k);
        }
        this.f19205g.clear();
    }

    /* renamed from: j */
    public static void m17444j(AbstractC6007i abstractC6007i) {
        if (abstractC6007i instanceof AbstractC6006h) {
            try {
                ((AbstractC6006h) abstractC6007i).mo10626b();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(abstractC6007i);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC6003f
    /* renamed from: a */
    public final void mo17452a(@RecentlyNonNull AbstractC6003f.AbstractC6004a abstractC6004a) {
        C6155o.m17026b(abstractC6004a != null, "Callback cannot be null.");
        synchronized (this.f19201c) {
            if (m17449e()) {
                abstractC6004a.mo17053a(this.f19209k);
            } else {
                this.f19205g.add(abstractC6004a);
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC6003f
    @RecentlyNonNull
    /* renamed from: b */
    public final R mo17451b(long j, @RecentlyNonNull TimeUnit timeUnit) {
        if (j > 0) {
            C6155o.m17019i("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        C6155o.m17014n(!this.f19210l, "Result has already been consumed.");
        if (this.f19214p != null) {
            z = false;
        }
        C6155o.m17014n(z, "Cannot await if then() has been called.");
        try {
            if (!this.f19204f.await(j, timeUnit)) {
                m17450d(Status.f19170g);
            }
        } catch (InterruptedException e) {
            m17450d(Status.f19168e);
        }
        C6155o.m17014n(m17449e(), "Result is not ready.");
        return m17447g();
    }

    /* renamed from: c */
    public abstract R mo17240c(@RecentlyNonNull Status status);

    @Deprecated
    /* renamed from: d */
    public final void m17450d(@RecentlyNonNull Status status) {
        synchronized (this.f19201c) {
            if (!m17449e()) {
                m17448f(mo17240c(status));
                this.f19212n = true;
            }
        }
    }

    /* renamed from: e */
    public final boolean m17449e() {
        return this.f19204f.getCount() == 0;
    }

    /* renamed from: f */
    public final void m17448f(@RecentlyNonNull R r) {
        synchronized (this.f19201c) {
            if (this.f19212n || this.f19211m) {
                m17444j(r);
                return;
            }
            m17449e();
            C6155o.m17014n(!m17449e(), "Results have already been set");
            C6155o.m17014n(!this.f19210l, "Result has already been consumed");
            m17446h(r);
        }
    }

    /* renamed from: i */
    public final void m17445i() {
        boolean z = true;
        if (!this.f19215q) {
            z = f19199a.get().booleanValue();
        }
        this.f19215q = z;
    }
}
