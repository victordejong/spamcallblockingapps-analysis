package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6596e;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6599g;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6607m;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6678i;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
import p081h.p203i.p204a.p206b.p209j.p220z.C6697a;
/* renamed from: h.i.a.b.j.y.j.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/m.class */
public class C6644m {

    /* renamed from: a */
    public final Context f16490a;

    /* renamed from: b */
    public final AbstractC6596e f16491b;

    /* renamed from: c */
    public final AbstractC6661c f16492c;

    /* renamed from: d */
    public final AbstractC6650s f16493d;

    /* renamed from: e */
    public final Executor f16494e;

    /* renamed from: f */
    public final AbstractC6698b f16495f;

    /* renamed from: g */
    public final AbstractC6550a f16496g;

    @Inject
    public C6644m(Context context, AbstractC6596e eVar, AbstractC6661c cVar, AbstractC6650s sVar, Executor executor, AbstractC6698b bVar, AbstractC6550a aVar) {
        this.f16490a = context;
        this.f16491b = eVar;
        this.f16492c = cVar;
        this.f16493d = sVar;
        this.f16494e = executor;
        this.f16495f = bVar;
        this.f16496g = aVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22179a(C6644m mVar, AbstractC6599g gVar, Iterable iterable, AbstractC6580m mVar2, int i) {
        if (gVar.mo22262b() == AbstractC6599g.EnumC6600a.TRANSIENT_ERROR) {
            mVar.f16492c.mo22127b(iterable);
            mVar.f16493d.mo22169a(mVar2, i + 1);
            return null;
        }
        mVar.f16492c.mo22129a(iterable);
        if (gVar.mo22262b() == AbstractC6599g.EnumC6600a.OK) {
            mVar.f16492c.mo22131a(mVar2, mVar.f16496g.mo22344a() + gVar.mo22264a());
        }
        if (!mVar.f16492c.mo22128b(mVar2)) {
            return null;
        }
        mVar.f16493d.mo22169a(mVar2, 1);
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22180a(C6644m mVar, AbstractC6580m mVar2, int i, Runnable runnable) {
        try {
            try {
                AbstractC6698b bVar = mVar.f16495f;
                AbstractC6661c cVar = mVar.f16492c;
                cVar.getClass();
                bVar.mo22063a(C6642k.m22187a(cVar));
                if (!mVar.m22185a()) {
                    mVar.f16495f.mo22063a(C6643l.m22186a(mVar, mVar2, i));
                } else {
                    mVar.m22184a(mVar2, i);
                }
            } catch (C6697a e) {
                mVar.f16493d.mo22169a(mVar2, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    public void m22184a(AbstractC6580m mVar, int i) {
        AbstractC6599g gVar;
        AbstractC6607m mVar2 = this.f16491b.get(mVar.mo22296a());
        Iterable<AbstractC6678i> iterable = (Iterable) this.f16495f.mo22063a(C6640i.m22189a(this, mVar));
        if (iterable.iterator().hasNext()) {
            if (mVar2 == null) {
                C6613a.m22235a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                gVar = AbstractC6599g.m22261c();
            } else {
                ArrayList arrayList = new ArrayList();
                for (AbstractC6678i iVar : iterable) {
                    arrayList.add(iVar.mo22087a());
                }
                AbstractC6597f.AbstractC6598a c = AbstractC6597f.m22268c();
                c.mo22266a(arrayList);
                c.mo22265a(mVar.mo22294b());
                gVar = mVar2.mo22244a(c.mo22267a());
            }
            this.f16495f.mo22063a(C6641j.m22188a(this, gVar, iterable, mVar, i));
        }
    }

    /* renamed from: a */
    public void m22183a(AbstractC6580m mVar, int i, Runnable runnable) {
        this.f16494e.execute(RunnableC6639h.m22190a(this, mVar, i, runnable));
    }

    /* renamed from: a */
    public boolean m22185a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f16490a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
