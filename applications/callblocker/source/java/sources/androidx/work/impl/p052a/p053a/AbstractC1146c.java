package androidx.work.impl.p052a.p053a;

import androidx.work.impl.p052a.AbstractC1143a;
import androidx.work.impl.p052a.p054b.AbstractC1158d;
import androidx.work.impl.p055b.C1191p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c.class */
public abstract class AbstractC1146c<T> implements AbstractC1143a<T> {

    /* renamed from: a */
    private final List<String> f3939a = new ArrayList();

    /* renamed from: b */
    private T f3940b;

    /* renamed from: c */
    private AbstractC1158d<T> f3941c;

    /* renamed from: d */
    private AbstractC1147a f3942d;

    /* renamed from: androidx.work.impl.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c$a.class */
    public interface AbstractC1147a {
        /* renamed from: a */
        void mo17828a(List<String> list);

        /* renamed from: b */
        void mo17827b(List<String> list);
    }

    public AbstractC1146c(AbstractC1158d<T> abstractC1158d) {
        this.f3941c = abstractC1158d;
    }

    /* renamed from: a */
    private void m17867a(AbstractC1147a abstractC1147a, T t) {
        if (this.f3939a.isEmpty() || abstractC1147a == null) {
            return;
        }
        if (t == null || mo17857b(t)) {
            abstractC1147a.mo17827b(this.f3939a);
        } else {
            abstractC1147a.mo17828a(this.f3939a);
        }
    }

    /* renamed from: a */
    public void m17869a() {
        if (!this.f3939a.isEmpty()) {
            this.f3939a.clear();
            this.f3941c.m17847b(this);
        }
    }

    /* renamed from: a */
    public void m17868a(AbstractC1147a abstractC1147a) {
        if (this.f3942d != abstractC1147a) {
            this.f3942d = abstractC1147a;
            m17867a(this.f3942d, this.f3940b);
        }
    }

    /* renamed from: a */
    public void m17866a(Iterable<C1191p> iterable) {
        this.f3939a.clear();
        for (C1191p c1191p : iterable) {
            if (mo17859a(c1191p)) {
                this.f3939a.add(c1191p.f4013a);
            }
        }
        if (this.f3939a.isEmpty()) {
            this.f3941c.m17847b(this);
        } else {
            this.f3941c.m17849a((AbstractC1143a) this);
        }
        m17867a(this.f3942d, this.f3940b);
    }

    @Override // androidx.work.impl.p052a.AbstractC1143a
    /* renamed from: a */
    public void mo17865a(T t) {
        this.f3940b = t;
        m17867a(this.f3942d, this.f3940b);
    }

    /* renamed from: a */
    abstract boolean mo17859a(C1191p c1191p);

    /* renamed from: a */
    public boolean m17864a(String str) {
        return this.f3940b != null && mo17857b(this.f3940b) && this.f3939a.contains(str);
    }

    /* renamed from: b */
    abstract boolean mo17857b(T t);
}
