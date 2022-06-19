package com.google.android.datatransport.p232h;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p237x.AbstractC4695e;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4787l;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4791p;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.t */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/t.class */
public final class C4682t implements AbstractC4684b<C4679r> {

    /* renamed from: a */
    private final AbstractC9476a<AbstractC4746a> f14250a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4746a> f14251b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4695e> f14252c;

    /* renamed from: d */
    private final AbstractC9476a<C4787l> f14253d;

    /* renamed from: e */
    private final AbstractC9476a<C4791p> f14254e;

    public C4682t(AbstractC9476a<AbstractC4746a> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4695e> abstractC9476a3, AbstractC9476a<C4787l> abstractC9476a4, AbstractC9476a<C4791p> abstractC9476a5) {
        this.f14250a = abstractC9476a;
        this.f14251b = abstractC9476a2;
        this.f14252c = abstractC9476a3;
        this.f14253d = abstractC9476a4;
        this.f14254e = abstractC9476a5;
    }

    /* renamed from: a */
    public static C4682t m22002a(AbstractC9476a<AbstractC4746a> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4695e> abstractC9476a3, AbstractC9476a<C4787l> abstractC9476a4, AbstractC9476a<C4791p> abstractC9476a5) {
        return new C4682t(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4, abstractC9476a5);
    }

    /* renamed from: c */
    public static C4679r m22000c(AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, AbstractC4695e abstractC4695e, C4787l c4787l, C4791p c4791p) {
        return new C4679r(abstractC4746a, abstractC4746a2, abstractC4695e, c4787l, c4791p);
    }

    /* renamed from: b */
    public C4679r get() {
        return m22000c(this.f14250a.get(), this.f14251b.get(), this.f14252c.get(), this.f14253d.get(), this.f14254e.get());
    }
}
