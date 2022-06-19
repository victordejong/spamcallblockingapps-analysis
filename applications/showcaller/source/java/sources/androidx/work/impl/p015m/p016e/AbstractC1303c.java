package androidx.work.impl.p015m.p016e;

import androidx.work.impl.p015m.AbstractC1297a;
import androidx.work.impl.p015m.p017f.AbstractC1314d;
import androidx.work.impl.p018n.C1344p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.m.e.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/e/c.class */
public abstract class AbstractC1303c<T> implements AbstractC1297a<T> {

    /* renamed from: a */
    private final List<String> f5514a = new ArrayList();

    /* renamed from: b */
    private T f5515b;

    /* renamed from: c */
    private AbstractC1314d<T> f5516c;

    /* renamed from: d */
    private AbstractC1304a f5517d;

    /* renamed from: androidx.work.impl.m.e.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/e/c$a.class */
    public interface AbstractC1304a {
        /* renamed from: a */
        void mo30336a(List<String> list);

        /* renamed from: b */
        void mo30335b(List<String> list);
    }

    public AbstractC1303c(AbstractC1314d<T> abstractC1314d) {
        this.f5516c = abstractC1314d;
    }

    /* renamed from: h */
    private void m30337h(AbstractC1304a abstractC1304a, T t) {
        if (this.f5514a.isEmpty() || abstractC1304a == null) {
            return;
        }
        if (t == null || mo30329c(t)) {
            abstractC1304a.mo30335b(this.f5514a);
        } else {
            abstractC1304a.mo30336a(this.f5514a);
        }
    }

    @Override // androidx.work.impl.p015m.AbstractC1297a
    /* renamed from: a */
    public void mo30342a(T t) {
        this.f5515b = t;
        m30337h(this.f5517d, t);
    }

    /* renamed from: b */
    abstract boolean mo30330b(C1344p c1344p);

    /* renamed from: c */
    abstract boolean mo30329c(T t);

    /* renamed from: d */
    public boolean m30341d(String str) {
        T t = this.f5515b;
        return t != null && mo30329c(t) && this.f5514a.contains(str);
    }

    /* renamed from: e */
    public void m30340e(Iterable<C1344p> iterable) {
        this.f5514a.clear();
        for (C1344p c1344p : iterable) {
            if (mo30330b(c1344p)) {
                this.f5514a.add(c1344p.f5578c);
            }
        }
        if (this.f5514a.isEmpty()) {
            this.f5516c.m30323c(this);
        } else {
            this.f5516c.m30324a(this);
        }
        m30337h(this.f5517d, this.f5515b);
    }

    /* renamed from: f */
    public void m30339f() {
        if (!this.f5514a.isEmpty()) {
            this.f5514a.clear();
            this.f5516c.m30323c(this);
        }
    }

    /* renamed from: g */
    public void m30338g(AbstractC1304a abstractC1304a) {
        if (this.f5517d != abstractC1304a) {
            this.f5517d = abstractC1304a;
            m30337h(abstractC1304a, this.f5515b);
        }
    }
}
