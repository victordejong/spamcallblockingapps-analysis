package p1727n3.p1834m0.p1835c0.p1840q.p1842f;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26722a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.q.f.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/d.class */
public abstract class AbstractC26730d<T> {

    /* renamed from: f */
    public static final String f74839f = AbstractC26839p.m1295e("ConstraintTracker");

    /* renamed from: a */
    public final AbstractC26821a f74840a;

    /* renamed from: b */
    public final Context f74841b;

    /* renamed from: c */
    public final Object f74842c = new Object();

    /* renamed from: d */
    public final Set<AbstractC26722a<T>> f74843d = new LinkedHashSet();

    /* renamed from: e */
    public T f74844e;

    /* renamed from: n3.m0.c0.q.f.d$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/d$a.class */
    public class RunnableC26731a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f74845a;

        public RunnableC26731a(List list) {
            AbstractC26730d.this = r4;
            this.f74845a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC26722a abstractC26722a : this.f74845a) {
                abstractC26722a.mo1392a(AbstractC26730d.this.f74844e);
            }
        }
    }

    public AbstractC26730d(Context context, AbstractC26821a abstractC26821a) {
        this.f74841b = context.getApplicationContext();
        this.f74840a = abstractC26821a;
    }

    /* renamed from: a */
    public abstract T mo1383a();

    /* renamed from: b */
    public void m1385b(AbstractC26722a<T> abstractC26722a) {
        synchronized (this.f74842c) {
            if (this.f74843d.remove(abstractC26722a) && this.f74843d.isEmpty()) {
                mo1381e();
            }
        }
    }

    /* renamed from: c */
    public void m1384c(T t) {
        synchronized (this.f74842c) {
            T t2 = this.f74844e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f74844e = t;
                ((C26822b) this.f74840a).f75053c.execute(new RunnableC26731a(new ArrayList(this.f74843d)));
            }
        }
    }

    /* renamed from: d */
    public abstract void mo1382d();

    /* renamed from: e */
    public abstract void mo1381e();
}
