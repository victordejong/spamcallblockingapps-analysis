package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p062h.AbstractC1304m;
import com.google.android.datatransport.p062h.p067x.p068j.AbstractC1318c;
import com.google.android.datatransport.runtime.synchronization.AbstractC1345a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.p */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/p.class */
public class C1343p {

    /* renamed from: a */
    private final Executor f5427a;

    /* renamed from: b */
    private final AbstractC1318c f5428b;

    /* renamed from: c */
    private final AbstractC1344r f5429c;

    /* renamed from: d */
    private final AbstractC1345a f5430d;

    C1343p(Executor executor, AbstractC1318c abstractC1318c, AbstractC1344r abstractC1344r, AbstractC1345a abstractC1345a) {
        this.f5427a = executor;
        this.f5428b = abstractC1318c;
        this.f5429c = abstractC1344r;
        this.f5430d = abstractC1345a;
    }

    /* renamed from: b */
    static /* synthetic */ Object m9072b(C1343p c1343p) {
        for (AbstractC1304m abstractC1304m : c1343p.f5428b.m9176E()) {
            c1343p.f5429c.m9070a(abstractC1304m, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m9073a() {
        this.f5427a.execute(RunnableC1342n.m9074a(this));
    }
}
