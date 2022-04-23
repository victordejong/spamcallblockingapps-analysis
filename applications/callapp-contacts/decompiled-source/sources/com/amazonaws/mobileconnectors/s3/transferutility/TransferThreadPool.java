package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool.class */
public class TransferThreadPool {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6730a = LogFactory.a(TransferService.class);

    /* renamed from: b  reason: collision with root package name */
    private static ExecutorService f6731b;

    /* renamed from: c  reason: collision with root package name */
    private static ExecutorService f6732c;

    TransferThreadPool() {
    }

    public static <T> Future<T> a(Callable<T> callable) {
        a(TransferUtilityOptions.a());
        return callable instanceof UploadPartTask ? f6732c.submit(callable) : f6731b.submit(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) {
        synchronized (TransferThreadPool.class) {
            try {
                f6730a.b("Initializing the thread pool of size: ".concat(String.valueOf(i)));
                int max = Math.max((int) Math.ceil(i / 2.0d), 1);
                if (f6731b == null) {
                    f6731b = b(max);
                }
                if (f6732c == null) {
                    f6732c = b(max);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static ExecutorService b(int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
