package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.backends.AbstractC4761e;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import java.util.concurrent.Executor;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/m.class */
public final class C4788m implements AbstractC4684b<C4787l> {

    /* renamed from: a */
    private final AbstractC9476a<Context> f14429a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4761e> f14430b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4710c> f14431c;

    /* renamed from: d */
    private final AbstractC9476a<AbstractC4793r> f14432d;

    /* renamed from: e */
    private final AbstractC9476a<Executor> f14433e;

    /* renamed from: f */
    private final AbstractC9476a<AbstractC4794a> f14434f;

    /* renamed from: g */
    private final AbstractC9476a<AbstractC4746a> f14435g;

    public C4788m(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4761e> abstractC9476a2, AbstractC9476a<AbstractC4710c> abstractC9476a3, AbstractC9476a<AbstractC4793r> abstractC9476a4, AbstractC9476a<Executor> abstractC9476a5, AbstractC9476a<AbstractC4794a> abstractC9476a6, AbstractC9476a<AbstractC4746a> abstractC9476a7) {
        this.f14429a = abstractC9476a;
        this.f14430b = abstractC9476a2;
        this.f14431c = abstractC9476a3;
        this.f14432d = abstractC9476a4;
        this.f14433e = abstractC9476a5;
        this.f14434f = abstractC9476a6;
        this.f14435g = abstractC9476a7;
    }

    /* renamed from: a */
    public static C4788m m21775a(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4761e> abstractC9476a2, AbstractC9476a<AbstractC4710c> abstractC9476a3, AbstractC9476a<AbstractC4793r> abstractC9476a4, AbstractC9476a<Executor> abstractC9476a5, AbstractC9476a<AbstractC4794a> abstractC9476a6, AbstractC9476a<AbstractC4746a> abstractC9476a7) {
        return new C4788m(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4, abstractC9476a5, abstractC9476a6, abstractC9476a7);
    }

    /* renamed from: c */
    public static C4787l m21773c(Context context, AbstractC4761e abstractC4761e, AbstractC4710c abstractC4710c, AbstractC4793r abstractC4793r, Executor executor, AbstractC4794a abstractC4794a, AbstractC4746a abstractC4746a) {
        return new C4787l(context, abstractC4761e, abstractC4710c, abstractC4793r, executor, abstractC4794a, abstractC4746a);
    }

    /* renamed from: b */
    public C4787l get() {
        return m21773c(this.f14429a.get(), this.f14430b.get(), this.f14431c.get(), this.f14432d.get(), this.f14433e.get(), this.f14434f.get(), this.f14435g.get());
    }
}
