package p660rx.plugins;

import java.io.PrintStream;
import java.util.concurrent.ScheduledExecutorService;
import p660rx.Completable;
import p660rx.Observable;
import p660rx.Scheduler;
import p660rx.Single;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Func0;
import p660rx.functions.Func1;
import p660rx.functions.Func2;
import p660rx.internal.operators.SingleFromObservable;
import p660rx.internal.operators.SingleToObservable;
/* renamed from: rx.plugins.RxJavaHooks */
/* loaded from: classes3-dex2jar.jar:rx/plugins/RxJavaHooks.class */
public final class RxJavaHooks {
    public static volatile Func1<Completable.OnSubscribe, Completable.OnSubscribe> onCompletableCreate;
    public static volatile Func1<Scheduler, Scheduler> onComputationScheduler;
    public static volatile Action1<Throwable> onError;
    public static volatile Func0<? extends ScheduledExecutorService> onGenericScheduledExecutorService;
    public static volatile Func1<Scheduler, Scheduler> onIOScheduler;
    public static volatile Func1<Observable.OnSubscribe, Observable.OnSubscribe> onObservableCreate;
    public static volatile Func1<Observable.Operator, Observable.Operator> onObservableLift;
    public static volatile Func1<Subscription, Subscription> onObservableReturn;
    public static volatile Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> onObservableStart;
    public static volatile Func1<Throwable, Throwable> onObservableSubscribeError;
    public static volatile Func1<Action0, Action0> onScheduleAction;
    public static volatile Func1<Single.OnSubscribe, Single.OnSubscribe> onSingleCreate;
    public static volatile Func1<Subscription, Subscription> onSingleReturn;
    public static volatile Func2<Single, Single.OnSubscribe, Single.OnSubscribe> onSingleStart;
    public static volatile Func1<Throwable, Throwable> onSingleSubscribeError;

    static {
        init();
    }

    public static Func0<? extends ScheduledExecutorService> getOnGenericScheduledExecutorService() {
        return onGenericScheduledExecutorService;
    }

    public static void init() {
        onError = new Action1<Throwable>() { // from class: rx.plugins.RxJavaHooks.1
            public void call(Throwable th) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
            }
        };
        onObservableStart = new Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.2
            @Override // p660rx.functions.Func2
            public /* bridge */ /* synthetic */ Observable.OnSubscribe call(Observable observable, Observable.OnSubscribe onSubscribe) {
                Observable.OnSubscribe onSubscribe2 = onSubscribe;
                call2(observable, onSubscribe2);
                return onSubscribe2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable.OnSubscribe call2(Observable observable, Observable.OnSubscribe onSubscribe) {
                RxJavaPlugins.getInstance().getObservableExecutionHook().onSubscribeStart(observable, onSubscribe);
                return onSubscribe;
            }
        };
        onObservableReturn = new Func1<Subscription, Subscription>() { // from class: rx.plugins.RxJavaHooks.3
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Subscription call(Subscription subscription) {
                Subscription subscription2 = subscription;
                call2(subscription2);
                return subscription2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Subscription call2(Subscription subscription) {
                RxJavaPlugins.getInstance().getObservableExecutionHook().onSubscribeReturn(subscription);
                return subscription;
            }
        };
        onSingleStart = new Func2<Single, Single.OnSubscribe, Single.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.4
            public Single.OnSubscribe call(Single single, Single.OnSubscribe onSubscribe) {
                RxJavaSingleExecutionHook singleExecutionHook = RxJavaPlugins.getInstance().getSingleExecutionHook();
                if (singleExecutionHook == RxJavaSingleExecutionHookDefault.getInstance()) {
                    return onSubscribe;
                }
                SingleToObservable singleToObservable = new SingleToObservable(onSubscribe);
                singleExecutionHook.onSubscribeStart(single, singleToObservable);
                return new SingleFromObservable(singleToObservable);
            }
        };
        onSingleReturn = new Func1<Subscription, Subscription>() { // from class: rx.plugins.RxJavaHooks.5
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Subscription call(Subscription subscription) {
                Subscription subscription2 = subscription;
                call2(subscription2);
                return subscription2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Subscription call2(Subscription subscription) {
                RxJavaPlugins.getInstance().getSingleExecutionHook().onSubscribeReturn(subscription);
                return subscription;
            }
        };
        new Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.6
            @Override // p660rx.functions.Func2
            public /* bridge */ /* synthetic */ Completable.OnSubscribe call(Completable completable, Completable.OnSubscribe onSubscribe) {
                Completable.OnSubscribe onSubscribe2 = onSubscribe;
                call2(completable, onSubscribe2);
                return onSubscribe2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Completable.OnSubscribe call2(Completable completable, Completable.OnSubscribe onSubscribe) {
                RxJavaPlugins.getInstance().getCompletableExecutionHook().onSubscribeStart(completable, onSubscribe);
                return onSubscribe;
            }
        };
        onScheduleAction = new Func1<Action0, Action0>() { // from class: rx.plugins.RxJavaHooks.7
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Action0 call(Action0 action0) {
                Action0 action02 = action0;
                call2(action02);
                return action02;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Action0 call2(Action0 action0) {
                RxJavaPlugins.getInstance().getSchedulersHook().onSchedule(action0);
                return action0;
            }
        };
        onObservableSubscribeError = new Func1<Throwable, Throwable>() { // from class: rx.plugins.RxJavaHooks.8
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Throwable call(Throwable th) {
                Throwable th2 = th;
                call2(th2);
                return th2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Throwable call2(Throwable th) {
                RxJavaPlugins.getInstance().getObservableExecutionHook().onSubscribeError(th);
                return th;
            }
        };
        onObservableLift = new Func1<Observable.Operator, Observable.Operator>() { // from class: rx.plugins.RxJavaHooks.9
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Observable.Operator call(Observable.Operator operator) {
                Observable.Operator operator2 = operator;
                call2(operator2);
                return operator2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable.Operator call2(Observable.Operator operator) {
                RxJavaPlugins.getInstance().getObservableExecutionHook().onLift(operator);
                return operator;
            }
        };
        onSingleSubscribeError = new Func1<Throwable, Throwable>() { // from class: rx.plugins.RxJavaHooks.10
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Throwable call(Throwable th) {
                Throwable th2 = th;
                call2(th2);
                return th2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Throwable call2(Throwable th) {
                RxJavaPlugins.getInstance().getSingleExecutionHook().onSubscribeError(th);
                return th;
            }
        };
        new Func1<Observable.Operator, Observable.Operator>() { // from class: rx.plugins.RxJavaHooks.11
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Observable.Operator call(Observable.Operator operator) {
                Observable.Operator operator2 = operator;
                call2(operator2);
                return operator2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable.Operator call2(Observable.Operator operator) {
                RxJavaPlugins.getInstance().getSingleExecutionHook().onLift(operator);
                return operator;
            }
        };
        new Func1<Throwable, Throwable>() { // from class: rx.plugins.RxJavaHooks.12
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Throwable call(Throwable th) {
                Throwable th2 = th;
                call2(th2);
                return th2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Throwable call2(Throwable th) {
                RxJavaPlugins.getInstance().getCompletableExecutionHook().onSubscribeError(th);
                return th;
            }
        };
        new Func1<Completable.Operator, Completable.Operator>() { // from class: rx.plugins.RxJavaHooks.13
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Completable.Operator call(Completable.Operator operator) {
                Completable.Operator operator2 = operator;
                call2(operator2);
                return operator2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Completable.Operator call2(Completable.Operator operator) {
                RxJavaPlugins.getInstance().getCompletableExecutionHook().onLift(operator);
                return operator;
            }
        };
        initCreate();
    }

    public static void initCreate() {
        onObservableCreate = new Func1<Observable.OnSubscribe, Observable.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.14
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Observable.OnSubscribe call(Observable.OnSubscribe onSubscribe) {
                Observable.OnSubscribe onSubscribe2 = onSubscribe;
                call2(onSubscribe2);
                return onSubscribe2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable.OnSubscribe call2(Observable.OnSubscribe onSubscribe) {
                RxJavaPlugins.getInstance().getObservableExecutionHook().onCreate(onSubscribe);
                return onSubscribe;
            }
        };
        onSingleCreate = new Func1<Single.OnSubscribe, Single.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.15
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Single.OnSubscribe call(Single.OnSubscribe onSubscribe) {
                Single.OnSubscribe onSubscribe2 = onSubscribe;
                call2(onSubscribe2);
                return onSubscribe2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Single.OnSubscribe call2(Single.OnSubscribe onSubscribe) {
                RxJavaPlugins.getInstance().getSingleExecutionHook().onCreate(onSubscribe);
                return onSubscribe;
            }
        };
        onCompletableCreate = new Func1<Completable.OnSubscribe, Completable.OnSubscribe>() { // from class: rx.plugins.RxJavaHooks.16
            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Completable.OnSubscribe call(Completable.OnSubscribe onSubscribe) {
                Completable.OnSubscribe onSubscribe2 = onSubscribe;
                call2(onSubscribe2);
                return onSubscribe2;
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Completable.OnSubscribe call2(Completable.OnSubscribe onSubscribe) {
                RxJavaPlugins.getInstance().getCompletableExecutionHook().onCreate(onSubscribe);
                return onSubscribe;
            }
        };
    }

    public static Scheduler onComputationScheduler(Scheduler scheduler) {
        Func1<Scheduler, Scheduler> func1 = onComputationScheduler;
        Scheduler scheduler2 = scheduler;
        if (func1 != null) {
            scheduler2 = func1.call(scheduler);
        }
        return scheduler2;
    }

    public static Completable.OnSubscribe onCreate(Completable.OnSubscribe onSubscribe) {
        Func1<Completable.OnSubscribe, Completable.OnSubscribe> func1 = onCompletableCreate;
        Completable.OnSubscribe onSubscribe2 = onSubscribe;
        if (func1 != null) {
            onSubscribe2 = func1.call(onSubscribe);
        }
        return onSubscribe2;
    }

    public static <T> Observable.OnSubscribe<T> onCreate(Observable.OnSubscribe<T> onSubscribe) {
        Func1<Observable.OnSubscribe, Observable.OnSubscribe> func1 = onObservableCreate;
        Observable.OnSubscribe onSubscribe2 = onSubscribe;
        if (func1 != null) {
            onSubscribe2 = func1.call(onSubscribe);
        }
        return onSubscribe2;
    }

    public static <T> Single.OnSubscribe<T> onCreate(Single.OnSubscribe<T> onSubscribe) {
        Func1<Single.OnSubscribe, Single.OnSubscribe> func1 = onSingleCreate;
        Single.OnSubscribe onSubscribe2 = onSubscribe;
        if (func1 != null) {
            onSubscribe2 = func1.call(onSubscribe);
        }
        return onSubscribe2;
    }

    public static void onError(Throwable th) {
        Action1<Throwable> action1 = onError;
        if (action1 != null) {
            try {
                action1.call(th);
                return;
            } catch (Throwable th2) {
                PrintStream printStream = System.err;
                printStream.println("The onError handler threw an Exception. It shouldn't. => " + th2.getMessage());
                th2.printStackTrace();
                signalUncaught(th2);
            }
        }
        signalUncaught(th);
    }

    public static Scheduler onIOScheduler(Scheduler scheduler) {
        Func1<Scheduler, Scheduler> func1 = onIOScheduler;
        Scheduler scheduler2 = scheduler;
        if (func1 != null) {
            scheduler2 = func1.call(scheduler);
        }
        return scheduler2;
    }

    public static Throwable onObservableError(Throwable th) {
        Func1<Throwable, Throwable> func1 = onObservableSubscribeError;
        Throwable th2 = th;
        if (func1 != null) {
            th2 = func1.call(th);
        }
        return th2;
    }

    public static <T, R> Observable.Operator<R, T> onObservableLift(Observable.Operator<R, T> operator) {
        Func1<Observable.Operator, Observable.Operator> func1 = onObservableLift;
        Observable.Operator operator2 = operator;
        if (func1 != null) {
            operator2 = func1.call(operator);
        }
        return operator2;
    }

    public static Subscription onObservableReturn(Subscription subscription) {
        Func1<Subscription, Subscription> func1 = onObservableReturn;
        Subscription subscription2 = subscription;
        if (func1 != null) {
            subscription2 = func1.call(subscription);
        }
        return subscription2;
    }

    public static <T> Observable.OnSubscribe<T> onObservableStart(Observable<T> observable, Observable.OnSubscribe<T> onSubscribe) {
        Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> func2 = onObservableStart;
        return func2 != null ? func2.call(observable, onSubscribe) : onSubscribe;
    }

    public static Action0 onScheduledAction(Action0 action0) {
        Func1<Action0, Action0> func1 = onScheduleAction;
        Action0 action02 = action0;
        if (func1 != null) {
            action02 = func1.call(action0);
        }
        return action02;
    }

    public static Throwable onSingleError(Throwable th) {
        Func1<Throwable, Throwable> func1 = onSingleSubscribeError;
        Throwable th2 = th;
        if (func1 != null) {
            th2 = func1.call(th);
        }
        return th2;
    }

    public static Subscription onSingleReturn(Subscription subscription) {
        Func1<Subscription, Subscription> func1 = onSingleReturn;
        Subscription subscription2 = subscription;
        if (func1 != null) {
            subscription2 = func1.call(subscription);
        }
        return subscription2;
    }

    public static <T> Single.OnSubscribe<T> onSingleStart(Single<T> single, Single.OnSubscribe<T> onSubscribe) {
        Func2<Single, Single.OnSubscribe, Single.OnSubscribe> func2 = onSingleStart;
        return func2 != null ? func2.call(single, onSubscribe) : onSubscribe;
    }

    public static void signalUncaught(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
