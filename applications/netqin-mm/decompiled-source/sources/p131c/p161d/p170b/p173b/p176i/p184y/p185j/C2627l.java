package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2587e;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2661i;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
/* renamed from: c.d.b.b.i.y.j.l */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/l.class */
public class C2627l {

    /* renamed from: a */
    public final Context f9723a;

    /* renamed from: b */
    public final AbstractC2587e f9724b;

    /* renamed from: c */
    public final AbstractC2644c f9725c;

    /* renamed from: d */
    public final AbstractC2633r f9726d;

    /* renamed from: e */
    public final Executor f9727e;

    /* renamed from: f */
    public final AbstractC2680a f9728f;

    /* renamed from: g */
    public final AbstractC2541a f9729g;

    public C2627l(Context context, AbstractC2587e eVar, AbstractC2644c cVar, AbstractC2633r rVar, Executor executor, AbstractC2680a aVar, AbstractC2541a aVar2) {
        this.f9723a = context;
        this.f9724b = eVar;
        this.f9725c = cVar;
        this.f9726d = rVar;
        this.f9727e = executor;
        this.f9728f = aVar;
        this.f9729g = aVar2;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29413a(C2627l lVar, BackendResponse backendResponse, Iterable iterable, AbstractC2571m mVar, int i) {
        if (backendResponse.mo18740b() == BackendResponse.Status.TRANSIENT_ERROR) {
            lVar.f9725c.mo29362b(iterable);
            lVar.f9726d.mo29403a(mVar, i + 1);
            return null;
        }
        lVar.f9725c.mo29364a(iterable);
        if (backendResponse.mo18740b() == BackendResponse.Status.OK) {
            lVar.f9725c.mo29366a(mVar, lVar.f9729g.mo29554a() + backendResponse.mo18742a());
        }
        if (!lVar.f9725c.mo29361c(mVar)) {
            return null;
        }
        lVar.f9726d.mo29403a(mVar, 1);
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ void m29414a(C2627l lVar, AbstractC2571m mVar, int i, Runnable runnable) {
        try {
            try {
                AbstractC2680a aVar = lVar.f9728f;
                AbstractC2644c cVar = lVar.f9725c;
                cVar.getClass();
                aVar.mo29298a(C2625j.m29421a(cVar));
                if (!lVar.m29419a()) {
                    lVar.f9728f.mo29298a(C2626k.m29420a(lVar, mVar, i));
                } else {
                    lVar.m29418a(mVar, i);
                }
            } catch (SynchronizationException e) {
                lVar.f9726d.mo29403a(mVar, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    public void m29418a(AbstractC2571m mVar, int i) {
        BackendResponse backendResponse;
        AbstractC2596l lVar = this.f9724b.get(mVar.mo29506a());
        Iterable<AbstractC2661i> iterable = (Iterable) this.f9728f.mo29298a(C2623h.m29423a(this, mVar));
        if (iterable.iterator().hasNext()) {
            if (lVar == null) {
                C2601a.m29448a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                backendResponse = BackendResponse.m18739c();
            } else {
                ArrayList arrayList = new ArrayList();
                for (AbstractC2661i iVar : iterable) {
                    arrayList.add(iVar.mo29322a());
                }
                AbstractC2588f.AbstractC2589a c = AbstractC2588f.m29476c();
                c.mo29474a(arrayList);
                c.mo29473a(mVar.mo29504b());
                backendResponse = lVar.mo29457a(c.mo29475a());
            }
            this.f9728f.mo29298a(C2624i.m29422a(this, backendResponse, iterable, mVar, i));
        }
    }

    /* renamed from: a */
    public void m29417a(AbstractC2571m mVar, int i, Runnable runnable) {
        this.f9727e.execute(RunnableC2622g.m29424a(this, mVar, i, runnable));
    }

    /* renamed from: a */
    public boolean m29419a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f9723a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
