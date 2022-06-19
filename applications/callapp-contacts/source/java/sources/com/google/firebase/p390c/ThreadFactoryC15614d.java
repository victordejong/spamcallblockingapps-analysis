package com.google.firebase.p390c;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.firebase.c.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/d.class */
final /* synthetic */ class ThreadFactoryC15614d implements ThreadFactory {

    /* renamed from: a */
    private static final ThreadFactoryC15614d f55998a = new ThreadFactoryC15614d();

    private ThreadFactoryC15614d() {
    }

    /* renamed from: a */
    public static ThreadFactory m8558a() {
        return f55998a;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return C15611a.m8560a(runnable);
    }
}
