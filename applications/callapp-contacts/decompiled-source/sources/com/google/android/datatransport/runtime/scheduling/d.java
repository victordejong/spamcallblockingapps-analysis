package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.scheduling.a.c;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import java.util.concurrent.Executor;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/d.class */
public final class d implements b<a> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Executor> f20537a;

    /* renamed from: b  reason: collision with root package name */
    private final a<e> f20538b;

    /* renamed from: c  reason: collision with root package name */
    private final a<s> f20539c;

    /* renamed from: d  reason: collision with root package name */
    private final a<c> f20540d;
    private final a<com.google.android.datatransport.runtime.synchronization.a> e;

    public d(a<Executor> aVar, a<e> aVar2, a<s> aVar3, a<c> aVar4, a<com.google.android.datatransport.runtime.synchronization.a> aVar5) {
        this.f20537a = aVar;
        this.f20538b = aVar2;
        this.f20539c = aVar3;
        this.f20540d = aVar4;
        this.e = aVar5;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new a(this.f20537a.a(), this.f20538b.a(), this.f20539c.a(), this.f20540d.a(), this.e.a());
    }
}
