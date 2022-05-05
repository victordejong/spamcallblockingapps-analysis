package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.utils.Logger;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieTask.class */
public class LottieTask<T> {

    /* renamed from: e */
    public static Executor f5850e = Executors.newCachedThreadPool();

    /* renamed from: a */
    private final Set<LottieListener<T>> f5851a;

    /* renamed from: b */
    private final Set<LottieListener<Throwable>> f5852b;

    /* renamed from: c */
    private final Handler f5853c;
    @Nullable

    /* renamed from: d */
    private volatile LottieResult<T> f5854d;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieTask$LottieFutureTask.class */
    private class LottieFutureTask extends FutureTask<LottieResult<T>> {
        LottieFutureTask(Callable<LottieResult<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (!isCancelled()) {
                try {
                    LottieTask.this.m16203l(get());
                } catch (InterruptedException | ExecutionException e) {
                    LottieTask.this.m16203l(new LottieResult(e));
                }
            }
        }
    }

    @RestrictTo
    public LottieTask(Callable<LottieResult<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    public LottieTask(Callable<LottieResult<T>> callable, boolean z) {
        this.f5851a = new LinkedHashSet(1);
        this.f5852b = new LinkedHashSet(1);
        this.f5853c = new Handler(Looper.getMainLooper());
        this.f5854d = null;
        if (z) {
            try {
                m16203l(callable.call());
            } catch (Throwable th) {
                m16203l(new LottieResult<>(th));
            }
        } else {
            f5850e.execute(new LottieFutureTask(callable));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m16208g(Throwable th) {
        synchronized (this) {
            ArrayList<LottieListener> arrayList = new ArrayList(this.f5852b);
            if (arrayList.isEmpty()) {
                Logger.m15735d("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            for (LottieListener lottieListener : arrayList) {
                lottieListener.mo16218a(th);
            }
        }
    }

    /* renamed from: h */
    private void m16207h() {
        this.f5853c.post(new Runnable() { // from class: com.airbnb.lottie.LottieTask.1
            @Override // java.lang.Runnable
            public void run() {
                if (LottieTask.this.f5854d != null) {
                    LottieResult lottieResult = LottieTask.this.f5854d;
                    if (lottieResult.m16215b() != null) {
                        LottieTask.this.m16206i(lottieResult.m16215b());
                    } else {
                        LottieTask.this.m16208g(lottieResult.m16216a());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m16206i(T t) {
        synchronized (this) {
            for (LottieListener lottieListener : new ArrayList(this.f5851a)) {
                lottieListener.mo16218a(t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m16203l(@Nullable LottieResult<T> lottieResult) {
        if (this.f5854d == null) {
            this.f5854d = lottieResult;
            m16207h();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    /* renamed from: e */
    public LottieTask<T> m16210e(LottieListener<Throwable> lottieListener) {
        synchronized (this) {
            if (!(this.f5854d == null || this.f5854d.m16216a() == null)) {
                lottieListener.mo16218a(this.f5854d.m16216a());
            }
            this.f5852b.add(lottieListener);
        }
        return this;
    }

    /* renamed from: f */
    public LottieTask<T> m16209f(LottieListener<T> lottieListener) {
        synchronized (this) {
            if (!(this.f5854d == null || this.f5854d.m16215b() == null)) {
                lottieListener.mo16218a(this.f5854d.m16215b());
            }
            this.f5851a.add(lottieListener);
        }
        return this;
    }

    /* renamed from: j */
    public LottieTask<T> m16205j(LottieListener<Throwable> lottieListener) {
        synchronized (this) {
            this.f5852b.remove(lottieListener);
        }
        return this;
    }

    /* renamed from: k */
    public LottieTask<T> m16204k(LottieListener<T> lottieListener) {
        synchronized (this) {
            this.f5851a.remove(lottieListener);
        }
        return this;
    }
}
