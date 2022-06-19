package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24932m0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24944s0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24946t0;
@KeepForSdk
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {
    public static final ThreadLocal<Boolean> zaa = new C24944s0();
    public static final /* synthetic */ int zad = 0;
    @KeepName
    private C24946t0 mResultGuardian;
    @RecentlyNonNull
    public final CallbackHandler<R> zab;
    @RecentlyNonNull
    public final WeakReference<GoogleApiClient> zac;
    private final Object zae;
    private final CountDownLatch zaf;
    private final ArrayList<PendingResult.StatusListener> zag;
    private ResultCallback<? super R> zah;
    private final AtomicReference<C24932m0> zai;
    private R zaj;
    private Status zak;
    private volatile boolean zal;
    private boolean zam;
    private boolean zan;
    private ICancelToken zao;
    private volatile zacv<R> zap;
    private boolean zaq;

    @VisibleForTesting
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler.class */
    public static class CallbackHandler<R extends Result> extends zap {
        public CallbackHandler() {
            super(Looper.getMainLooper());
        }

        public CallbackHandler(@RecentlyNonNull Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m39038a(@RecentlyNonNull ResultCallback<? super R> resultCallback, @RecentlyNonNull R r) {
            int i = BasePendingResult.zad;
            Objects.requireNonNull(resultCallback, "null reference");
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@RecentlyNonNull Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("BasePendingResult", C22128a.m8690L1(45, "Don't know how to handle message: ", i), new Exception());
                    return;
                } else {
                    ((BasePendingResult) message.obj).forceFailureUnlessReady(Status.f5725i);
                    return;
                }
            }
            Pair pair = (Pair) message.obj;
            ResultCallback resultCallback = (ResultCallback) pair.first;
            Result result = (Result) pair.second;
            try {
                resultCallback.mo38948a(result);
            } catch (RuntimeException e) {
                BasePendingResult.zal(result);
                throw e;
            }
        }
    }

    @Deprecated
    public BasePendingResult() {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(Looper.getMainLooper());
        this.zac = new WeakReference<>(null);
    }

    @KeepForSdk
    @Deprecated
    public BasePendingResult(@RecentlyNonNull Looper looper) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(looper);
        this.zac = new WeakReference<>(null);
    }

    @KeepForSdk
    public BasePendingResult(GoogleApiClient googleApiClient) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(googleApiClient != null ? googleApiClient.mo38954m() : Looper.getMainLooper());
        this.zac = new WeakReference<>(googleApiClient);
    }

    @VisibleForTesting
    @KeepForSdk
    public BasePendingResult(@RecentlyNonNull CallbackHandler<R> callbackHandler) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        Preconditions.m38897k(callbackHandler, "CallbackHandler must not be null");
        this.zab = callbackHandler;
        this.zac = new WeakReference<>(null);
    }

    private final R zaa() {
        R r;
        synchronized (this.zae) {
            Preconditions.m38895m(!this.zal, "Result has already been consumed.");
            Preconditions.m38895m(isReady(), "Result is not ready.");
            r = this.zaj;
            this.zaj = null;
            this.zah = null;
            this.zal = true;
        }
        C24932m0 andSet = this.zai.getAndSet(null);
        if (andSet != null) {
            andSet.f69853a.f5889a.remove(this);
        }
        Objects.requireNonNull(r, "null reference");
        return r;
    }

    private final void zab(R r) {
        this.zaj = r;
        this.zak = r.getStatus();
        this.zao = null;
        this.zaf.countDown();
        if (this.zam) {
            this.zah = null;
        } else {
            ResultCallback<? super R> resultCallback = this.zah;
            if (resultCallback != null) {
                this.zab.removeMessages(2);
                this.zab.m39038a(resultCallback, zaa());
            } else if (this.zaj instanceof Releasable) {
                this.mResultGuardian = new C24946t0(this);
            }
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.zag;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo4256a(this.zak);
        }
        this.zag.clear();
    }

    public static void zal(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String.valueOf(result).length();
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(@RecentlyNonNull PendingResult.StatusListener statusListener) {
        Preconditions.m38906b(statusListener != null, "Callback cannot be null.");
        synchronized (this.zae) {
            if (isReady()) {
                statusListener.mo4256a(this.zak);
            } else {
                this.zag.add(statusListener);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @RecentlyNonNull
    public final R await() {
        Preconditions.m38899i("await must not be called on the UI thread");
        boolean z = true;
        Preconditions.m38895m(!this.zal, "Result has already been consumed");
        if (this.zap != null) {
            z = false;
        }
        Preconditions.m38895m(z, "Cannot await if then() has been called.");
        try {
            this.zaf.await();
        } catch (InterruptedException e) {
            forceFailureUnlessReady(Status.f5723g);
        }
        Preconditions.m38895m(isReady(), "Result is not ready.");
        return zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @RecentlyNonNull
    public final R await(long j, @RecentlyNonNull TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.m38899i("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        Preconditions.m38895m(!this.zal, "Result has already been consumed.");
        if (this.zap != null) {
            z = false;
        }
        Preconditions.m38895m(z, "Cannot await if then() has been called.");
        try {
            if (!this.zaf.await(j, timeUnit)) {
                forceFailureUnlessReady(Status.f5725i);
            }
        } catch (InterruptedException e) {
            forceFailureUnlessReady(Status.f5723g);
        }
        Preconditions.m38895m(isReady(), "Result is not ready.");
        return zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public void cancel() {
        synchronized (this.zae) {
            if (!this.zam && !this.zal) {
                ICancelToken iCancelToken = this.zao;
                if (iCancelToken != null) {
                    try {
                        iCancelToken.cancel();
                    } catch (RemoteException e) {
                    }
                }
                zal(this.zaj);
                this.zam = true;
                zab(createFailedResult(Status.f5726j));
            }
        }
    }

    @KeepForSdk
    public abstract R createFailedResult(@RecentlyNonNull Status status);

    @KeepForSdk
    @Deprecated
    public final void forceFailureUnlessReady(@RecentlyNonNull Status status) {
        synchronized (this.zae) {
            if (!isReady()) {
                setResult(createFailedResult(status));
                this.zan = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        boolean z;
        synchronized (this.zae) {
            z = this.zam;
        }
        return z;
    }

    @KeepForSdk
    public final boolean isReady() {
        return this.zaf.getCount() == 0;
    }

    @KeepForSdk
    public final void setCancelToken(@RecentlyNonNull ICancelToken iCancelToken) {
        synchronized (this.zae) {
            this.zao = iCancelToken;
        }
    }

    @KeepForSdk
    public final void setResult(@RecentlyNonNull R r) {
        synchronized (this.zae) {
            if (this.zan || this.zam) {
                zal(r);
                return;
            }
            isReady();
            Preconditions.m38895m(!isReady(), "Results have already been set");
            Preconditions.m38895m(!this.zal, "Result has already been consumed");
            zab(r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.zae) {
            if (resultCallback == null) {
                this.zah = null;
                return;
            }
            boolean z = true;
            Preconditions.m38895m(!this.zal, "Result has already been consumed.");
            if (this.zap != null) {
                z = false;
            }
            Preconditions.m38895m(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zab.m39038a(resultCallback, zaa());
            } else {
                this.zah = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public final void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback, long j, @RecentlyNonNull TimeUnit timeUnit) {
        synchronized (this.zae) {
            if (resultCallback == null) {
                this.zah = null;
                return;
            }
            boolean z = true;
            Preconditions.m38895m(!this.zal, "Result has already been consumed.");
            if (this.zap != null) {
                z = false;
            }
            Preconditions.m38895m(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zab.m39038a(resultCallback, zaa());
            } else {
                this.zah = resultCallback;
                CallbackHandler<R> callbackHandler = this.zab;
                callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(2, this), timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @RecentlyNonNull
    public final <S extends Result> TransformedResult<S> then(@RecentlyNonNull ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> m38947b;
        Preconditions.m38895m(!this.zal, "Result has already been consumed.");
        synchronized (this.zae) {
            Preconditions.m38895m(this.zap == null, "Cannot call then() twice.");
            boolean z = false;
            if (this.zah == null) {
                z = true;
            }
            Preconditions.m38895m(z, "Cannot call then() if callbacks are set.");
            Preconditions.m38895m(!this.zam, "Cannot call then() if result was canceled.");
            this.zaq = true;
            this.zap = new zacv<>(this.zac);
            m38947b = this.zap.m38947b(resultTransform);
            if (isReady()) {
                this.zab.m39038a(this.zap, zaa());
            } else {
                this.zah = this.zap;
            }
        }
        return m38947b;
    }

    public final boolean zaj() {
        boolean isCanceled;
        synchronized (this.zae) {
            if (this.zac.get() == null || !this.zaq) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public final void zak() {
        boolean z = true;
        if (!this.zaq) {
            z = zaa.get().booleanValue();
        }
        this.zaq = z;
    }

    public final void zan(C24932m0 c24932m0) {
        this.zai.set(c24932m0);
    }
}
