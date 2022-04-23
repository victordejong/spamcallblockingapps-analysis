package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.scheduling.a.c;
import com.google.android.datatransport.runtime.synchronization.a;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    final Context f20566a;

    /* renamed from: b  reason: collision with root package name */
    final e f20567b;

    /* renamed from: c  reason: collision with root package name */
    final c f20568c;

    /* renamed from: d  reason: collision with root package name */
    final s f20569d;
    final a e;
    final com.google.android.datatransport.runtime.d.a f;
    private final Executor g;

    public h(Context context, e eVar, c cVar, s sVar, Executor executor, a aVar, com.google.android.datatransport.runtime.d.a aVar2) {
        this.f20566a = context;
        this.f20567b = eVar;
        this.f20568c = cVar;
        this.f20569d = sVar;
        this.g = executor;
        this.e = aVar;
        this.f = aVar2;
    }

    public final void a(l lVar, int i, Runnable runnable) {
        this.g.execute(i.a(this, lVar, i, runnable));
    }
}
