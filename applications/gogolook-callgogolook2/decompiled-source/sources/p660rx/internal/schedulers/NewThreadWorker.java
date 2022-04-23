package p660rx.internal.schedulers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
import p660rx.internal.util.PlatformDependent;
import p660rx.internal.util.RxThreadFactory;
import p660rx.internal.util.SubscriptionList;
import p660rx.plugins.RxJavaHooks;
import p660rx.subscriptions.CompositeSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.NewThreadWorker */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/NewThreadWorker.class */
public class NewThreadWorker extends Scheduler.Worker implements Subscription {
    public static final boolean SHOULD_TRY_ENABLE_CANCEL_POLICY;
    public static volatile Object cachedSetRemoveOnCancelPolicyMethod;
    public final ScheduledExecutorService executor;
    public volatile boolean isUnsubscribed;
    public static final Object SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED = new Object();
    public static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> EXECUTORS = new ConcurrentHashMap<>();
    public static final AtomicReference<ScheduledExecutorService> PURGE = new AtomicReference<>();
    public static final int PURGE_FREQUENCY = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();

    static {
        boolean z = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
        int androidApiVersion = PlatformDependent.getAndroidApiVersion();
        SHOULD_TRY_ENABLE_CANCEL_POLICY = !z && (androidApiVersion == 0 || androidApiVersion >= 21);
    }

    public NewThreadWorker(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!tryEnableCancelPolicy(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            registerExecutor((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.executor = newScheduledThreadPool;
    }

    public static void deregisterExecutor(ScheduledExecutorService scheduledExecutorService) {
        EXECUTORS.remove(scheduledExecutorService);
    }

    public static Method findSetRemoveOnCancelPolicyMethod(ScheduledExecutorService scheduledExecutorService) {
        Method[] methods;
        for (Method method : scheduledExecutorService.getClass().getMethods()) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    public static void purgeExecutors() {
        try {
            Iterator<ScheduledThreadPoolExecutor> it = EXECUTORS.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor next = it.next();
                if (!next.isShutdown()) {
                    next.purge();
                } else {
                    it.remove();
                }
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaHooks.onError(th);
        }
    }

    public static void registerExecutor(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (true) {
            if (PURGE.get() != null) {
                break;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge-"));
            if (PURGE.compareAndSet(null, newScheduledThreadPool)) {
                Runnable runnable = new Runnable() { // from class: rx.internal.schedulers.NewThreadWorker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NewThreadWorker.purgeExecutors();
                    }
                };
                int i = PURGE_FREQUENCY;
                newScheduledThreadPool.scheduleAtFixedRate(runnable, i, i, TimeUnit.MILLISECONDS);
                break;
            }
            newScheduledThreadPool.shutdownNow();
        }
        EXECUTORS.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    public static boolean tryEnableCancelPolicy(ScheduledExecutorService scheduledExecutorService) {
        Method method;
        if (!SHOULD_TRY_ENABLE_CANCEL_POLICY) {
            return false;
        }
        if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
            Object obj = cachedSetRemoveOnCancelPolicyMethod;
            if (obj == SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED) {
                return false;
            }
            if (obj == null) {
                method = findSetRemoveOnCancelPolicyMethod(scheduledExecutorService);
                cachedSetRemoveOnCancelPolicyMethod = method != null ? method : SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED;
            } else {
                method = (Method) obj;
            }
        } else {
            method = findSetRemoveOnCancelPolicyMethod(scheduledExecutorService);
        }
        if (method == null) {
            return false;
        }
        try {
            method.invoke(scheduledExecutorService, true);
            return true;
        } catch (IllegalAccessException e) {
            RxJavaHooks.onError(e);
            return false;
        } catch (IllegalArgumentException e2) {
            RxJavaHooks.onError(e2);
            return false;
        } catch (InvocationTargetException e3) {
            RxJavaHooks.onError(e3);
            return false;
        }
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.isUnsubscribed;
    }

    @Override // p660rx.Scheduler.Worker
    public Subscription schedule(Action0 action0) {
        return schedule(action0, 0L, null);
    }

    @Override // p660rx.Scheduler.Worker
    public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
        return this.isUnsubscribed ? Subscriptions.unsubscribed() : scheduleActual(action0, j, timeUnit);
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit) {
        ScheduledAction scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0));
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit, SubscriptionList subscriptionList) {
        ScheduledAction scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0), subscriptionList);
        subscriptionList.add(scheduledAction);
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit, CompositeSubscription compositeSubscription) {
        ScheduledAction scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0), compositeSubscription);
        compositeSubscription.add(scheduledAction);
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        this.isUnsubscribed = true;
        this.executor.shutdownNow();
        deregisterExecutor(this.executor);
    }
}
