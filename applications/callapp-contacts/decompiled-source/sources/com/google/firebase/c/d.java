package com.google.firebase.c;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/d.class */
final /* synthetic */ class d implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final d f32228a = new d();

    private d() {
    }

    public static ThreadFactory a() {
        return f32228a;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return a.a(runnable);
    }
}
