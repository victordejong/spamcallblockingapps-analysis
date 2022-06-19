package com.huawei.hms.framework.common;

import com.razorpay.AnalyticsConstants;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/ExecutorsUtils.class */
public class ExecutorsUtils {
    private static final String THREADNAME_HEADER = "NetworkKit_";

    public static ThreadFactory createThreadFactory(final String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new NullPointerException("ThreadName is empty");
        }
        return new ThreadFactory() { // from class: com.huawei.hms.framework.common.ExecutorsUtils.1
            private final AtomicInteger threadNumbers = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                StringBuilder m8728C = C22128a.m8728C(ExecutorsUtils.THREADNAME_HEADER);
                m8728C.append(str);
                m8728C.append(AnalyticsConstants.DELIMITER_MAIN);
                m8728C.append(this.threadNumbers.getAndIncrement());
                return new Thread(runnable, m8728C.toString());
            }
        };
    }

    public static ExecutorService newCachedThreadPool(String str) {
        return new ThreadPoolExcutorEnhance(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), createThreadFactory(str));
    }

    public static ExecutorService newFixedThreadPool(int i, String str) {
        return new ThreadPoolExcutorEnhance(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), createThreadFactory(str));
    }

    public static ScheduledExecutorService newScheduledThreadPool(int i, String str) {
        return new ScheduledThreadPoolExecutorEnhance(i, createThreadFactory(str));
    }

    public static ExecutorService newSingleThreadExecutor(String str) {
        return ExecutorsEnhance.newSingleThreadExecutor(createThreadFactory(str));
    }
}
