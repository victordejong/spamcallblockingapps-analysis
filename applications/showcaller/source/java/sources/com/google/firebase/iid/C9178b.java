package com.google.firebase.iid;

import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/b.class */
class C9178b {

    /* renamed from: a */
    private static final Executor f39521a = ExecutorC9177a.f39520d;

    /* renamed from: a */
    public static Executor m1609a() {
        return f39521a;
    }

    /* renamed from: b */
    public static ExecutorService m1608b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC6244a("firebase-iid-executor"));
    }
}
