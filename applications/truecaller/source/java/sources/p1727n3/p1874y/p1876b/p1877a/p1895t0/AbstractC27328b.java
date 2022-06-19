package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.os.Handler;
import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27404e0;
/* renamed from: n3.y.b.a.t0.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/b.class */
public abstract class AbstractC27328b implements AbstractC27371t {

    /* renamed from: a */
    public final ArrayList<AbstractC27371t.AbstractC27373b> f76869a = new ArrayList<>(1);

    /* renamed from: b */
    public final HashSet<AbstractC27371t.AbstractC27373b> f76870b = new HashSet<>(1);

    /* renamed from: c */
    public final AbstractC27331c0.C27332a f76871c = new AbstractC27331c0.C27332a();

    /* renamed from: d */
    public Looper f76872d;

    /* renamed from: e */
    public AbstractC27096l0 f76873e;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: b */
    public final void mo446b(AbstractC27371t.AbstractC27373b abstractC27373b, AbstractC27404e0 abstractC27404e0) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f76872d;
        MediaSessionCompat.m43211p(looper == null || looper == myLooper);
        AbstractC27096l0 abstractC27096l0 = this.f76873e;
        this.f76869a.add(abstractC27373b);
        if (this.f76872d == null) {
            this.f76872d = myLooper;
            this.f76870b.add(abstractC27373b);
            m530m(abstractC27404e0);
        } else if (abstractC27096l0 == null) {
        } else {
            mo439i(abstractC27373b);
            abstractC27373b.mo436a(this, abstractC27096l0);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: d */
    public final void mo444d(AbstractC27371t.AbstractC27373b abstractC27373b) {
        boolean isEmpty = this.f76870b.isEmpty();
        this.f76870b.remove(abstractC27373b);
        if (!(!isEmpty) || !this.f76870b.isEmpty()) {
            return;
        }
        m532k();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: f */
    public final void mo442f(AbstractC27371t.AbstractC27373b abstractC27373b) {
        this.f76869a.remove(abstractC27373b);
        if (!this.f76869a.isEmpty()) {
            mo444d(abstractC27373b);
            return;
        }
        this.f76872d = null;
        this.f76873e = null;
        this.f76870b.clear();
        m528o();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: g */
    public final void mo441g(Handler handler, AbstractC27331c0 abstractC27331c0) {
        AbstractC27331c0.C27332a c27332a = this.f76871c;
        Objects.requireNonNull(c27332a);
        MediaSessionCompat.m43211p((handler == null || abstractC27331c0 == null) ? false : true);
        c27332a.f76879c.add(new AbstractC27331c0.C27332a.C27333a(handler, abstractC27331c0));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: h */
    public final void mo440h(AbstractC27331c0 abstractC27331c0) {
        AbstractC27331c0.C27332a c27332a = this.f76871c;
        Iterator<AbstractC27331c0.C27332a.C27333a> it = c27332a.f76879c.iterator();
        while (it.hasNext()) {
            AbstractC27331c0.C27332a.C27333a next = it.next();
            if (next.f76882b == abstractC27331c0) {
                c27332a.f76879c.remove(next);
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t
    /* renamed from: i */
    public final void mo439i(AbstractC27371t.AbstractC27373b abstractC27373b) {
        Objects.requireNonNull(this.f76872d);
        boolean isEmpty = this.f76870b.isEmpty();
        this.f76870b.add(abstractC27373b);
        if (isEmpty) {
            m531l();
        }
    }

    /* renamed from: j */
    public final AbstractC27331c0.C27332a m533j(AbstractC27371t.C27372a c27372a) {
        return new AbstractC27331c0.C27332a(this.f76871c.f76879c, 0, c27372a, 0L);
    }

    /* renamed from: k */
    public void m532k() {
    }

    /* renamed from: l */
    public void m531l() {
    }

    /* renamed from: m */
    public abstract void m530m(AbstractC27404e0 abstractC27404e0);

    /* renamed from: n */
    public final void m529n(AbstractC27096l0 abstractC27096l0) {
        this.f76873e = abstractC27096l0;
        Iterator<AbstractC27371t.AbstractC27373b> it = this.f76869a.iterator();
        while (it.hasNext()) {
            it.next().mo436a(this, abstractC27096l0);
        }
    }

    /* renamed from: o */
    public abstract void m528o();
}
