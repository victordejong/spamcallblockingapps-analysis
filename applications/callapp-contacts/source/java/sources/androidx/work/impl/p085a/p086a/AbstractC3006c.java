package androidx.work.impl.p085a.p086a;

import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.AbstractC3003a;
import androidx.work.impl.p085a.p087b.AbstractC3018d;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c.class */
public abstract class AbstractC3006c<T> implements AbstractC3003a<T> {

    /* renamed from: a */
    public final List<String> f11168a = new ArrayList();

    /* renamed from: b */
    public T f11169b;

    /* renamed from: c */
    private AbstractC3018d<T> f11170c;

    /* renamed from: d */
    private AbstractC3007a f11171d;

    /* renamed from: androidx.work.impl.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c$a.class */
    public interface AbstractC3007a {
        /* renamed from: a */
        void mo39439a(List<String> list);

        /* renamed from: b */
        void mo39438b(List<String> list);
    }

    public AbstractC3006c(AbstractC3018d<T> abstractC3018d) {
        this.f11170c = abstractC3018d;
    }

    /* renamed from: a */
    private void m39459a(AbstractC3007a abstractC3007a, T t) {
        if (this.f11168a.isEmpty() || abstractC3007a == null) {
            return;
        }
        if (t == null || mo39455b(t)) {
            abstractC3007a.mo39438b(this.f11168a);
        } else {
            abstractC3007a.mo39439a(this.f11168a);
        }
    }

    /* renamed from: a */
    public final void m39461a() {
        if (!this.f11168a.isEmpty()) {
            this.f11168a.clear();
            this.f11170c.m39452b(this);
        }
    }

    /* renamed from: a */
    public final void m39460a(AbstractC3007a abstractC3007a) {
        if (this.f11171d != abstractC3007a) {
            this.f11171d = abstractC3007a;
            m39459a(abstractC3007a, this.f11169b);
        }
    }

    /* renamed from: a */
    public final void m39458a(Iterable<WorkSpec> iterable) {
        this.f11168a.clear();
        for (WorkSpec workSpec : iterable) {
            if (mo39456a(workSpec)) {
                this.f11168a.add(workSpec.f11397id);
            }
        }
        if (this.f11168a.isEmpty()) {
            this.f11170c.m39452b(this);
        } else {
            this.f11170c.m39454a((AbstractC3003a) this);
        }
        m39459a(this.f11171d, this.f11169b);
    }

    @Override // androidx.work.impl.p085a.AbstractC3003a
    /* renamed from: a */
    public final void mo39457a(T t) {
        this.f11169b = t;
        m39459a(this.f11171d, t);
    }

    /* renamed from: a */
    abstract boolean mo39456a(WorkSpec workSpec);

    /* renamed from: b */
    public abstract boolean mo39455b(T t);
}
