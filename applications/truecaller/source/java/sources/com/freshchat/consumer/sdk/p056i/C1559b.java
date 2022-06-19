package com.freshchat.consumer.sdk.p056i;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.freshchat.consumer.sdk.i.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/i/b.class */
public class C1559b {
    public static final String TAG = "com.freshchat.consumer.sdk.i.b";

    /* renamed from: gV */
    private static final BlockingQueue<Runnable> f4222gV;

    /* renamed from: gW */
    public static final ThreadPoolExecutor f4223gW;

    /* renamed from: gX */
    public static final Map<String, Integer> f4224gX = new HashMap();

    static {
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(5);
        f4222gV = arrayBlockingQueue;
        f4223gW = new ThreadPoolExecutor(5, 5, 30L, TimeUnit.SECONDS, arrayBlockingQueue);
    }

    /* renamed from: aq */
    public static int m40514aq(String str) {
        Integer num = f4224gX.get(str);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}
