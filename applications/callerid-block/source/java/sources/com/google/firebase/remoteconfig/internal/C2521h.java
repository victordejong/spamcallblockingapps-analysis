package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
import java.util.Date;
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

    private C2521h(C2524k c2524k, AbstractC2397g abstractC2397g, AbstractC2397g abstractC2397g2, Date date) {
        this.f10812a = c2524k;
        this.f10813b = abstractC2397g;
        this.f10814c = abstractC2397g2;
        this.f10815d = date;
    }

    /* renamed from: b */
    public static AbstractC2387a m3247b(C2524k c2524k, AbstractC2397g abstractC2397g, AbstractC2397g abstractC2397g2, Date date) {
        return new C2521h(c2524k, abstractC2397g, abstractC2397g2, date);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g abstractC2397g) {
        return C2524k.m3228o(this.f10812a, this.f10813b, this.f10814c, this.f10815d, abstractC2397g);
    }
}
