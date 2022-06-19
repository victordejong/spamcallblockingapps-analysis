package com.google.android.datatransport.p232h.p237x.p238j;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.x.j.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/c0.class */
public final class C4711c0 implements AbstractC4684b<C4705b0> {

    /* renamed from: a */
    private final AbstractC9476a<AbstractC4746a> f14305a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4746a> f14306b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4712d> f14307c;

    /* renamed from: d */
    private final AbstractC9476a<C4725h0> f14308d;

    public C4711c0(AbstractC9476a<AbstractC4746a> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4712d> abstractC9476a3, AbstractC9476a<C4725h0> abstractC9476a4) {
        this.f14305a = abstractC9476a;
        this.f14306b = abstractC9476a2;
        this.f14307c = abstractC9476a3;
        this.f14308d = abstractC9476a4;
    }

    /* renamed from: a */
    public static C4711c0 m21925a(AbstractC9476a<AbstractC4746a> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4712d> abstractC9476a3, AbstractC9476a<C4725h0> abstractC9476a4) {
        return new C4711c0(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4);
    }

    /* renamed from: c */
    public static C4705b0 m21923c(AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, Object obj, Object obj2) {
        return new C4705b0(abstractC4746a, abstractC4746a2, (AbstractC4712d) obj, (C4725h0) obj2);
    }

    /* renamed from: b */
    public C4705b0 get() {
        return m21923c(this.f14305a.get(), this.f14306b.get(), this.f14307c.get(), this.f14308d.get());
    }
}
