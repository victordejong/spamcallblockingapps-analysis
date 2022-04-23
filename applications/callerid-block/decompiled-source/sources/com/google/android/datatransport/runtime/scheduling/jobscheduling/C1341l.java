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

    public C1341l(Context context, AbstractC1329e eVar, AbstractC1318c cVar, AbstractC1344r rVar, Executor executor, AbstractC1345a aVar, AbstractC1325a aVar2) {
        this.f5419a = context;
        this.f5420b = eVar;
        this.f5421c = cVar;
        this.f5422d = rVar;
        this.f5423e = executor;
        this.f5424f = aVar;
        this.f5425g = aVar2;
    }

    /* renamed from: c */
    static /* synthetic */ Object m9079c(C1341l lVar, BackendResponse backendResponse, Iterable iterable, AbstractC1304m mVar, int i) {
        if (backendResponse.m9129c() == BackendResponse.Status.TRANSIENT_ERROR) {
            lVar.f5421c.m9173N(iterable);
            lVar.f5422d.m9070a(mVar, i + 1);
            return null;
        }
        lVar.f5421c.m9171l(iterable);
        if (backendResponse.m9129c() == BackendResponse.Status.OK) {
            lVar.f5421c.m9169z(mVar, lVar.f5425g.m9138a() + backendResponse.m9130b());
        }
        if (!lVar.f5421c.m9174J(mVar)) {
            return null;
        }
        lVar.f5422d.m9069b(mVar, 1, true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m9077e(C1341l lVar, AbstractC1304m mVar, int i, Runnable runnable) {
        try {
            try {
                AbstractC1345a aVar = lVar.f5424f;
                AbstractC1318c cVar = lVar.f5421c;
                cVar.getClass();
                aVar.m9068a(j.a(cVar));
                if (!lVar.m9081a()) {
                    lVar.f5424f.m9068a(k.a(lVar, mVar, i));
                } else {
                    lVar.m9076f(mVar, i);
                }
            } catch (SynchronizationException e) {
                lVar.f5422d.m9070a(mVar, i + 1);
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
    void m9076f(AbstractC1304m mVar, int i) {
        BackendResponse backendResponse;
        AbstractC1334l a = this.f5420b.m9126a(mVar.m9208b());
        Iterable<AbstractC1324i> iterable = (Iterable) this.f5424f.m9068a(h.a(this, mVar));
        if (iterable.iterator().hasNext()) {
            if (a == null) {
                C1310a.m9192a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                backendResponse = BackendResponse.m9131a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (AbstractC1324i iVar : iterable) {
                    arrayList.add(iVar.m9141b());
                }
                AbstractC1330f.AbstractC1331a a2 = AbstractC1330f.m9125a();
                a2.m9121b(arrayList);
                a2.m9120c(mVar.m9207c());
                backendResponse = a.m9108b(a2.m9122a());
            }
            this.f5424f.m9068a(i.a(this, backendResponse, iterable, mVar, i));
        }
    }

    /* renamed from: g */
    public void m9075g(AbstractC1304m mVar, int i, Runnable runnable) {
        this.f5423e.execute(RunnableC1340g.m9082a(this, mVar, i, runnable));
    }
}
