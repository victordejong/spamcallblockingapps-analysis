package p080e5;

import android.os.Looper;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p229s2.C4280b;
/* renamed from: e5.l0 */
/* loaded from: classes-dex2jar.jar:e5/l0.class */
public final class C2564l0 {

    /* renamed from: a */
    public static final ExecutorService f8944a = C2545d0.m3458a("awaitEvenIfOnMainThread task continuation executor");

    /* renamed from: a */
    public static <T> T m3433a(Task<T> task) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        task.continueWith(f8944a, new C4280b(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        if (!task.isComplete()) {
            throw new TimeoutException();
        }
        throw new IllegalStateException(task.getException());
    }
}
