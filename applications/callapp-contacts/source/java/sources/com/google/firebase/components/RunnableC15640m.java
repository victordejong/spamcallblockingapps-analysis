package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15728b;
/* renamed from: com.google.firebase.components.m */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/m.class */
public final /* synthetic */ class RunnableC15640m implements Runnable {

    /* renamed from: a */
    private final C15653w f56044a;

    /* renamed from: b */
    private final AbstractC15728b f56045b;

    private RunnableC15640m(C15653w c15653w, AbstractC15728b abstractC15728b) {
        this.f56044a = c15653w;
        this.f56045b = abstractC15728b;
    }

    /* renamed from: a */
    public static Runnable m8519a(C15653w c15653w, AbstractC15728b abstractC15728b) {
        return new RunnableC15640m(c15653w, abstractC15728b);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15635j.m8533a(this.f56044a, this.f56045b);
    }
}
