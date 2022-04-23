package p081h.p203i.p204a.p224e.p259j.p262c;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6905o;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6909p;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.j.c.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/c/l.class */
public abstract class AbstractC7503l extends AbstractC6905o<C7499h, Void> {

    /* renamed from: c */
    public C9145i<Void> f17588c;

    public AbstractC7503l() {
    }

    public /* synthetic */ AbstractC7503l(C7501j jVar) {
        this();
    }

    /* renamed from: a */
    public final void m20411a(Status status) {
        C6909p.m21600a(status, this.f17588c);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6905o
    /* renamed from: a */
    public /* synthetic */ void mo17695a(C7499h hVar, C9145i<Void> iVar) throws RemoteException {
        this.f17588c = iVar;
        mo20410a((AbstractC7495d) hVar.m21414u());
    }

    /* renamed from: a */
    public abstract void mo20410a(AbstractC7495d dVar) throws RemoteException;
}
