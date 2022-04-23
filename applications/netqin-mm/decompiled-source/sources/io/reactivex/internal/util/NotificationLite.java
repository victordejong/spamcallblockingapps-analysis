package io.reactivex.internal.util;

import java.io.Serializable;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite.class */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$DisposableNotification.class */
    public static final class DisposableNotification implements Serializable {
        public static final long serialVersionUID = -7482590109178395495L;

        /* renamed from: d */
        public final AbstractC9861b f38571d;

        public DisposableNotification(AbstractC9861b bVar) {
            this.f38571d = bVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f38571d + "]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$ErrorNotification.class */
    public static final class ErrorNotification implements Serializable {
        public static final long serialVersionUID = -8759979445933046293L;

        /* renamed from: e */
        public final Throwable f38572e;

        public ErrorNotification(Throwable th) {
            this.f38572e = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ErrorNotification) {
                return C9650a.m2096a(this.f38572e, ((ErrorNotification) obj).f38572e);
            }
            return false;
        }

        public int hashCode() {
            return this.f38572e.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f38572e + "]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/NotificationLite$SubscriptionNotification.class */
    public static final class SubscriptionNotification implements Serializable {
        public static final long serialVersionUID = -1322257508628817540L;

        /* renamed from: s */
        public final AbstractC10434d f38573s;

        public SubscriptionNotification(AbstractC10434d dVar) {
            this.f38573s = dVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f38573s + "]";
        }
    }

    public static <T> boolean accept(Object obj, AbstractC9844r<? super T> rVar) {
        if (obj == COMPLETE) {
            rVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            rVar.onError(((ErrorNotification) obj).f38572e);
            return true;
        } else {
            rVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean accept(Object obj, AbstractC10433c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            cVar.onError(((ErrorNotification) obj).f38572e);
            return true;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, AbstractC9844r<? super T> rVar) {
        if (obj == COMPLETE) {
            rVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            rVar.onError(((ErrorNotification) obj).f38572e);
            return true;
        } else if (obj instanceof DisposableNotification) {
            rVar.onSubscribe(((DisposableNotification) obj).f38571d);
            return false;
        } else {
            rVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, AbstractC10433c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            cVar.onError(((ErrorNotification) obj).f38572e);
            return true;
        } else if (obj instanceof SubscriptionNotification) {
            cVar.onSubscribe(((SubscriptionNotification) obj).f38573s);
            return false;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(AbstractC9861b bVar) {
        return new DisposableNotification(bVar);
    }

    public static Object error(Throwable th) {
        return new ErrorNotification(th);
    }

    public static AbstractC9861b getDisposable(Object obj) {
        return ((DisposableNotification) obj).f38571d;
    }

    public static Throwable getError(Object obj) {
        return ((ErrorNotification) obj).f38572e;
    }

    public static AbstractC10434d getSubscription(Object obj) {
        return ((SubscriptionNotification) obj).f38573s;
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

    public static Object subscription(AbstractC10434d dVar) {
        return new SubscriptionNotification(dVar);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }
}
