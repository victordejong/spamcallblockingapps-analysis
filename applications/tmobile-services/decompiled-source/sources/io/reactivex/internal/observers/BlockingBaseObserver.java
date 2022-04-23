package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BlockingBaseObserver.class */
public abstract class BlockingBaseObserver<T> extends CountDownLatch implements Observer<T>, Disposable {

    /* renamed from: f */
    T f15174f;

    /* renamed from: g */
    Throwable f15175g;

    /* renamed from: h */
    Disposable f15176h;

    /* renamed from: i */
    volatile boolean f15177i;

    public BlockingBaseObserver() {
        super(1);
    }

    /* renamed from: a */
    public final T m4355a() {
        if (getCount() != 0) {
            try {
                BlockingHelper.m3447b();
                await();
            } catch (InterruptedException e) {
                dispose();
                throw ExceptionHelper.m3434e(e);
            }
        }
        Throwable th = this.f15175g;
        if (th == null) {
            return this.f15174f;
        }
        throw ExceptionHelper.m3434e(th);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        this.f15177i = true;
        Disposable disposable = this.f15176h;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f15177i;
    }

    @Override // io.reactivex.Observer
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        this.f15176h = disposable;
        if (this.f15177i) {
            disposable.dispose();
        }
    }
}
