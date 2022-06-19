package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p235v.C4687a;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4727i;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.backends.AbstractC4761e;
import com.google.android.datatransport.runtime.backends.AbstractC4762f;
import com.google.android.datatransport.runtime.backends.AbstractC4770l;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/l.class */
public class C4787l {

    /* renamed from: a */
    private final Context f14422a;

    /* renamed from: b */
    private final AbstractC4761e f14423b;

    /* renamed from: c */
    private final AbstractC4710c f14424c;

    /* renamed from: d */
    private final AbstractC4793r f14425d;

    /* renamed from: e */
    private final Executor f14426e;

    /* renamed from: f */
    private final AbstractC4794a f14427f;

    /* renamed from: g */
    private final AbstractC4746a f14428g;

    public C4787l(Context context, AbstractC4761e abstractC4761e, AbstractC4710c abstractC4710c, AbstractC4793r abstractC4793r, Executor executor, AbstractC4794a abstractC4794a, AbstractC4746a abstractC4746a) {
        this.f14422a = context;
        this.f14423b = abstractC4761e;
        this.f14424c = abstractC4710c;
        this.f14425d = abstractC4793r;
        this.f14426e = executor;
        this.f14427f = abstractC4794a;
        this.f14428g = abstractC4746a;
    }

    /* renamed from: c */
    public static /* synthetic */ Object m21780c(C4787l c4787l, BackendResponse backendResponse, Iterable iterable, AbstractC4673m abstractC4673m, int i) {
        if (backendResponse.mo21840c() == BackendResponse.Status.TRANSIENT_ERROR) {
            c4787l.f14424c.mo21930g0(iterable);
            c4787l.f14425d.mo21764a(abstractC4673m, i + 1);
            return null;
        }
        c4787l.f14424c.mo21928l(iterable);
        if (backendResponse.mo21840c() == BackendResponse.Status.OK) {
            c4787l.f14424c.mo21926w(abstractC4673m, c4787l.f14428g.mo21847a() + backendResponse.mo21841b());
        }
        if (!c4787l.f14424c.mo21931c0(abstractC4673m)) {
            return null;
        }
        c4787l.f14425d.mo21763b(abstractC4673m, 1, true);
        return null;
    }

    /* renamed from: e */
    public static /* synthetic */ void m21778e(C4787l c4787l, AbstractC4673m abstractC4673m, int i, Runnable runnable) {
        try {
            try {
                AbstractC4794a abstractC4794a = c4787l.f14427f;
                AbstractC4710c abstractC4710c = c4787l.f14424c;
                abstractC4710c.getClass();
                abstractC4794a.mo21762a(C4785j.m21784a(abstractC4710c));
                if (!c4787l.m21782a()) {
                    c4787l.f14427f.mo21762a(C4786k.m21783a(c4787l, abstractC4673m, i));
                } else {
                    c4787l.m21777f(abstractC4673m, i);
                }
            } catch (SynchronizationException e) {
                c4787l.f14425d.mo21764a(abstractC4673m, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    boolean m21782a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f14422a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: f */
    void m21777f(AbstractC4673m abstractC4673m, int i) {
        BackendResponse backendResponse;
        AbstractC4770l abstractC4770l = this.f14423b.get(abstractC4673m.mo22023b());
        Iterable<AbstractC4727i> iterable = (Iterable) this.f14427f.mo21762a(C4783h.m21786a(this, abstractC4673m));
        if (!iterable.iterator().hasNext()) {
            return;
        }
        if (abstractC4770l == null) {
            C4687a.m21993a("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC4673m);
            backendResponse = BackendResponse.m21844a();
        } else {
            ArrayList arrayList = new ArrayList();
            for (AbstractC4727i abstractC4727i : iterable) {
                arrayList.add(abstractC4727i.mo21882b());
            }
            backendResponse = abstractC4770l.mo21817a(AbstractC4762f.m21839a().mo21835b(arrayList).mo21834c(abstractC4673m.mo22022c()).mo21836a());
        }
        this.f14427f.mo21762a(C4784i.m21785a(this, backendResponse, iterable, abstractC4673m, i));
    }

    /* renamed from: g */
    public void m21776g(AbstractC4673m abstractC4673m, int i, Runnable runnable) {
        this.f14426e.execute(RunnableC4782g.m21787a(this, abstractC4673m, i, runnable));
    }
}
