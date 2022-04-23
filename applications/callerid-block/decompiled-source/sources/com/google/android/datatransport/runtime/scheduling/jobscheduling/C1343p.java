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

    C1343p(Executor executor, AbstractC1318c cVar, AbstractC1344r rVar, AbstractC1345a aVar) {
        this.f5427a = executor;
        this.f5428b = cVar;
        this.f5429c = rVar;
        this.f5430d = aVar;
    }

    /* renamed from: b */
    static /* synthetic */ Object m9072b(C1343p pVar) {
        for (AbstractC1304m mVar : pVar.f5428b.m9176E()) {
            pVar.f5429c.m9070a(mVar, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m9073a() {
        this.f5427a.execute(RunnableC1342n.m9074a(this));
    }
}
