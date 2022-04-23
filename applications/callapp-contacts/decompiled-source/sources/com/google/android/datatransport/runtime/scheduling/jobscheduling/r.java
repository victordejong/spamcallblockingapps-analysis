package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.scheduling.a.c;
import java.util.concurrent.Executor;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/r.class */
public final class r implements b<o> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Executor> f20594a;

    /* renamed from: b  reason: collision with root package name */
    private final a<c> f20595b;

    /* renamed from: c  reason: collision with root package name */
    private final a<s> f20596c;

    /* renamed from: d  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.synchronization.a> f20597d;

    public r(a<Executor> aVar, a<c> aVar2, a<s> aVar3, a<com.google.android.datatransport.runtime.synchronization.a> aVar4) {
        this.f20594a = aVar;
        this.f20595b = aVar2;
        this.f20596c = aVar3;
        this.f20597d = aVar4;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new o(this.f20594a.a(), this.f20595b.a(), this.f20596c.a(), this.f20597d.a());
    }
}
