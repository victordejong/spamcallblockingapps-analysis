package com.google.firebase.iid;

import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/a.class */
final class C15759a {

    /* renamed from: a */
    private static final Executor f56119a = ExecutorC15762b.f56120a;

    /* renamed from: a */
    public static Executor m8428a() {
        return f56119a;
    }

    /* renamed from: b */
    public static ExecutorService m8427b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC12095a("firebase-iid-executor"));
    }
}
