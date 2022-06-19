package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.p */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/p.class */
public class C4791p {

    /* renamed from: a */
    private final Executor f14438a;

    /* renamed from: b */
    private final AbstractC4710c f14439b;

    /* renamed from: c */
    private final AbstractC4793r f14440c;

    /* renamed from: d */
    private final AbstractC4794a f14441d;

    public C4791p(Executor executor, AbstractC4710c abstractC4710c, AbstractC4793r abstractC4793r, AbstractC4794a abstractC4794a) {
        this.f14438a = executor;
        this.f14439b = abstractC4710c;
        this.f14440c = abstractC4793r;
        this.f14441d = abstractC4794a;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m21769b(C4791p c4791p) {
        for (AbstractC4673m abstractC4673m : c4791p.f14439b.mo21934B()) {
            c4791p.f14440c.mo21764a(abstractC4673m, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m21770a() {
        this.f14438a.execute(RunnableC4789n.m21772a(this));
    }
}
