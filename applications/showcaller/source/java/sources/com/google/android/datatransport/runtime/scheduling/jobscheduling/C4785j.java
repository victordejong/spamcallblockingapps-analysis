package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.j */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/j.class */
public final /* synthetic */ class C4785j implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final AbstractC4710c f14418a;

    private C4785j(AbstractC4710c abstractC4710c) {
        this.f14418a = abstractC4710c;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21784a(AbstractC4710c abstractC4710c) {
        return new C4785j(abstractC4710c);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        return Integer.valueOf(this.f14418a.mo21929i());
    }
}
