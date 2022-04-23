package p660rx.observers;

import java.util.Arrays;
import p660rx.Subscriber;
import p660rx.exceptions.CompositeException;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnCompletedFailedException;
import p660rx.exceptions.OnErrorFailedException;
import p660rx.exceptions.OnErrorNotImplementedException;
import p660rx.exceptions.UnsubscribeFailedException;
import p660rx.plugins.RxJavaHooks;
import p660rx.plugins.RxJavaPlugins;
/* renamed from: rx.observers.SafeSubscriber */
/* loaded from: classes3-dex2jar.jar:rx/observers/SafeSubscriber.class */
public class SafeSubscriber<T> extends Subscriber<T> {
    public final Subscriber<? super T> actual;
    public boolean done;

    public SafeSubscriber(Subscriber<? super T> subscriber) {
        super(subscriber);
        this.actual = subscriber;
    }

    public void _onError(Throwable th) {
        RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
        try {
            this.actual.onError(th);
            try {
                unsubscribe();
            } catch (Throwable th2) {
                RxJavaHooks.onError(th2);
                throw new OnErrorFailedException(th2);
            }
        } catch (OnErrorNotImplementedException e) {
            try {
                unsubscribe();
                throw e;
            } catch (Throwable th3) {
                RxJavaHooks.onError(th3);
                throw new OnErrorNotImplementedException("Observer.onError not implemented and error while unsubscribing.", new CompositeException(Arrays.asList(th, th3)));
            }
        } catch (Throwable th4) {
            RxJavaHooks.onError(th4);
            try {
                unsubscribe();
                throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError", new CompositeException(Arrays.asList(th, th4)));
            } catch (Throwable th5) {
                RxJavaHooks.onError(th5);
                throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new CompositeException(Arrays.asList(th, th4, th5)));
            }
        }
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        UnsubscribeFailedException unsubscribeFailedException;
        if (!this.done) {
            this.done = true;
            try {
                this.actual.onCompleted();
                try {
                    unsubscribe();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    Exceptions.throwIfFatal(th);
                    RxJavaHooks.onError(th);
                    throw new OnCompletedFailedException(th.getMessage(), th);
                } catch (Throwable th2) {
                    try {
                        unsubscribe();
                        throw th2;
                    } finally {
                    }
                }
            }
        }
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        Exceptions.throwIfFatal(th);
        if (!this.done) {
            this.done = true;
            _onError(th);
        }
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        try {
            if (!this.done) {
                this.actual.onNext(t);
            }
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, this);
        }
    }
}
