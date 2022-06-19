package com.allinone.callerid.util;

import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.allinone.callerid.util.e1 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/e1.class */
public class C3735e1 {

    /* renamed from: a */
    private static final ExecutorService f11919a = Executors.newCachedThreadPool();

    /* renamed from: b */
    private static final Executor f11920b = AsyncTask.THREAD_POOL_EXECUTOR;

    /* renamed from: a */
    public static Executor m24405a() {
        return Build.VERSION.SDK_INT >= 30 ? f11920b : f11919a;
    }
}
