package com.hannesdorfmann.mosby3.mvi;

import android.support.annotation.CallSuper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviBasePresenter.class */
public abstract class MviBasePresenter<V extends MvpView, VS> implements MviPresenter<V, VS> {
    private CompositeDisposable intentDisposals;
    private List<MviBasePresenter<V, VS>.IntentRelayBinderPair<?>> intentRelaysBinders;
    private boolean subscribeViewStateMethodCalled;
    private boolean viewAttachedFirstTime;
    private Disposable viewRelayConsumerDisposable;
    private final BehaviorSubject<VS> viewStateBehaviorSubject;
    private ViewStateConsumer<V, VS> viewStateConsumer;
    private Disposable viewStateDisposable;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviBasePresenter$IntentRelayBinderPair.class */
    public class IntentRelayBinderPair<I> {
        private final ViewIntentBinder<V, I> intentBinder;
        private final PublishSubject<I> intentRelaySubject;

        public IntentRelayBinderPair(PublishSubject<I> publishSubject, ViewIntentBinder<V, I> viewIntentBinder) {
            this.intentRelaySubject = publishSubject;
            this.intentBinder = viewIntentBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviBasePresenter$ViewIntentBinder.class */
    public interface ViewIntentBinder<V extends MvpView, I> {
        @NonNull
        Observable<I> bind(@NonNull V v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviBasePresenter$ViewStateConsumer.class */
    public interface ViewStateConsumer<V extends MvpView, VS> {
        void accept(@NonNull V v, @NonNull VS vs);
    }

    public MviBasePresenter() {
        this.subscribeViewStateMethodCalled = false;
        this.intentRelaysBinders = new ArrayList(4);
        this.viewAttachedFirstTime = true;
        this.viewStateBehaviorSubject = BehaviorSubject.create();
        reset();
    }

    public MviBasePresenter(@NonNull VS vs) {
        this.subscribeViewStateMethodCalled = false;
        this.intentRelaysBinders = new ArrayList(4);
        this.viewAttachedFirstTime = true;
        if (vs == null) {
            throw new NullPointerException("Initial ViewState == null");
        }
        this.viewStateBehaviorSubject = BehaviorSubject.createDefault(vs);
        reset();
    }

    @MainThread
    private <I> Observable<I> bindIntentActually(@NonNull V v, @NonNull MviBasePresenter<V, VS>.IntentRelayBinderPair<?> intentRelayBinderPair) {
        if (v == null) {
            throw new NullPointerException("View is null. This is a Mosby internal bug. Please file an issue at https://github.com/sockeqwe/mosby/issues");
        } else if (intentRelayBinderPair == null) {
            throw new NullPointerException("IntentRelayBinderPair is null. This is a Mosby internal bug. Please file an issue at https://github.com/sockeqwe/mosby/issues");
        } else {
            PublishSubject publishSubject = ((IntentRelayBinderPair) intentRelayBinderPair).intentRelaySubject;
            if (publishSubject == null) {
                throw new NullPointerException("IntentRelay from binderPair is null. This is a Mosby internal bug. Please file an issue at https://github.com/sockeqwe/mosby/issues");
            }
            ViewIntentBinder viewIntentBinder = ((IntentRelayBinderPair) intentRelayBinderPair).intentBinder;
            if (viewIntentBinder == null) {
                throw new NullPointerException(ViewIntentBinder.class.getSimpleName() + " is null. This is a Mosby internal bug. Please file an issue at https://github.com/sockeqwe/mosby/issues");
            }
            Observable<I> bind = viewIntentBinder.bind(v);
            if (bind == null) {
                throw new NullPointerException("Intent Observable returned from Binder " + viewIntentBinder + " is null");
            }
            if (this.intentDisposals == null) {
                this.intentDisposals = new CompositeDisposable();
            }
            this.intentDisposals.add((Disposable) bind.subscribeWith(new DisposableIntentObserver(publishSubject)));
            return publishSubject;
        }
    }

    private void reset() {
        this.viewAttachedFirstTime = true;
        this.intentRelaysBinders.clear();
        this.subscribeViewStateMethodCalled = false;
    }

    @MainThread
    private void subscribeViewStateConsumerActually(@NonNull final V v) {
        if (v == null) {
            throw new NullPointerException("View is null");
        } else if (this.viewStateConsumer == null) {
            throw new NullPointerException(ViewStateConsumer.class.getSimpleName() + " is null. This is a mosby internal bug. Please file an issue at https://github.com/sockeqwe/mosby/issues");
        } else {
            this.viewRelayConsumerDisposable = this.viewStateBehaviorSubject.subscribe((Consumer<? super VS>) new Consumer<VS>() { // from class: com.hannesdorfmann.mosby3.mvi.MviBasePresenter.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.reactivex.functions.Consumer
                public void accept(VS vs) throws Exception {
                    MviBasePresenter.this.viewStateConsumer.accept(v, vs);
                }
            });
        }
    }

    @Override // com.hannesdorfmann.mosby3.mvp.MvpPresenter
    @CallSuper
    public void attachView(@NonNull V v) {
        if (this.viewAttachedFirstTime) {
            bindIntents();
        }
        if (this.viewStateConsumer != null) {
            subscribeViewStateConsumerActually(v);
        }
        int size = this.intentRelaysBinders.size();
        for (int i = 0; i < size; i++) {
            bindIntentActually(v, this.intentRelaysBinders.get(i));
        }
        this.viewAttachedFirstTime = false;
    }

    @MainThread
    protected abstract void bindIntents();

    @Override // com.hannesdorfmann.mosby3.mvp.MvpPresenter
    @CallSuper
    public void detachView(boolean z) {
        if (!z) {
            if (this.viewStateDisposable != null) {
                this.viewStateDisposable.dispose();
            }
            unbindIntents();
            reset();
        }
        if (this.viewRelayConsumerDisposable != null) {
            this.viewRelayConsumerDisposable.dispose();
            this.viewRelayConsumerDisposable = null;
        }
        if (this.intentDisposals != null) {
            this.intentDisposals.dispose();
            this.intentDisposals = null;
        }
    }

    protected Observable<VS> getViewStateObservable() {
        return this.viewStateBehaviorSubject;
    }

    @MainThread
    protected <I> Observable<I> intent(ViewIntentBinder<V, I> viewIntentBinder) {
        PublishSubject create = PublishSubject.create();
        this.intentRelaysBinders.add(new IntentRelayBinderPair<>(create, viewIntentBinder));
        return create;
    }

    @MainThread
    protected void subscribeViewState(@NonNull Observable<VS> observable, @NonNull ViewStateConsumer<V, VS> viewStateConsumer) {
        if (this.subscribeViewStateMethodCalled) {
            throw new IllegalStateException("subscribeViewState() method is only allowed to be called once");
        }
        this.subscribeViewStateMethodCalled = true;
        if (observable == null) {
            throw new NullPointerException("ViewState Observable is null");
        } else if (viewStateConsumer == null) {
            throw new NullPointerException("ViewStateBinder is null");
        } else {
            this.viewStateConsumer = viewStateConsumer;
            this.viewStateDisposable = (Disposable) observable.subscribeWith(new DisposableViewStateObserver(this.viewStateBehaviorSubject));
        }
    }

    protected void unbindIntents() {
    }
}
