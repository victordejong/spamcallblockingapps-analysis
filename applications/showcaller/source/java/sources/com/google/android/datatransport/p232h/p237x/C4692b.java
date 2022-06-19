package com.google.android.datatransport.p232h.p237x;

import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
/* renamed from: com.google.android.datatransport.h.x.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/b.class */
public final /* synthetic */ class C4692b implements AbstractC4794a.AbstractC4795a {

    /* renamed from: a */
    private final C4693c f14264a;

    /* renamed from: b */
    private final AbstractC4673m f14265b;

    /* renamed from: c */
    private final AbstractC4664h f14266c;

    private C4692b(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        this.f14264a = c4693c;
        this.f14265b = abstractC4673m;
        this.f14266c = abstractC4664h;
    }

    /* renamed from: a */
    public static AbstractC4794a.AbstractC4795a m21983a(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        return new C4692b(c4693c, abstractC4673m, abstractC4664h);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a.AbstractC4795a
    public Object execute() {
        return C4693c.m21982b(this.f14264a, this.f14265b, this.f14266c);
    }
}
