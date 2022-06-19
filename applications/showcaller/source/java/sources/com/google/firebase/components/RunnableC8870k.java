package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.components.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/k.class */
public final /* synthetic */ class RunnableC8870k implements Runnable {

    /* renamed from: d */
    private final C8888x f38815d;

    /* renamed from: e */
    private final AbstractC9247b f38816e;

    private RunnableC8870k(C8888x c8888x, AbstractC9247b abstractC9247b) {
        this.f38815d = c8888x;
        this.f38816e = abstractC9247b;
    }

    /* renamed from: a */
    public static Runnable m2478a(C8888x c8888x, AbstractC9247b abstractC9247b) {
        return new RunnableC8870k(c8888x, abstractC9247b);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f38815d.m2422d(this.f38816e);
    }
}
