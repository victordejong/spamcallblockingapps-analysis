package com.google.android.datatransport.p232h.p237x;

import android.content.Context;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p233u.p234a.C4686d;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.x.i */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/i.class */
public final class C4699i implements AbstractC4684b<AbstractC4793r> {

    /* renamed from: a */
    private final AbstractC9476a<Context> f14279a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4710c> f14280b;

    /* renamed from: c */
    private final AbstractC9476a<SchedulerConfig> f14281c;

    /* renamed from: d */
    private final AbstractC9476a<AbstractC4746a> f14282d;

    public C4699i(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4710c> abstractC9476a2, AbstractC9476a<SchedulerConfig> abstractC9476a3, AbstractC9476a<AbstractC4746a> abstractC9476a4) {
        this.f14279a = abstractC9476a;
        this.f14280b = abstractC9476a2;
        this.f14281c = abstractC9476a3;
        this.f14282d = abstractC9476a4;
    }

    /* renamed from: a */
    public static C4699i m21971a(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4710c> abstractC9476a2, AbstractC9476a<SchedulerConfig> abstractC9476a3, AbstractC9476a<AbstractC4746a> abstractC9476a4) {
        return new C4699i(abstractC9476a, abstractC9476a2, abstractC9476a3, abstractC9476a4);
    }

    /* renamed from: c */
    public static AbstractC4793r m21969c(Context context, AbstractC4710c abstractC4710c, SchedulerConfig schedulerConfig, AbstractC4746a abstractC4746a) {
        return (AbstractC4793r) C4686d.m21994c(AbstractC4698h.m21972a(context, abstractC4710c, schedulerConfig, abstractC4746a), "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: b */
    public AbstractC4793r get() {
        return m21969c(this.f14279a.get(), this.f14280b.get(), this.f14281c.get(), this.f14282d.get());
    }
}
