package com.google.firebase.heartbeatinfo;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.firebase.heartbeatinfo.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/c.class */
final /* synthetic */ class ThreadFactoryC9171c implements ThreadFactory {

    /* renamed from: a */
    private static final ThreadFactoryC9171c f39498a = new ThreadFactoryC9171c();

    private ThreadFactoryC9171c() {
    }

    /* renamed from: a */
    public static ThreadFactory m1655a() {
        return f39498a;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return C9172d.m1650e(runnable);
    }
}
