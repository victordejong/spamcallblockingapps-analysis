package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/h.class */
public final /* synthetic */ class C4783h implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final C4787l f14411a;

    /* renamed from: b */
    private final AbstractC4673m f14412b;

    private C4783h(C4787l c4787l, AbstractC4673m abstractC4673m) {
        this.f14411a = c4787l;
        this.f14412b = abstractC4673m;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21786a(C4787l c4787l, AbstractC4673m abstractC4673m) {
        return new C4783h(c4787l, abstractC4673m);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        Iterable mo21927t;
        mo21927t = this.f14411a.f14424c.mo21927t(this.f14412b);
        return mo21927t;
    }
}
