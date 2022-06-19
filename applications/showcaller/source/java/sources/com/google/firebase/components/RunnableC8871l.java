package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.components.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/l.class */
public final /* synthetic */ class RunnableC8871l implements Runnable {

    /* renamed from: d */
    private final C8885u f38817d;

    /* renamed from: e */
    private final AbstractC9247b f38818e;

    private RunnableC8871l(C8885u c8885u, AbstractC9247b abstractC9247b) {
        this.f38817d = c8885u;
        this.f38818e = abstractC9247b;
    }

    /* renamed from: a */
    public static Runnable m2477a(C8885u c8885u, AbstractC9247b abstractC9247b) {
        return new RunnableC8871l(c8885u, abstractC9247b);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f38817d.m2431a(this.f38818e);
    }
}
