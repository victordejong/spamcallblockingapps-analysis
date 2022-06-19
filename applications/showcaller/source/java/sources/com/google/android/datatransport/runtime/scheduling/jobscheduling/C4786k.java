package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/k.class */
public final /* synthetic */ class C4786k implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final C4787l f14419a;

    /* renamed from: b */
    private final AbstractC4673m f14420b;

    /* renamed from: c */
    private final int f14421c;

    private C4786k(C4787l c4787l, AbstractC4673m abstractC4673m, int i) {
        this.f14419a = c4787l;
        this.f14420b = abstractC4673m;
        this.f14421c = i;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21783a(C4787l c4787l, AbstractC4673m abstractC4673m, int i) {
        return new C4786k(c4787l, abstractC4673m, i);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        return this.f14419a.f14425d.mo21764a(this.f14420b, this.f14421c + 1);
    }
}
