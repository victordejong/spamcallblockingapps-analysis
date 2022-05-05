package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.io.Serializable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite.class */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$DisposableNotification.class */
    static final class DisposableNotification implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;

        /* renamed from: f */
        final Disposable f19427f;

        DisposableNotification(Disposable disposable) {
            this.f19427f = disposable;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f19427f + "]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$ErrorNotification.class */
    static final class ErrorNotification implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;

        /* renamed from: f */
        final Throwable f19428f;

        ErrorNotification(Throwable th) {
            this.f19428f = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ErrorNotification) {
                return ObjectHelper.m4365c(this.f19428f, ((ErrorNotification) obj).f19428f);
            }
            return false;
        }

        public int hashCode() {
            return this.f19428f.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f19428f + "]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$SubscriptionNotification.class */
    static final class SubscriptionNotification implements Serializable {
        private static final long serialVersionUID = -1322257508628817540L;

        /* renamed from: f */
        final Subscription f19429f;

        SubscriptionNotification(Subscription subscription) {
            this.f19429f = subscription;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f19429f + "]";
        }
    }

    public static <T> boolean accept(Object obj, Observer<? super T> observer) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            observer.onError(((ErrorNotification) obj).f19428f);
            return true;
        } else {
            observer.onNext(obj);
            return false;
        }
    }

    public static <T> boolean accept(Object obj, Subscriber<? super T> subscriber) {
        if (obj == COMPLETE) {
            subscriber.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            subscriber.onError(((ErrorNotification) obj).f19428f);
            return true;
        } else {
            subscriber.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, Observer<? super T> observer) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            observer.onError(((ErrorNotification) obj).f19428f);
            return true;
        } else if (obj instanceof DisposableNotification) {
            observer.onSubscribe(((DisposableNotification) obj).f19427f);
            return false;
        } else {
            observer.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, Subscriber<? super T> subscriber) {
        if (obj == COMPLETE) {
            subscriber.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            subscriber.onError(((ErrorNotification) obj).f19428f);
            return true;
        } else if (obj instanceof SubscriptionNotification) {
            subscriber.onSubscribe(((SubscriptionNotification) obj).f19429f);
            return false;
        } else {
            subscriber.onNext(obj);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(Disposable disposable) {
        return new DisposableNotification(disposable);
    }

    public static Object error(Throwable th) {
        return new ErrorNotification(th);
    }

    public static Disposable getDisposable(Object obj) {
        return ((DisposableNotification) obj).f19427f;
    }

    public static Throwable getError(Object obj) {
        return ((ErrorNotification) obj).f19428f;
    }

    public static Subscription getSubscription(Object obj) {
        return ((SubscriptionNotification) obj).f19429f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof DisposableNotification;
    }

    public static boolean isError(Object obj) {
        return obj instanceof ErrorNotification;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof SubscriptionNotification;
    }

    public static <T> Object next(T t) {
        return t;
    }

    public static Object subscription(Subscription subscription) {
        return new SubscriptionNotification(subscription);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }
}
