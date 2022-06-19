package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import java.util.concurrent.Executor;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.q */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/q.class */
public final class C4792q implements AbstractC4684b<C4791p> {

    /* renamed from: a */
    private final AbstractC9476a<Executor> f14442a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4710c> f14443b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4793r> f14444c;

    /* renamed from: d */
    private final AbstractC9476a<AbstractC4794a> f14445d;

    public C4792q(AbstractC9476a<Executor> abstractC9476a, AbstractC9476a<AbstractC4710c> abstractC9476a2, AbstractC9476a<AbstractC4793r> abstractC9476a3, AbstractC9476a<AbstractC4794a> abstractC9476a4) {
        this.f14442a = abstractC9476a;
        this.f14443b = abstractC9476a2;
        this.f14444c = abstractC9476a3;
        this.f14445d = abstractC9476a4;
    }

    /* renamed from: a */
    public static C4792q m21767a(AbstractC9476a<Executor> abstractC9476a, AbstractC9476a<AbstractC4710c> abstractC9476a2, AbstractC9476a<AbstractC4793r> abstractC9476a3, AbstractC9476a<AbstractC4794a> abstractC9476a4) {
        return new C4792q(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4);
    }

    /* renamed from: c */
    public static C4791p m21765c(Executor executor, AbstractC4710c abstractC4710c, AbstractC4793r abstractC4793r, AbstractC4794a abstractC4794a) {
        return new C4791p(executor, abstractC4710c, abstractC4793r, abstractC4794a);
    }

    /* renamed from: b */
    public C4791p get() {
        return m21765c(this.f14442a.get(), this.f14443b.get(), this.f14444c.get(), this.f14445d.get());
    }
}
