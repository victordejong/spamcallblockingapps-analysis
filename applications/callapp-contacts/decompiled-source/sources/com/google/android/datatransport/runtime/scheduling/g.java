package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.a.a.e;
import com.google.android.datatransport.runtime.scheduling.a.c;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/g.class */
public final class g implements b<s> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Context> f20542a;

    /* renamed from: b  reason: collision with root package name */
    private final a<c> f20543b;

    /* renamed from: c  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> f20544c;

    /* renamed from: d  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20545d;

    public g(a<Context> aVar, a<c> aVar2, a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> aVar3, a<com.google.android.datatransport.runtime.d.a> aVar4) {
        this.f20542a = aVar;
        this.f20543b = aVar2;
        this.f20544c = aVar3;
        this.f20545d = aVar4;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        Context a2 = this.f20542a.a();
        c a3 = this.f20543b.a();
        com.google.android.datatransport.runtime.scheduling.jobscheduling.g a4 = this.f20544c.a();
        return (s) e.a(Build.VERSION.SDK_INT >= 21 ? new com.google.android.datatransport.runtime.scheduling.jobscheduling.e(a2, a3, a4) : new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(a2, a3, this.f20545d.a(), a4), "Cannot return null from a non-@Nullable @Provides method");
    }
}
