package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferThreadPool */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool.class */
public class TransferThreadPool {

    /* renamed from: a */
    private static final Log f12229a = LogFactory.m38584a(TransferService.class);

    /* renamed from: b */
    private static ExecutorService f12230b;

    /* renamed from: c */
    private static ExecutorService f12231c;

    TransferThreadPool() {
    }

    /* renamed from: a */
    public static <T> Future<T> m38525a(Callable<T> callable) {
        m38526a(TransferUtilityOptions.m38520a());
        return callable instanceof UploadPartTask ? f12231c.submit(callable) : f12230b.submit(callable);
    }

    /* renamed from: a */
    public static void m38526a(int i) {
        synchronized (TransferThreadPool.class) {
            try {
                f12229a.mo38593b("Initializing the thread pool of size: ".concat(String.valueOf(i)));
                int max = Math.max((int) Math.ceil(i / 2.0d), 1);
                if (f12230b == null) {
                    f12230b = m38524b(max);
                }
                if (f12231c == null) {
                    f12231c = m38524b(max);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static ExecutorService m38524b(int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
