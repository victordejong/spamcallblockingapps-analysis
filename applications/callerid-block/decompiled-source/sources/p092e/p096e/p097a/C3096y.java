package p092e.p096e.p097a;

import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: e.e.a.y */
/* loaded from: classes2-dex2jar.jar:e/e/a/y.class */
public class C3096y extends AbstractC3025e implements AbstractC3090u {

    /* renamed from: b */
    private final ArrayList<AbstractC3005a.AbstractC3007b> f12729b = new ArrayList<>();

    @Override // p092e.p096e.p097a.AbstractC3090u
    /* renamed from: a */
    public boolean mo250a(AbstractC3005a.AbstractC3007b bVar) {
        if (!C3085q.m300d().m297g()) {
            synchronized (this.f12729b) {
                if (!C3085q.m300d().m297g()) {
                    if (C3062d.f12682a) {
                        C3062d.m414a(this, "Waiting for connecting with the downloader service... %d", Integer.valueOf(bVar.mo573J().mo577F()));
                    }
                    C3075m.m321b().mo270y0(C3056c.m426a());
                    if (!this.f12729b.contains(bVar)) {
                        bVar.mo560b();
                        this.f12729b.add(bVar);
                    }
                    return true;
                }
            }
        }
        mo248c(bVar);
        return false;
    }

    @Override // p092e.p096e.p097a.AbstractC3090u
    /* renamed from: b */
    public boolean mo249b(AbstractC3005a.AbstractC3007b bVar) {
        return !this.f12729b.isEmpty() && this.f12729b.contains(bVar);
    }

    @Override // p092e.p096e.p097a.AbstractC3090u
    /* renamed from: c */
    public void mo248c(AbstractC3005a.AbstractC3007b bVar) {
        if (!this.f12729b.isEmpty()) {
            synchronized (this.f12729b) {
                this.f12729b.remove(bVar);
            }
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3025e
    /* renamed from: e */
    public void mo247e() {
        AbstractC3091v f = C3085q.m300d().m298f();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "The downloader service is connected.", new Object[0]);
        }
        synchronized (this.f12729b) {
            try {
                List<AbstractC3005a.AbstractC3007b> list = (List) this.f12729b.clone();
                this.f12729b.clear();
                ArrayList arrayList = new ArrayList(f.mo269a());
                for (AbstractC3005a.AbstractC3007b bVar : list) {
                    int s = bVar.mo545s();
                    if (f.mo267c(s)) {
                        bVar.mo573J().mo543u().mo537a();
                        if (!arrayList.contains(Integer.valueOf(s))) {
                            arrayList.add(Integer.valueOf(s));
                        }
                    } else {
                        bVar.mo548p();
                    }
                }
                f.mo266d(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3025e
    /* renamed from: f */
    public void mo246f() {
        if (m511g() == DownloadServiceConnectChangedEvent.ConnectStatus.lost) {
            AbstractC3091v f = C3085q.m300d().m298f();
            if (C3062d.f12682a) {
                C3062d.m414a(this, "lost the connection to the file download service, and current active task size is %d", Integer.valueOf(C3050h.m440e().m436i()));
            }
            if (C3050h.m440e().m436i() > 0) {
                synchronized (this.f12729b) {
                    C3050h.m440e().m441d(this.f12729b);
                    Iterator<AbstractC3005a.AbstractC3007b> it = this.f12729b.iterator();
                    while (it.hasNext()) {
                        it.next().mo560b();
                    }
                    f.mo268b();
                }
                try {
                    C3085q.m300d().m302b();
                } catch (IllegalStateException e) {
                    C3062d.m406i(this, "restart service failed, you may need to restart downloading manually when the app comes back to foreground", new Object[0]);
                }
            }
        } else if (C3050h.m440e().m436i() > 0) {
            C3062d.m406i(this, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(C3050h.m440e().m436i()));
        }
    }
}
