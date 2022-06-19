package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.p062h.AbstractC1304m;
import com.google.android.datatransport.p062h.p065v.C1310a;
import com.google.android.datatransport.p062h.p067x.p068j.AbstractC1318c;
import com.google.android.datatransport.p062h.p067x.p068j.AbstractC1324i;
import com.google.android.datatransport.p062h.p069y.AbstractC1325a;
import com.google.android.datatransport.runtime.backends.AbstractC1329e;
import com.google.android.datatransport.runtime.backends.AbstractC1330f;
import com.google.android.datatransport.runtime.backends.AbstractC1334l;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.AbstractC1345a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/l.class */
public class C1341l {

    /* renamed from: a */
    private final Context f5419a;

    /* renamed from: b */
    private final AbstractC1329e f5420b;

    /* renamed from: c */
    private final AbstractC1318c f5421c;

    /* renamed from: d */
    private final AbstractC1344r f5422d;

    /* renamed from: e */
    private final Executor f5423e;

    /* renamed from: f */
    private final AbstractC1345a f5424f;

    /* renamed from: g */
    private final AbstractC1325a f5425g;

    public C1341l(Context context, AbstractC1329e abstractC1329e, AbstractC1318c abstractC1318c, AbstractC1344r abstractC1344r, Executor executor, AbstractC1345a abstractC1345a, AbstractC1325a abstractC1325a) {
        this.f5419a = context;
        this.f5420b = abstractC1329e;
        this.f5421c = abstractC1318c;
        this.f5422d = abstractC1344r;
        this.f5423e = executor;
        this.f5424f = abstractC1345a;
        this.f5425g = abstractC1325a;
    }

    /* renamed from: c */
    static /* synthetic */ Object m9079c(C1341l c1341l, BackendResponse backendResponse, Iterable iterable, AbstractC1304m abstractC1304m, int i) {
        if (backendResponse.m9129c() == BackendResponse.Status.TRANSIENT_ERROR) {
            c1341l.f5421c.m9173N(iterable);
            c1341l.f5422d.m9070a(abstractC1304m, i + 1);
            return null;
        }
        c1341l.f5421c.m9171l(iterable);
        if (backendResponse.m9129c() == BackendResponse.Status.OK) {
            c1341l.f5421c.m9169z(abstractC1304m, c1341l.f5425g.m9138a() + backendResponse.m9130b());
        }
        if (!c1341l.f5421c.m9174J(abstractC1304m)) {
            return null;
        }
        c1341l.f5422d.m9069b(abstractC1304m, 1, true);
        return null;
    }

    /* renamed from: e */
    public static /* synthetic */ void m9077e(C1341l c1341l, AbstractC1304m abstractC1304m, int i, Runnable runnable) {
        try {
            try {
                AbstractC1345a abstractC1345a = c1341l.f5424f;
                AbstractC1318c abstractC1318c = c1341l.f5421c;
                abstractC1318c.getClass();
                abstractC1345a.m9068a(j.a(abstractC1318c));
                if (!c1341l.m9081a()) {
                    c1341l.f5424f.m9068a(k.a(c1341l, abstractC1304m, i));
                } else {
                    c1341l.m9076f(abstractC1304m, i);
                }
            } catch (SynchronizationException e) {
                c1341l.f5422d.m9070a(abstractC1304m, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    boolean m9081a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f5419a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: f */
    void m9076f(AbstractC1304m abstractC1304m, int i) {
        BackendResponse backendResponse;
        AbstractC1334l m9126a = this.f5420b.m9126a(abstractC1304m.m9208b());
        Iterable<AbstractC1324i> iterable = (Iterable) this.f5424f.m9068a(h.a(this, abstractC1304m));
        if (!iterable.iterator().hasNext()) {
            return;
        }
        if (m9126a == null) {
            C1310a.m9192a("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC1304m);
            backendResponse = BackendResponse.m9131a();
        } else {
            ArrayList arrayList = new ArrayList();
            for (AbstractC1324i abstractC1324i : iterable) {
                arrayList.add(abstractC1324i.m9141b());
            }
            AbstractC1330f.AbstractC1331a m9125a = AbstractC1330f.m9125a();
            m9125a.m9121b(arrayList);
            m9125a.m9120c(abstractC1304m.m9207c());
            backendResponse = m9126a.m9108b(m9125a.m9122a());
        }
        this.f5424f.m9068a(i.a(this, backendResponse, iterable, abstractC1304m, i));
    }

    /* renamed from: g */
    public void m9075g(AbstractC1304m abstractC1304m, int i, Runnable runnable) {
        this.f5423e.execute(RunnableC1340g.m9082a(this, abstractC1304m, i, runnable));
    }
}
