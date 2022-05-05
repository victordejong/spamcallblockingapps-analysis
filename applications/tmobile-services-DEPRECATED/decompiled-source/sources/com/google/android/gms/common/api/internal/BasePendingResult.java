package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
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
import com.google.android.gms.internal.base.zar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
@KeepForSdk
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {

    /* renamed from: p */
    static final ThreadLocal<Boolean> f7044p = new zao();

    /* renamed from: a */
    private final Object f7045a;

    /* renamed from: b */
    private final CallbackHandler<R> f7046b;

    /* renamed from: c */
    private final WeakReference<GoogleApiClient> f7047c;

    /* renamed from: d */
    private final CountDownLatch f7048d;

    /* renamed from: e */
    private final ArrayList<PendingResult.StatusListener> f7049e;

    /* renamed from: f */
    private ResultCallback<? super R> f7050f;

    /* renamed from: g */
    private final AtomicReference<zacq> f7051g;

    /* renamed from: h */
    private R f7052h;

    /* renamed from: i */
    private Status f7053i;

    /* renamed from: j */
    private volatile boolean f7054j;

    /* renamed from: k */
    private boolean f7055k;

    /* renamed from: l */
    private boolean f7056l;

    /* renamed from: m */
    private ICancelToken f7057m;
    @KeepName
    private zaa mResultGuardian;

    /* renamed from: n */
    private volatile zack<R> f7058n;

    /* renamed from: o */
    private boolean f7059o;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler.class */
    public static class CallbackHandler<R extends Result> extends zar {
        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m14963a(ResultCallback<? super R> resultCallback, R r) {
            BasePendingResult.m14972k(resultCallback);
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
                    resultCallback.mo14760a(result);
                } catch (RuntimeException e) {
                    BasePendingResult.m14968o(result);
                    throw e;
                }
            } else if (i != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).m14967p(Status.f7026m);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$zaa.class */
    public final class zaa {
        private zaa() {
        }

        /* synthetic */ zaa(BasePendingResult basePendingResult, zao zaoVar) {
            this();
        }

        protected final void finalize() throws Throwable {
            BasePendingResult.m14968o(BasePendingResult.this.f7052h);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f7045a = new Object();
        this.f7048d = new CountDownLatch(1);
        this.f7049e = new ArrayList<>();
        this.f7051g = new AtomicReference<>();
        this.f7059o = false;
        this.f7046b = new CallbackHandler<>(Looper.getMainLooper());
        this.f7047c = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public BasePendingResult(GoogleApiClient googleApiClient) {
        this.f7045a = new Object();
        this.f7048d = new CountDownLatch(1);
        this.f7049e = new ArrayList<>();
        this.f7051g = new AtomicReference<>();
        this.f7059o = false;
        this.f7046b = new CallbackHandler<>(googleApiClient != null ? googleApiClient.mo14784h() : Looper.getMainLooper());
        this.f7047c = new WeakReference<>(googleApiClient);
    }

    /* renamed from: f */
    private final R m14977f() {
        R r;
        synchronized (this.f7045a) {
            Preconditions.m14519o(!this.f7054j, "Result has already been consumed.");
            Preconditions.m14519o(m14975h(), "Result is not ready.");
            r = this.f7052h;
            this.f7052h = null;
            this.f7050f = null;
            this.f7054j = true;
        }
        zacq andSet = this.f7051g.getAndSet(null);
        if (andSet != null) {
            andSet.mo14742a(this);
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static <R extends Result> ResultCallback<R> m14972k(ResultCallback<R> resultCallback) {
        return resultCallback;
    }

    /* renamed from: l */
    private final void m14971l(R r) {
        this.f7052h = r;
        this.f7057m = null;
        this.f7048d.countDown();
        this.f7053i = this.f7052h.mo10851k();
        if (this.f7055k) {
            this.f7050f = null;
        } else if (this.f7050f != null) {
            this.f7046b.removeMessages(2);
            this.f7046b.m14963a(this.f7050f, m14977f());
        } else if (this.f7052h instanceof Releasable) {
            this.mResultGuardian = new zaa(this, null);
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.f7049e;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PendingResult.StatusListener statusListener = arrayList.get(i);
            i++;
            statusListener.mo14432a(this.f7053i);
        }
        this.f7049e.clear();
    }

    /* renamed from: o */
    public static void m14968o(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    /* renamed from: a */
    public final R mo14773a(long j, TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.m14524j("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        Preconditions.m14519o(!this.f7054j, "Result has already been consumed.");
        if (this.f7058n != null) {
            z = false;
        }
        Preconditions.m14519o(z, "Cannot await if then() has been called.");
        try {
            if (!this.f7048d.await(j, timeUnit)) {
                m14967p(Status.f7026m);
            }
        } catch (InterruptedException e) {
            m14967p(Status.f7024k);
        }
        Preconditions.m14519o(m14975h(), "Result is not ready.");
        return m14977f();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    /* renamed from: b */
    public void mo14772b() {
        synchronized (this.f7045a) {
            if (!this.f7055k && !this.f7054j) {
                if (this.f7057m != null) {
                    try {
                        this.f7057m.cancel();
                    } catch (RemoteException e) {
                    }
                }
                m14968o(this.f7052h);
                this.f7055k = true;
                m14971l(mo14042e(Status.f7027n));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    /* renamed from: c */
    public final void mo14771c(ResultCallback<? super R> resultCallback) {
        synchronized (this.f7045a) {
            if (resultCallback == null) {
                this.f7050f = null;
                return;
            }
            boolean z = true;
            Preconditions.m14519o(!this.f7054j, "Result has already been consumed.");
            if (this.f7058n != null) {
                z = false;
            }
            Preconditions.m14519o(z, "Cannot set callbacks if then() has been called.");
            if (!m14976g()) {
                if (m14975h()) {
                    this.f7046b.m14963a(resultCallback, m14977f());
                } else {
                    this.f7050f = resultCallback;
                }
            }
        }
    }

    /* renamed from: d */
    public final void m14978d(PendingResult.StatusListener statusListener) {
        Preconditions.m14532b(statusListener != null, "Callback cannot be null.");
        synchronized (this.f7045a) {
            if (m14975h()) {
                statusListener.mo14432a(this.f7053i);
            } else {
                this.f7049e.add(statusListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    @KeepForSdk
    /* renamed from: e */
    public abstract R mo14042e(Status status);

    /* renamed from: g */
    public boolean m14976g() {
        boolean z;
        synchronized (this.f7045a) {
            z = this.f7055k;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: h */
    public final boolean m14975h() {
        return this.f7048d.getCount() == 0;
    }

    @KeepForSdk
    /* renamed from: i */
    public final void m14974i(R r) {
        synchronized (this.f7045a) {
            if (this.f7056l || this.f7055k) {
                m14968o(r);
                return;
            }
            m14975h();
            boolean z = true;
            Preconditions.m14519o(!m14975h(), "Results have already been set");
            if (this.f7054j) {
                z = false;
            }
            Preconditions.m14519o(z, "Result has already been consumed");
            m14971l(r);
        }
    }

    /* renamed from: m */
    public final void m14970m(zacq zacqVar) {
        this.f7051g.set(zacqVar);
    }

    /* renamed from: p */
    public final void m14967p(Status status) {
        synchronized (this.f7045a) {
            if (!m14975h()) {
                m14974i(mo14042e(status));
                this.f7056l = true;
            }
        }
    }

    /* renamed from: q */
    public final Integer m14966q() {
        return null;
    }

    /* renamed from: r */
    public final boolean m14965r() {
        boolean g;
        synchronized (this.f7045a) {
            if (this.f7047c.get() == null || !this.f7059o) {
                mo14772b();
            }
            g = m14976g();
        }
        return g;
    }

    /* renamed from: s */
    public final void m14964s() {
        this.f7059o = this.f7059o || f7044p.get().booleanValue();
    }
}
