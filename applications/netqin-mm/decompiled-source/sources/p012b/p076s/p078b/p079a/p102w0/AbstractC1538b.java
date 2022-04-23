package p012b.p076s.p078b.p079a.p102w0;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/b.class */
public abstract class AbstractC1538b implements AbstractC1634r {

    /* renamed from: a */
    public final ArrayList<AbstractC1634r.AbstractC1636b> f6261a = new ArrayList<>(1);

    /* renamed from: b */
    public final AbstractC1533a0.C1534a f6262b = new AbstractC1533a0.C1534a();

    /* renamed from: c */
    public Looper f6263c;

    /* renamed from: d */
    public AbstractC1252n0 f6264d;

    /* renamed from: e */
    public Object f6265e;

    /* renamed from: a */
    public final AbstractC1533a0.C1534a m32925a(int i, AbstractC1634r.C1635a aVar, long j) {
        return this.f6262b.m32953a(i, aVar, j);
    }

    /* renamed from: a */
    public final AbstractC1533a0.C1534a m32923a(AbstractC1634r.C1635a aVar) {
        return this.f6262b.m32953a(0, aVar, 0L);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return AbstractC1633q.m32508a(this);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final void mo32506a(Handler handler, AbstractC1533a0 a0Var) {
        this.f6262b.m32951a(handler, a0Var);
    }

    /* renamed from: a */
    public final void m32924a(AbstractC1252n0 n0Var, Object obj) {
        this.f6264d = n0Var;
        this.f6265e = obj;
        Iterator<AbstractC1634r.AbstractC1636b> it = this.f6261a.iterator();
        while (it.hasNext()) {
            it.next().mo32499a(this, n0Var, obj);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final void mo32505a(AbstractC1533a0 a0Var) {
        this.f6262b.m32946a(a0Var);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final void mo32504a(AbstractC1634r.AbstractC1636b bVar) {
        this.f6261a.remove(bVar);
        if (this.f6261a.isEmpty()) {
            this.f6263c = null;
            this.f6264d = null;
            this.f6265e = null;
            mo32678c();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final void mo32503a(AbstractC1634r.AbstractC1636b bVar, AbstractC1704x xVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f6263c;
        C1160a.m34520a(looper == null || looper == myLooper);
        this.f6261a.add(bVar);
        if (this.f6263c == null) {
            this.f6263c = myLooper;
            mo32293a(xVar);
            return;
        }
        AbstractC1252n0 n0Var = this.f6264d;
        if (n0Var != null) {
            bVar.mo32499a(this, n0Var, this.f6265e);
        }
    }

    /* renamed from: a */
    public abstract void mo32293a(AbstractC1704x xVar);

    /* renamed from: c */
    public abstract void mo32678c();
}
