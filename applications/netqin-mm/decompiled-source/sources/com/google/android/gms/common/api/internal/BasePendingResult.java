package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3257h0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3265l0;
@KeepForSdk
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {

    /* renamed from: o */
    public static final ThreadLocal<Boolean> f23094o = new C3265l0();

    /* renamed from: a */
    public final Object f23095a;

    /* renamed from: b */
    public final CallbackHandler<R> f23096b;

    /* renamed from: c */
    public final WeakReference<GoogleApiClient> f23097c;

    /* renamed from: d */
    public final CountDownLatch f23098d;

    /* renamed from: e */
    public final ArrayList<PendingResult.StatusListener> f23099e;

    /* renamed from: f */
    public ResultCallback<? super R> f23100f;

    /* renamed from: g */
    public final AtomicReference<AbstractC3257h0> f23101g;

    /* renamed from: h */
    public R f23102h;

    /* renamed from: i */
    public Status f23103i;

    /* renamed from: j */
    public volatile boolean f23104j;

    /* renamed from: k */
    public boolean f23105k;

    /* renamed from: l */
    public boolean f23106l;

    /* renamed from: m */
    public ICancelToken f23107m;
    @KeepName
    public C7229a mResultGuardian;

    /* renamed from: n */
    public boolean f23108n;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler.class */
    public static class CallbackHandler<R extends Result> extends zap {
        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m17708a(ResultCallback<? super R> resultCallback, R r) {
            BasePendingResult.m17715b(resultCallback);
            Preconditions.m17288a(resultCallback);
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                ResultCallback resultCallback = (ResultCallback) pair.first;
                Result result = (Result) pair.second;
                try {
                    resultCallback.mo17499a(result);
                } catch (RuntimeException e) {
                    BasePendingResult.m17712c(result);
                    throw e;
                }
            } else if (i != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).m17714b(Status.f23078g);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public final class C7229a {
        public C7229a() {
        }

        public /* synthetic */ C7229a(BasePendingResult basePendingResult, C3265l0 l0Var) {
            this();
        }

        public final void finalize() throws Throwable {
            BasePendingResult.m17712c(BasePendingResult.this.f23102h);
            super.finalize();
        }
    }

    @Deprecated
    public BasePendingResult() {
        this.f23095a = new Object();
        this.f23098d = new CountDownLatch(1);
        this.f23099e = new ArrayList<>();
        this.f23101g = new AtomicReference<>();
        this.f23108n = false;
        this.f23096b = new CallbackHandler<>(Looper.getMainLooper());
        this.f23097c = new WeakReference<>(null);
    }

    @KeepForSdk
    public BasePendingResult(GoogleApiClient googleApiClient) {
        this.f23095a = new Object();
        this.f23098d = new CountDownLatch(1);
        this.f23099e = new ArrayList<>();
        this.f23101g = new AtomicReference<>();
        this.f23108n = false;
        this.f23096b = new CallbackHandler<>(googleApiClient != null ? googleApiClient.mo17523c() : Looper.getMainLooper());
        this.f23097c = new WeakReference<>(googleApiClient);
    }

    /* renamed from: b */
    public static <R extends Result> ResultCallback<R> m17715b(ResultCallback<R> resultCallback) {
        return resultCallback;
    }

    /* renamed from: c */
    public static void m17712c(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).mo15656a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract R mo17597a(Status status);

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    /* renamed from: a */
    public void mo17508a() {
        synchronized (this.f23095a) {
            if (!this.f23105k && !this.f23104j) {
                if (this.f23107m != null) {
                    try {
                        this.f23107m.cancel();
                    } catch (RemoteException e) {
                    }
                }
                m17712c(this.f23102h);
                this.f23105k = true;
                m17716b((BasePendingResult<R>) mo17597a(Status.f23079h));
            }
        }
    }

    /* renamed from: a */
    public final void m17722a(AbstractC3257h0 h0Var) {
        this.f23101g.set(h0Var);
    }

    /* renamed from: a */
    public final void m17721a(PendingResult.StatusListener statusListener) {
        Preconditions.m17283a(statusListener != null, "Callback cannot be null.");
        synchronized (this.f23095a) {
            if (m17713c()) {
                statusListener.mo17754a(this.f23103i);
            } else {
                this.f23099e.add(statusListener);
            }
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m17720a(R r) {
        synchronized (this.f23095a) {
            if (this.f23106l || this.f23105k) {
                m17712c(r);
                return;
            }
            m17713c();
            boolean z = true;
            Preconditions.m17279b(!m17713c(), "Results have already been set");
            if (this.f23104j) {
                z = false;
            }
            Preconditions.m17279b(z, "Result has already been consumed");
            m17716b((BasePendingResult<R>) r);
        }
    }

    /* renamed from: b */
    public final void m17716b(R r) {
        this.f23102h = r;
        this.f23103i = r.mo8632d();
        this.f23107m = null;
        this.f23098d.countDown();
        if (this.f23105k) {
            this.f23100f = null;
        } else {
            ResultCallback<? super R> resultCallback = this.f23100f;
            if (resultCallback != null) {
                this.f23096b.removeMessages(2);
                this.f23096b.m17708a(resultCallback, m17709f());
            } else if (this.f23102h instanceof Releasable) {
                this.mResultGuardian = new C7229a(this, null);
            }
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.f23099e;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PendingResult.StatusListener statusListener = arrayList.get(i);
            i++;
            statusListener.mo17754a(this.f23103i);
        }
        this.f23099e.clear();
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: b */
    public final void m17714b(Status status) {
        synchronized (this.f23095a) {
            if (!m17713c()) {
                m17720a((BasePendingResult<R>) mo17597a(status));
                this.f23106l = true;
            }
        }
    }

    /* renamed from: b */
    public boolean m17717b() {
        boolean z;
        synchronized (this.f23095a) {
            z = this.f23105k;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: c */
    public final boolean m17713c() {
        return this.f23098d.getCount() == 0;
    }

    /* renamed from: d */
    public final boolean m17711d() {
        boolean b;
        synchronized (this.f23095a) {
            if (this.f23097c.get() == null || !this.f23108n) {
                mo17508a();
            }
            b = m17717b();
        }
        return b;
    }

    /* renamed from: e */
    public final void m17710e() {
        this.f23108n = this.f23108n || f23094o.get().booleanValue();
    }

    /* renamed from: f */
    public final R m17709f() {
        R r;
        synchronized (this.f23095a) {
            Preconditions.m17279b(!this.f23104j, "Result has already been consumed.");
            Preconditions.m17279b(m17713c(), "Result is not ready.");
            r = this.f23102h;
            this.f23102h = null;
            this.f23100f = null;
            this.f23104j = true;
        }
        AbstractC3257h0 andSet = this.f23101g.getAndSet(null);
        if (andSet != null) {
            andSet.mo27301a(this);
        }
        Preconditions.m17288a(r);
        return r;
    }
}
