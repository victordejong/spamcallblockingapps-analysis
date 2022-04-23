package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
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

    public static <T> T awaitEvenIfOnMainThread(h<T> hVar) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        hVar.a(TASK_CONTINUATION_EXECUTOR_SERVICE, Utils$$Lambda$1.lambdaFactory$(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (hVar.b()) {
            return hVar.d();
        }
        if (hVar.c()) {
            throw new CancellationException("Task is already canceled");
        } else if (hVar.a()) {
            throw new IllegalStateException(hVar.e());
        } else {
            throw new TimeoutException();
        }
    }

    public static <T> h<T> callTask(Executor executor, final Callable<h<T>> callable) {
        final i iVar = new i();
        executor.execute(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.Utils.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((h) callable.call()).a((b) new b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.2.1
                        @Override // com.google.android.gms.tasks.b
                        public Void then(h<T> hVar) throws Exception {
                            if (hVar.b()) {
                                iVar.a((i) hVar.d());
                                return null;
                            }
                            iVar.a(hVar.e());
                            return null;
                        }
                    });
                } catch (Exception e) {
                    iVar.a(e);
                }
            }
        });
        return iVar.a();
    }

    public static <T> h<T> race(h<T> hVar, h<T> hVar2) {
        final i iVar = new i();
        b bVar = (b<T, Void>) new b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.1
            @Override // com.google.android.gms.tasks.b
            public Void then(h<T> hVar3) throws Exception {
                if (hVar3.b()) {
                    i.this.b((i) hVar3.d());
                    return null;
                }
                i.this.b(hVar3.e());
                return null;
            }
        };
        hVar.a(bVar);
        hVar2.a(bVar);
        return iVar.a();
    }
}
