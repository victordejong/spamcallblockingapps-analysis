package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24253e0;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24534q;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0;
/* renamed from: e.m.a.c.l1.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/k.class */
public abstract class AbstractC24523k implements AbstractC24531p {

    /* renamed from: a */
    public final ArrayList<AbstractC24531p.AbstractC24533b> f68488a = new ArrayList<>(1);

    /* renamed from: b */
    public final HashSet<AbstractC24531p.AbstractC24533b> f68489b = new HashSet<>(1);

    /* renamed from: c */
    public final AbstractC24534q.C24535a f68490c = new AbstractC24534q.C24535a();

    /* renamed from: d */
    public Looper f68491d;

    /* renamed from: e */
    public AbstractC24861y0 f68492e;

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: b */
    public final void mo4978b(AbstractC24531p.AbstractC24533b abstractC24533b) {
        this.f68488a.remove(abstractC24533b);
        if (this.f68488a.isEmpty()) {
            this.f68491d = null;
            this.f68492e = null;
            this.f68489b.clear();
            ((C24547t) this).f68588i.release();
            return;
        }
        boolean isEmpty = this.f68489b.isEmpty();
        this.f68489b.remove(abstractC24533b);
        if (!(!isEmpty)) {
            return;
        }
        this.f68489b.isEmpty();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: c */
    public final void mo4977c(AbstractC24534q abstractC24534q) {
        AbstractC24534q.C24535a c24535a = this.f68490c;
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            if (next.f68517b == abstractC24534q) {
                c24535a.f68514c.remove(next);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: d */
    public final void mo4976d(AbstractC24531p.AbstractC24533b abstractC24533b, AbstractC24697f0 abstractC24697f0) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f68491d;
        C26232y.m2310r(looper == null || looper == myLooper);
        AbstractC24861y0 abstractC24861y0 = this.f68492e;
        this.f68488a.add(abstractC24533b);
        if (this.f68491d != null) {
            if (abstractC24861y0 == null) {
                return;
            }
            this.f68489b.isEmpty();
            this.f68489b.add(abstractC24533b);
            ((C24253e0) abstractC24533b).mo4973a(this, abstractC24861y0);
            return;
        }
        this.f68491d = myLooper;
        this.f68489b.add(abstractC24533b);
        C24547t c24547t = (C24547t) this;
        c24547t.f68596q = abstractC24697f0;
        c24547t.f68588i.mo5318a();
        c24547t.m4939h(c24547t.f68593n, c24547t.f68594o, c24547t.f68595p);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: f */
    public final void mo4975f(Handler handler, AbstractC24534q abstractC24534q) {
        AbstractC24534q.C24535a c24535a = this.f68490c;
        Objects.requireNonNull(c24535a);
        C26232y.m2310r((handler == null || abstractC24534q == null) ? false : true);
        c24535a.f68514c.add(new AbstractC24534q.C24535a.C24536a(handler, abstractC24534q));
    }
}
