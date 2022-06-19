package com.google.android.datatransport.p232h.p237x;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.runtime.backends.AbstractC4761e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import java.util.concurrent.Executor;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.x.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/d.class */
public final class C4694d implements AbstractC4684b<C4693c> {

    /* renamed from: a */
    private final AbstractC9476a<Executor> f14273a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4761e> f14274b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4793r> f14275c;

    /* renamed from: d */
    private final AbstractC9476a<AbstractC4710c> f14276d;

    /* renamed from: e */
    private final AbstractC9476a<AbstractC4794a> f14277e;

    public C4694d(AbstractC9476a<Executor> abstractC9476a, AbstractC9476a<AbstractC4761e> abstractC9476a2, AbstractC9476a<AbstractC4793r> abstractC9476a3, AbstractC9476a<AbstractC4710c> abstractC9476a4, AbstractC9476a<AbstractC4794a> abstractC9476a5) {
        this.f14273a = abstractC9476a;
        this.f14274b = abstractC9476a2;
        this.f14275c = abstractC9476a3;
        this.f14276d = abstractC9476a4;
        this.f14277e = abstractC9476a5;
    }

    /* renamed from: a */
    public static C4694d m21980a(AbstractC9476a<Executor> abstractC9476a, AbstractC9476a<AbstractC4761e> abstractC9476a2, AbstractC9476a<AbstractC4793r> abstractC9476a3, AbstractC9476a<AbstractC4710c> abstractC9476a4, AbstractC9476a<AbstractC4794a> abstractC9476a5) {
        return new C4694d(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4, abstractC9476a5);
    }

    /* renamed from: c */
    public static C4693c m21978c(Executor executor, AbstractC4761e abstractC4761e, AbstractC4793r abstractC4793r, AbstractC4710c abstractC4710c, AbstractC4794a abstractC4794a) {
        return new C4693c(executor, abstractC4761e, abstractC4793r, abstractC4710c, abstractC4794a);
    }

    /* renamed from: b */
    public C4693c get() {
        return m21978c(this.f14273a.get(), this.f14274b.get(), this.f14275c.get(), this.f14276d.get(), this.f14277e.get());
    }
}
