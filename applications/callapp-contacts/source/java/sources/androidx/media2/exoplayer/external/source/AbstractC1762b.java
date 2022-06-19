package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.media2.exoplayer.external.source.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/b.class */
public abstract class AbstractC1762b implements AbstractC1842t {

    /* renamed from: a */
    private final ArrayList<AbstractC1842t.AbstractC1844b> f6965a = new ArrayList<>(1);

    /* renamed from: b */
    private final HashSet<AbstractC1842t.AbstractC1844b> f6966b = new HashSet<>(1);

    /* renamed from: c */
    private final AbstractC1845u.C1846a f6967c = new AbstractC1845u.C1846a();

    /* renamed from: d */
    private Looper f6968d;

    /* renamed from: e */
    private AbstractC1383al f6969e;

    /* renamed from: a */
    public final AbstractC1845u.C1846a m42286a(int i, AbstractC1842t.C1843a c1843a) {
        return this.f6967c.m42052a(i, c1843a, 0L);
    }

    /* renamed from: a */
    public final AbstractC1845u.C1846a m42284a(AbstractC1842t.C1843a c1843a) {
        return this.f6967c.m42052a(0, c1843a, 0L);
    }

    /* renamed from: a */
    protected void mo42272a() {
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42074a(Handler handler, AbstractC1845u abstractC1845u) {
        AbstractC1845u.C1846a c1846a = this.f6967c;
        C1993a.m41688a((handler == null || abstractC1845u == null) ? false : true);
        c1846a.f7363c.add(new AbstractC1845u.C1846a.C1847a(handler, abstractC1845u));
    }

    /* renamed from: a */
    public final void m42285a(AbstractC1383al abstractC1383al) {
        this.f6969e = abstractC1383al;
        Iterator<AbstractC1842t.AbstractC1844b> it2 = this.f6965a.iterator();
        while (it2.hasNext()) {
            it2.next().mo41802a(this, abstractC1383al);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42071a(AbstractC1842t.AbstractC1844b abstractC1844b) {
        C1993a.m41690a(this.f6968d);
        boolean isEmpty = this.f6966b.isEmpty();
        this.f6966b.add(abstractC1844b);
        if (isEmpty) {
            mo42272a();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42070a(AbstractC1842t.AbstractC1844b abstractC1844b, AbstractC1990w abstractC1990w) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f6968d;
        C1993a.m41688a(looper == null || looper == myLooper);
        AbstractC1383al abstractC1383al = this.f6969e;
        this.f6965a.add(abstractC1844b);
        if (this.f6968d == null) {
            this.f6968d = myLooper;
            this.f6966b.add(abstractC1844b);
            mo42102a(abstractC1990w);
        } else if (abstractC1383al == null) {
        } else {
            mo42071a(abstractC1844b);
            abstractC1844b.mo41802a(this, abstractC1383al);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42069a(AbstractC1845u abstractC1845u) {
        AbstractC1845u.C1846a c1846a = this.f6967c;
        Iterator<AbstractC1845u.C1846a.C1847a> it2 = c1846a.f7363c.iterator();
        while (it2.hasNext()) {
            AbstractC1845u.C1846a.C1847a next = it2.next();
            if (next.f7366b == abstractC1845u) {
                c1846a.f7363c.remove(next);
            }
        }
    }

    /* renamed from: a */
    protected abstract void mo42102a(AbstractC1990w abstractC1990w);

    /* renamed from: b */
    protected void mo42261b() {
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: b */
    public final void mo42068b(AbstractC1842t.AbstractC1844b abstractC1844b) {
        boolean isEmpty = this.f6966b.isEmpty();
        this.f6966b.remove(abstractC1844b);
        if (!(!isEmpty) || !this.f6966b.isEmpty()) {
            return;
        }
        mo42261b();
    }

    /* renamed from: c */
    protected abstract void mo42097c();

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: c */
    public final void mo42067c(AbstractC1842t.AbstractC1844b abstractC1844b) {
        this.f6965a.remove(abstractC1844b);
        if (!this.f6965a.isEmpty()) {
            mo42068b(abstractC1844b);
            return;
        }
        this.f6968d = null;
        this.f6969e = null;
        this.f6966b.clear();
        mo42097c();
    }

    /* renamed from: d */
    public final boolean m42283d() {
        return !this.f6966b.isEmpty();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public Object mo42066e() {
        return null;
    }
}
