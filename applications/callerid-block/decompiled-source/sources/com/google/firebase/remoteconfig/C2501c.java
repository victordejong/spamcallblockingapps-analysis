package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/c.class */
public final /* synthetic */ class C2501c implements AbstractC2387a {

    /* renamed from: a */
    private final C2503e f10763a;

    /* renamed from: b */
    private final AbstractC2397g f10764b;

    /* renamed from: c */
    private final AbstractC2397g f10765c;

    private C2501c(C2503e eVar, AbstractC2397g gVar, AbstractC2397g gVar2) {
        this.f10763a = eVar;
        this.f10764b = gVar;
        this.f10765c = gVar2;
    }

    /* renamed from: b */
    public static AbstractC2387a m3313b(C2503e eVar, AbstractC2397g gVar, AbstractC2397g gVar2) {
        return new C2501c(eVar, gVar, gVar2);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g gVar) {
        return C2503e.m3304h(this.f10763a, this.f10764b, this.f10765c, gVar);
    }
}
