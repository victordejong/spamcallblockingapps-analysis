package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.scheduling.e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.o;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/s.class */
public final class s implements b<q> {

    /* renamed from: a  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20462a;

    /* renamed from: b  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20463b;

    /* renamed from: c  reason: collision with root package name */
    private final a<e> f20464c;

    /* renamed from: d  reason: collision with root package name */
    private final a<h> f20465d;
    private final a<o> e;

    public s(a<com.google.android.datatransport.runtime.d.a> aVar, a<com.google.android.datatransport.runtime.d.a> aVar2, a<e> aVar3, a<h> aVar4, a<o> aVar5) {
        this.f20462a = aVar;
        this.f20463b = aVar2;
        this.f20464c = aVar3;
        this.f20465d = aVar4;
        this.e = aVar5;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new q(this.f20462a.a(), this.f20463b.a(), this.f20464c.a(), this.f20465d.a(), this.e.a());
    }
}
