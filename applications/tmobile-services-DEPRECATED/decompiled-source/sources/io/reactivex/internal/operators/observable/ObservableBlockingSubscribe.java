package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.BlockingIgnoringReceiver;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBlockingSubscribe.class */
public final class ObservableBlockingSubscribe {
    private ObservableBlockingSubscribe() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static <T> void m3903a(ObservableSource<? extends T> observableSource) {
        BlockingIgnoringReceiver blockingIgnoringReceiver = new BlockingIgnoringReceiver();
        LambdaObserver lambdaObserver = new LambdaObserver(Functions.m4408g(), blockingIgnoringReceiver, blockingIgnoringReceiver, Functions.m4408g());
        observableSource.subscribe(lambdaObserver);
        BlockingHelper.m3448a(blockingIgnoringReceiver, lambdaObserver);
        Throwable th = blockingIgnoringReceiver.f19421f;
        if (th != null) {
            throw ExceptionHelper.m3434e(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0029  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> void m3902b(io.reactivex.ObservableSource<? extends T> r4, io.reactivex.Observer<? super T> r5) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r1 = r0
            r1.<init>()
            r6 = r0
            io.reactivex.internal.observers.BlockingObserver r0 = new io.reactivex.internal.observers.BlockingObserver
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.onSubscribe(r1)
            r0 = r4
            r1 = r7
            r0.subscribe(r1)
        L_0x001f:
            r0 = r7
            boolean r0 = r0.isDisposed()
            if (r0 == 0) goto L_0x0029
            goto L_0x0066
        L_0x0029:
            r0 = r6
            java.lang.Object r0 = r0.poll()
            r8 = r0
            r0 = r8
            r4 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0050
            r0 = r6
            java.lang.Object r0 = r0.take()     // Catch: InterruptedException -> 0x0043
            r4 = r0
            goto L_0x0050
        L_0x0043:
            r4 = move-exception
            r0 = r7
            r0.dispose()
            r0 = r5
            r1 = r4
            r0.onError(r1)
            return
        L_0x0050:
            r0 = r7
            boolean r0 = r0.isDisposed()
            if (r0 != 0) goto L_0x0066
            r0 = r4
            java.lang.Object r1 = io.reactivex.internal.observers.BlockingObserver.f15182g
            if (r0 == r1) goto L_0x0066
            r0 = r4
            r1 = r5
            boolean r0 = io.reactivex.internal.util.NotificationLite.acceptFull(r0, r1)
            if (r0 == 0) goto L_0x001f
        L_0x0066:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableBlockingSubscribe.m3902b(io.reactivex.ObservableSource, io.reactivex.Observer):void");
    }

    /* renamed from: c */
    public static <T> void m3901c(ObservableSource<? extends T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        ObjectHelper.m4363e(consumer, "onNext is null");
        ObjectHelper.m4363e(consumer2, "onError is null");
        ObjectHelper.m4363e(action, "onComplete is null");
        m3902b(observableSource, new LambdaObserver(consumer, consumer2, action, Functions.m4408g()));
    }
}
