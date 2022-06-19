package com.google.firebase.iid;

import com.google.android.gms.common.util.p133a.ThreadFactoryC2702a;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.aq */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aq.class */
public final class C4956aq {

    /* renamed from: a */
    private static final Executor f21100a = ExecutorC4955ap.f21099a;

    /* renamed from: a */
    public static Executor m1959a() {
        return f21100a;
    }

    /* renamed from: b */
    public static ExecutorService m1958b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2702a("firebase-iid-executor"));
    }
}
