package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.synchronization.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/p.class */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f20592a;

    private p(o oVar) {
        this.f20592a = oVar;
    }

    public static Runnable a(o oVar) {
        return new p(oVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        final o oVar = this.f20592a;
        oVar.f20591d.a(new a.AbstractC0418a(oVar) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.q

            /* renamed from: a  reason: collision with root package name */
            private final o f20593a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20593a = oVar;
            }

            @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
            public final Object a() {
                o oVar2 = this.f20593a;
                for (l lVar : oVar2.f20589b.a()) {
                    oVar2.f20590c.a(lVar, 1);
                }
                return null;
            }
        });
    }
}
