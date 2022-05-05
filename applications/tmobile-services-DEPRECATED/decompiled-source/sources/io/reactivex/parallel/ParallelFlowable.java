package io.reactivex.parallel;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.subscriptions.EmptySubscription;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/parallel/ParallelFlowable.class */
public abstract class ParallelFlowable<T> {
    /* renamed from: a */
    public abstract int mo3379a();

    /* renamed from: b */
    public abstract void mo3378b(@NonNull Subscriber<? super T>[] subscriberArr);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final boolean m3377c(@NonNull Subscriber<?>[] subscriberArr) {
        int a = mo3379a();
        if (subscriberArr.length == a) {
            return true;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + a + ", subscribers = " + subscriberArr.length);
        for (Subscriber<?> subscriber : subscriberArr) {
            EmptySubscription.error(illegalArgumentException, subscriber);
        }
        return false;
    }
}
