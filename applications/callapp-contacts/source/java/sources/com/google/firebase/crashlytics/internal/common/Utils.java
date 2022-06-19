package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/Utils.class */
public final class Utils {
    private static final ExecutorService TASK_CONTINUATION_EXECUTOR_SERVICE = ExecutorUtils.buildSingleThreadExecutorService("awaitEvenIfOnMainThread task continuation executor");

    private Utils() {
    }

    public static <T> T awaitEvenIfOnMainThread(AbstractC14185h<T> abstractC14185h) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        abstractC14185h.mo11484a(TASK_CONTINUATION_EXECUTOR_SERVICE, Utils$$Lambda$1.lambdaFactory$(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (abstractC14185h.mo11478b()) {
            return abstractC14185h.mo11475d();
        }
        if (abstractC14185h.mo11476c()) {
            throw new CancellationException("Task is already canceled");
        }
        if (!abstractC14185h.mo11491a()) {
            throw new TimeoutException();
        }
        throw new IllegalStateException(abstractC14185h.mo11474e());
    }

    public static <T> AbstractC14185h<T> callTask(Executor executor, final Callable<AbstractC14185h<T>> callable) {
        final C14186i c14186i = new C14186i();
        executor.execute(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.Utils.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((AbstractC14185h) callable.call()).mo11490a((AbstractC14179b) new AbstractC14179b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.2.1
                        @Override // com.google.android.gms.tasks.AbstractC14179b
                        public Void then(AbstractC14185h<T> abstractC14185h) throws Exception {
                            if (abstractC14185h.mo11478b()) {
                                c14186i.m11471a((C14186i) abstractC14185h.mo11475d());
                                return null;
                            }
                            c14186i.m11472a(abstractC14185h.mo11474e());
                            return null;
                        }
                    });
                } catch (Exception e) {
                    c14186i.m11472a(e);
                }
            }
        });
        return c14186i.m11473a();
    }

    public static <T> AbstractC14185h<T> race(AbstractC14185h<T> abstractC14185h, AbstractC14185h<T> abstractC14185h2) {
        final C14186i c14186i = new C14186i();
        AbstractC14179b abstractC14179b = (AbstractC14179b<T, Void>) new AbstractC14179b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.1
            @Override // com.google.android.gms.tasks.AbstractC14179b
            public Void then(AbstractC14185h<T> abstractC14185h3) throws Exception {
                if (abstractC14185h3.mo11478b()) {
                    c14186i.m11469b((C14186i) abstractC14185h3.mo11475d());
                    return null;
                }
                c14186i.m11470b(abstractC14185h3.mo11474e());
                return null;
            }
        };
        abstractC14185h.mo11490a(abstractC14179b);
        abstractC14185h2.mo11490a(abstractC14179b);
        return c14186i.m11473a();
    }
}
