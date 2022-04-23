package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.internal.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/h.class */
public final /* synthetic */ class C2521h implements AbstractC2387a {

    /* renamed from: a */
    private final C2524k f10812a;

    /* renamed from: b */
    private final AbstractC2397g f10813b;

    /* renamed from: c */
    private final AbstractC2397g f10814c;

    /* renamed from: d */
    private final Date f10815d;

    private C2521h(C2524k kVar, AbstractC2397g gVar, AbstractC2397g gVar2, Date date) {
        this.f10812a = kVar;
        this.f10813b = gVar;
        this.f10814c = gVar2;
        this.f10815d = date;
    }

    /* renamed from: b */
    public static AbstractC2387a m3247b(C2524k kVar, AbstractC2397g gVar, AbstractC2397g gVar2, Date date) {
        return new C2521h(kVar, gVar, gVar2, date);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g gVar) {
        return C2524k.m3228o(this.f10812a, this.f10813b, this.f10814c, this.f10815d, gVar);
    }
}
