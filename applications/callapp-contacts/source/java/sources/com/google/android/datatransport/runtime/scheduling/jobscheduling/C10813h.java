package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.backends.AbstractC10699e;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/h.class */
public final class C10813h {

    /* renamed from: a */
    final Context f34728a;

    /* renamed from: b */
    final AbstractC10699e f34729b;

    /* renamed from: c */
    final AbstractC10762c f34730c;

    /* renamed from: d */
    final AbstractC10824s f34731d;

    /* renamed from: e */
    final AbstractC10825a f34732e;

    /* renamed from: f */
    final AbstractC10719a f34733f;

    /* renamed from: g */
    private final Executor f34734g;

    public C10813h(Context context, AbstractC10699e abstractC10699e, AbstractC10762c abstractC10762c, AbstractC10824s abstractC10824s, Executor executor, AbstractC10825a abstractC10825a, AbstractC10719a abstractC10719a) {
        this.f34728a = context;
        this.f34729b = abstractC10699e;
        this.f34730c = abstractC10762c;
        this.f34731d = abstractC10824s;
        this.f34734g = executor;
        this.f34732e = abstractC10825a;
        this.f34733f = abstractC10719a;
    }

    /* renamed from: a */
    public final void m22333a(AbstractC10738l abstractC10738l, int i, Runnable runnable) {
        this.f34734g.execute(RunnableC10814i.m22332a(this, abstractC10738l, i, runnable));
    }
}
