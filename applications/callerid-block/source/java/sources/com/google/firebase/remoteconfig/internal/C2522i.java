package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
import java.util.Date;
/* renamed from: com.google.firebase.remoteconfig.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/i.class */
public final /* synthetic */ class C2522i implements AbstractC2387a {

    /* renamed from: a */
    private final C2524k f10816a;

    /* renamed from: b */
    private final Date f10817b;

    private C2522i(C2524k c2524k, Date date) {
        this.f10816a = c2524k;
        this.f10817b = date;
    }

    /* renamed from: b */
    public static AbstractC2387a m3245b(C2524k c2524k, Date date) {
        return new C2522i(c2524k, date);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g abstractC2397g) {
        this.f10816a.m3223t(abstractC2397g, this.f10817b);
        return abstractC2397g;
    }
}
