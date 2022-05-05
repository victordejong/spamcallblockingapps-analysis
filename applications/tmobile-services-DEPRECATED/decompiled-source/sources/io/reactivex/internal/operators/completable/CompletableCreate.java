package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCreate.class */
public final class CompletableCreate extends Completable {

    /* renamed from: f */
    final CompletableOnSubscribe f15267f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCreate$Emitter.class */
    static final class Emitter extends AtomicReference<Disposable> implements CompletableEmitter, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;

        /* renamed from: f */
        final CompletableObserver f15268f;

        Emitter(CompletableObserver completableObserver) {
            this.f15268f = completableObserver;
        }

        /* renamed from: a */
        public void m4331a(Throwable th) {
            if (!m4330b(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        /* renamed from: b */
        public boolean m4330b(Throwable th) {
            Disposable andSet;
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper || (andSet = getAndSet(disposableHelper)) == DisposableHelper.DISPOSED) {
                return false;
            }
            try {
                this.f15268f.onError(th2);
                if (andSet == null) {
                    return true;
                }
                andSet.dispose();
                return true;
            } catch (Throwable th3) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th3;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        Emitter emitter = new Emitter(completableObserver);
        completableObserver.onSubscribe(emitter);
        try {
            this.f15267f.m4516a(emitter);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            emitter.m4331a(th);
        }
    }
}
