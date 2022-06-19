package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* renamed from: com.google.firebase.remoteconfig.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/c.class */
public final /* synthetic */ class C2501c implements AbstractC2387a {

    /* renamed from: a */
    private final C2503e f10763a;

    /* renamed from: b */
    private final AbstractC2397g f10764b;

    /* renamed from: c */
    private final AbstractC2397g f10765c;

    private C2501c(C2503e c2503e, AbstractC2397g abstractC2397g, AbstractC2397g abstractC2397g2) {
        this.f10763a = c2503e;
        this.f10764b = abstractC2397g;
        this.f10765c = abstractC2397g2;
    }

    /* renamed from: b */
    public static AbstractC2387a m3313b(C2503e c2503e, AbstractC2397g abstractC2397g, AbstractC2397g abstractC2397g2) {
        return new C2501c(c2503e, abstractC2397g, abstractC2397g2);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g abstractC2397g) {
        return C2503e.m3304h(this.f10763a, this.f10764b, this.f10765c, abstractC2397g);
    }
}
