package p078c.p122d.p123a;

import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: c.d.a.z */
/* loaded from: classes2-dex2jar.jar:c/d/a/z.class */
public class C2070z extends AbstractC1993e implements AbstractC2064v {

    /* renamed from: b */
    private final ArrayList<AbstractC1978a.AbstractC1980b> f7198b = new ArrayList<>();

    @Override // p078c.p122d.p123a.AbstractC2064v
    /* renamed from: a */
    public boolean mo28110a(AbstractC1978a.AbstractC1980b abstractC1980b) {
        return !this.f7198b.isEmpty() && this.f7198b.contains(abstractC1980b);
    }

    @Override // p078c.p122d.p123a.AbstractC2064v
    /* renamed from: b */
    public boolean mo28109b(AbstractC1978a.AbstractC1980b abstractC1980b) {
        if (!C2058q.m28155d().m28152g()) {
            synchronized (this.f7198b) {
                if (!C2058q.m28155d().m28152g()) {
                    if (C2036d.f7151a) {
                        C2036d.m28253a(this, "Waiting for connecting with the downloader service... %d", Integer.valueOf(abstractC1980b.mo28398J().getId()));
                    }
                    C2048m.m28171c().mo818B0(C2031c.m28262a());
                    if (!this.f7198b.contains(abstractC1980b)) {
                        abstractC1980b.mo28386b();
                        this.f7198b.add(abstractC1980b);
                    }
                    return true;
                }
            }
        }
        mo28108c(abstractC1980b);
        return false;
    }

    @Override // p078c.p122d.p123a.AbstractC2064v
    /* renamed from: c */
    public void mo28108c(AbstractC1978a.AbstractC1980b abstractC1980b) {
        if (!this.f7198b.isEmpty()) {
            synchronized (this.f7198b) {
                this.f7198b.remove(abstractC1980b);
            }
        }
    }

    @Override // p078c.p122d.p123a.AbstractC1993e
    /* renamed from: e */
    public void mo28107e() {
        AbstractC2065w m28153f = C2058q.m28155d().m28153f();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "The downloader service is connected.", new Object[0]);
        }
        synchronized (this.f7198b) {
            List<AbstractC1978a.AbstractC1980b> list = (List) this.f7198b.clone();
            this.f7198b.clear();
            ArrayList arrayList = new ArrayList(m28153f.mo28127a());
            for (AbstractC1978a.AbstractC1980b abstractC1980b : list) {
                int mo28377k = abstractC1980b.mo28377k();
                if (m28153f.mo28124d(mo28377k)) {
                    abstractC1980b.mo28398J().mo28376l().mo28363a();
                    if (!arrayList.contains(Integer.valueOf(mo28377k))) {
                        arrayList.add(Integer.valueOf(mo28377k));
                    }
                } else {
                    abstractC1980b.mo28379i();
                }
            }
            m28153f.mo28125c(arrayList);
        }
    }

    @Override // p078c.p122d.p123a.AbstractC1993e
    /* renamed from: f */
    public void mo28106f() {
        if (m28350g() != DownloadServiceConnectChangedEvent.ConnectStatus.lost) {
            if (C2021h.m28284e().m28280i() <= 0) {
                return;
            }
            C2036d.m28245i(this, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(C2021h.m28284e().m28280i()));
            return;
        }
        AbstractC2065w m28153f = C2058q.m28155d().m28153f();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "lost the connection to the file download service, and current active task size is %d", Integer.valueOf(C2021h.m28284e().m28280i()));
        }
        if (C2021h.m28284e().m28280i() <= 0) {
            return;
        }
        synchronized (this.f7198b) {
            C2021h.m28284e().m28285d(this.f7198b);
            Iterator<AbstractC1978a.AbstractC1980b> it = this.f7198b.iterator();
            while (it.hasNext()) {
                it.next().mo28386b();
            }
            m28153f.mo28126b();
        }
        try {
            C2058q.m28155d().m28157b();
        } catch (IllegalStateException e) {
            C2036d.m28245i(this, "restart service failed, you may need to restart downloading manually when the app comes back to foreground", new Object[0]);
        }
    }
}
