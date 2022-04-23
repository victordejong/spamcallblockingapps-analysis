package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.scheduling.a.c;
import java.util.concurrent.Executor;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/n.class */
public final class n implements b<h> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Context> f20584a;

    /* renamed from: b  reason: collision with root package name */
    private final a<e> f20585b;

    /* renamed from: c  reason: collision with root package name */
    private final a<c> f20586c;

    /* renamed from: d  reason: collision with root package name */
    private final a<s> f20587d;
    private final a<Executor> e;
    private final a<com.google.android.datatransport.runtime.synchronization.a> f;
    private final a<com.google.android.datatransport.runtime.d.a> g;

    public n(a<Context> aVar, a<e> aVar2, a<c> aVar3, a<s> aVar4, a<Executor> aVar5, a<com.google.android.datatransport.runtime.synchronization.a> aVar6, a<com.google.android.datatransport.runtime.d.a> aVar7) {
        this.f20584a = aVar;
        this.f20585b = aVar2;
        this.f20586c = aVar3;
        this.f20587d = aVar4;
        this.e = aVar5;
        this.f = aVar6;
        this.g = aVar7;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new h(this.f20584a.a(), this.f20585b.a(), this.f20586c.a(), this.f20587d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
