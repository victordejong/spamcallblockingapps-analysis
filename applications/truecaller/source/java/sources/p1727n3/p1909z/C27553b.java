package p1727n3.p1909z;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import p1727n3.p1744b0.p1745a.AbstractC25617q;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25574c;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1909z.AbstractC27592q1;
import s1.a.f;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: n3.z.b */
/* loaded from: classes-dex2jar.jar:n3/z/b.class */
public class C27553b<T> {

    /* renamed from: a */
    public AbstractC25617q f77610a;

    /* renamed from: b */
    public final C25574c<T> f77611b;

    /* renamed from: c */
    public Executor f77612c;

    /* renamed from: e */
    public AbstractC27592q1<T> f77614e;

    /* renamed from: f */
    public AbstractC27592q1<T> f77615f;

    /* renamed from: g */
    public int f77616g;

    /* renamed from: h */
    public final AbstractC27592q1.AbstractC27596d f77617h;

    /* renamed from: i */
    public final f<s> f77618i;

    /* renamed from: d */
    public final CopyOnWriteArrayList<AbstractC27554b<T>> f77613d = new CopyOnWriteArrayList<>();

    /* renamed from: j */
    public final List<p<EnumC27601t0, AbstractC27597r0, s>> f77619j = new CopyOnWriteArrayList();

    /* renamed from: k */
    public final AbstractC27592q1.AbstractC27594b f77620k = new e(this);

    /* renamed from: n3.z.b$b */
    /* loaded from: classes-dex2jar.jar:n3/z/b$b.class */
    public interface AbstractC27554b<T> {
        /* renamed from: a */
        void m108a(AbstractC27592q1<T> abstractC27592q1, AbstractC27592q1<T> abstractC27592q12);
    }

    public C27553b(RecyclerView.AbstractC0317g<?> abstractC0317g, C25586h.AbstractC25591e<T> abstractC25591e) {
        l.e(abstractC0317g, "adapter");
        l.e(abstractC25591e, "diffCallback");
        Executor executor = C25628a.f71801d;
        l.d(executor, "ArchTaskExecutor.getMainThreadExecutor()");
        this.f77612c = executor;
        d dVar = new d(this);
        this.f77617h = dVar;
        this.f77618i = new c(dVar);
        this.f77610a = new C25570b(abstractC0317g);
        C25574c<T> m3206a = new C25574c.C25575a(abstractC25591e).m3206a();
        l.d(m3206a, "AsyncDifferConfig.Builder(diffCallback).build()");
        this.f77611b = m3206a;
    }

    /* renamed from: a */
    public AbstractC27592q1<T> m111a() {
        AbstractC27592q1<T> abstractC27592q1 = this.f77615f;
        if (abstractC27592q1 == null) {
            abstractC27592q1 = this.f77614e;
        }
        return abstractC27592q1;
    }

    /* renamed from: b */
    public final AbstractC25617q m110b() {
        AbstractC25617q abstractC25617q = this.f77610a;
        if (abstractC25617q != null) {
            return abstractC25617q;
        }
        l.l("updateCallback");
        throw null;
    }

    /* renamed from: c */
    public final void m109c(AbstractC27592q1<T> abstractC27592q1, AbstractC27592q1<T> abstractC27592q12, Runnable runnable) {
        Iterator<T> it = this.f77613d.iterator();
        while (it.hasNext()) {
            ((AbstractC27554b) it.next()).m108a(abstractC27592q1, abstractC27592q12);
        }
        if (runnable != null) {
            runnable.run();
        }
    }
}
