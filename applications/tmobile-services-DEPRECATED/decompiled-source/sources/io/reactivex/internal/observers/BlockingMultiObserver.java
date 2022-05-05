package io.reactivex.internal.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BlockingMultiObserver.class */
public final class BlockingMultiObserver<T> extends CountDownLatch implements SingleObserver<T>, CompletableObserver, MaybeObserver<T> {

    /* renamed from: f */
    T f15178f;

    /* renamed from: g */
    Throwable f15179g;

    /* renamed from: h */
    Disposable f15180h;

    /* renamed from: i */
    volatile boolean f15181i;

    public BlockingMultiObserver() {
        super(1);
    }

    /* renamed from: a */
    public T m4354a() {
        if (getCount() != 0) {
            try {
                BlockingHelper.m3447b();
                await();
            } catch (InterruptedException e) {
                m4353b();
                throw ExceptionHelper.m3434e(e);
            }
        }
        Throwable th = this.f15179g;
        if (th == null) {
            return this.f15178f;
        }
        throw ExceptionHelper.m3434e(th);
    }

    /* renamed from: b */
    void m4353b() {
        this.f15181i = true;
        Disposable disposable = this.f15180h;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f15179g = th;
        countDown();
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        this.f15180h = disposable;
        if (this.f15181i) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f15178f = t;
        countDown();
    }
}
