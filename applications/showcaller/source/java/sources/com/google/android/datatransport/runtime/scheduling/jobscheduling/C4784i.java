package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.i */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/i.class */
public final /* synthetic */ class C4784i implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final C4787l f14413a;

    /* renamed from: b */
    private final BackendResponse f14414b;

    /* renamed from: c */
    private final Iterable f14415c;

    /* renamed from: d */
    private final AbstractC4673m f14416d;

    /* renamed from: e */
    private final int f14417e;

    private C4784i(C4787l c4787l, BackendResponse backendResponse, Iterable iterable, AbstractC4673m abstractC4673m, int i) {
        this.f14413a = c4787l;
        this.f14414b = backendResponse;
        this.f14415c = iterable;
        this.f14416d = abstractC4673m;
        this.f14417e = i;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21785a(C4787l c4787l, BackendResponse backendResponse, Iterable iterable, AbstractC4673m abstractC4673m, int i) {
        return new C4784i(c4787l, backendResponse, iterable, abstractC4673m, i);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        return C4787l.m21780c(this.f14413a, this.f14414b, this.f14415c, this.f14416d, this.f14417e);
    }
}
