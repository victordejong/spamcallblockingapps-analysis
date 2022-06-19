package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/p.class */
public final /* synthetic */ class RunnableC10821p implements Runnable {

    /* renamed from: a */
    private final C10820o f34761a;

    private RunnableC10821p(C10820o c10820o) {
        this.f34761a = c10820o;
    }

    /* renamed from: a */
    public static Runnable m22331a(C10820o c10820o) {
        return new RunnableC10821p(c10820o);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C10820o c10820o = this.f34761a;
        c10820o.f34760d.mo22328a(new AbstractC10825a.AbstractC10826a(c10820o) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.q

            /* renamed from: a */
            private final C10820o f34762a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34762a = c10820o;
            }

            @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
            /* renamed from: a */
            public final Object mo22327a() {
                C10820o c10820o2 = this.f34762a;
                for (AbstractC10738l abstractC10738l : c10820o2.f34758b.mo22401a()) {
                    c10820o2.f34759c.mo22330a(abstractC10738l, 1);
                }
                return null;
            }
        });
    }
}
