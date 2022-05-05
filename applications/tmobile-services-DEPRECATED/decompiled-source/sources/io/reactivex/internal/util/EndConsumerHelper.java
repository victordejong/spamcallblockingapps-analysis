package io.reactivex.internal.util;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/EndConsumerHelper.class */
public final class EndConsumerHelper {
    private EndConsumerHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static String m3444a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    /* renamed from: b */
    public static void m3443b(Class<?> cls) {
        RxJavaPlugins.m3354t(new ProtocolViolationException(m3444a(cls.getName())));
    }

    /* renamed from: c */
    public static boolean m3442c(AtomicReference<Disposable> atomicReference, Disposable disposable, Class<?> cls) {
        ObjectHelper.m4363e(disposable, "next is null");
        if (atomicReference.compareAndSet(null, disposable)) {
            return true;
        }
        disposable.dispose();
        if (atomicReference.get() == DisposableHelper.DISPOSED) {
            return false;
        }
        m3443b(cls);
        return false;
    }

    /* renamed from: d */
    public static boolean m3441d(AtomicReference<Subscription> atomicReference, Subscription subscription, Class<?> cls) {
        ObjectHelper.m4363e(subscription, "next is null");
        if (atomicReference.compareAndSet(null, subscription)) {
            return true;
        }
        subscription.cancel();
        if (atomicReference.get() == SubscriptionHelper.CANCELLED) {
            return false;
        }
        m3443b(cls);
        return false;
    }

    /* renamed from: e */
    public static boolean m3440e(Disposable disposable, Disposable disposable2, Class<?> cls) {
        ObjectHelper.m4363e(disposable2, "next is null");
        if (disposable == null) {
            return true;
        }
        disposable2.dispose();
        if (disposable == DisposableHelper.DISPOSED) {
            return false;
        }
        m3443b(cls);
        return false;
    }

    /* renamed from: f */
    public static boolean m3439f(Subscription subscription, Subscription subscription2, Class<?> cls) {
        ObjectHelper.m4363e(subscription2, "next is null");
        if (subscription == null) {
            return true;
        }
        subscription2.cancel();
        if (subscription == SubscriptionHelper.CANCELLED) {
            return false;
        }
        m3443b(cls);
        return false;
    }
}
