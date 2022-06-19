package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.o */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/o.class */
final /* synthetic */ class C4790o implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final C4791p f14437a;

    private C4790o(C4791p c4791p) {
        this.f14437a = c4791p;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21771a(C4791p c4791p) {
        return new C4790o(c4791p);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        return C4791p.m21769b(this.f14437a);
    }
}
