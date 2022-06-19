package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15728b;
/* renamed from: com.google.firebase.components.n */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/n.class */
public final /* synthetic */ class RunnableC15641n implements Runnable {

    /* renamed from: a */
    private final C15652v f56046a;

    /* renamed from: b */
    private final AbstractC15728b f56047b;

    private RunnableC15641n(C15652v c15652v, AbstractC15728b abstractC15728b) {
        this.f56046a = c15652v;
        this.f56047b = abstractC15728b;
    }

    /* renamed from: a */
    public static Runnable m8518a(C15652v c15652v, AbstractC15728b abstractC15728b) {
        return new RunnableC15641n(c15652v, abstractC15728b);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f56046a.m8501a(this.f56047b);
    }
}
