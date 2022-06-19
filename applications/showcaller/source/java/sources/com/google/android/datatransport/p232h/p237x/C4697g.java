package com.google.android.datatransport.p232h.p237x;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p233u.p234a.C4686d;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.x.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/g.class */
public final class C4697g implements AbstractC4684b<SchedulerConfig> {

    /* renamed from: a */
    private final AbstractC9476a<AbstractC4746a> f14278a;

    public C4697g(AbstractC9476a<AbstractC4746a> abstractC9476a) {
        this.f14278a = abstractC9476a;
    }

    /* renamed from: a */
    public static SchedulerConfig m21975a(AbstractC4746a abstractC4746a) {
        return (SchedulerConfig) C4686d.m21994c(AbstractC4696f.m21976a(abstractC4746a), "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: b */
    public static C4697g m21974b(AbstractC9476a<AbstractC4746a> abstractC9476a) {
        return new C4697g(abstractC9476a);
    }

    /* renamed from: c */
    public SchedulerConfig get() {
        return m21975a(this.f14278a.get());
    }
}
