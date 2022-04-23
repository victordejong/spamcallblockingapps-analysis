package com.google.firebase.iid;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f32323a = b.f32324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a() {
        return f32323a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.a.a("firebase-iid-executor"));
    }
}
