package com.huawei.hms.push;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.huawei.hms.push.v */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/v.class */
public class C2446v {

    /* renamed from: a */
    public static final Object f7778a = new Object();

    /* renamed from: b */
    public static ThreadPoolExecutor f7779b = new ThreadPoolExecutor(1, 50, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    public static ThreadPoolExecutor m37233a() {
        ThreadPoolExecutor threadPoolExecutor;
        synchronized (f7778a) {
            threadPoolExecutor = f7779b;
        }
        return threadPoolExecutor;
    }
}
