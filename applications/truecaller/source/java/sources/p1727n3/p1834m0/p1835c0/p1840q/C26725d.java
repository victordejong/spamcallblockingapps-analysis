package p1727n3.p1834m0.p1835c0.p1840q;

import android.content.Context;
import n3.m0.c0.q.e.a;
import n3.m0.c0.q.e.b;
import n3.m0.c0.q.e.d;
import n3.m0.c0.q.e.e;
import n3.m0.c0.q.e.f;
import n3.m0.c0.q.e.g;
import n3.m0.c0.q.e.h;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1840q.p1841e.AbstractC26726c;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* renamed from: n3.m0.c0.q.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/d.class */
public class C26725d implements AbstractC26726c.AbstractC26727a {

    /* renamed from: d */
    public static final String f74828d = AbstractC26839p.m1295e("WorkConstraintsTracker");

    /* renamed from: a */
    public final AbstractC26724c f74829a;

    /* renamed from: b */
    public final AbstractC26726c<?>[] f74830b;

    /* renamed from: c */
    public final Object f74831c = new Object();

    public C26725d(Context context, AbstractC26821a abstractC26821a, AbstractC26724c abstractC26724c) {
        Context applicationContext = context.getApplicationContext();
        this.f74829a = abstractC26724c;
        this.f74830b = new AbstractC26726c[]{new a(applicationContext, abstractC26821a), new b(applicationContext, abstractC26821a), new h(applicationContext, abstractC26821a), new d(applicationContext, abstractC26821a), new g(applicationContext, abstractC26821a), new f(applicationContext, abstractC26821a), new e(applicationContext, abstractC26821a)};
    }

    /* renamed from: a */
    public boolean m1395a(String str) {
        AbstractC26726c<?>[] abstractC26726cArr;
        synchronized (this.f74831c) {
            for (AbstractC26726c<?> abstractC26726c : this.f74830b) {
                Object obj = abstractC26726c.f74833b;
                if (obj != null && abstractC26726c.m1390c(obj) && abstractC26726c.f74832a.contains(str)) {
                    AbstractC26839p.m1296c().mo1294a(f74828d, String.format("Work %s constrained by %s", str, abstractC26726c.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m1394b(Iterable<C26760p> iterable) {
        AbstractC26726c<?>[] abstractC26726cArr;
        AbstractC26726c<?>[] abstractC26726cArr2;
        synchronized (this.f74831c) {
            for (AbstractC26726c<?> abstractC26726c : this.f74830b) {
                if (abstractC26726c.f74835d != null) {
                    abstractC26726c.f74835d = null;
                    abstractC26726c.m1388e(null, abstractC26726c.f74833b);
                }
            }
            for (AbstractC26726c<?> abstractC26726c2 : this.f74830b) {
                abstractC26726c2.m1389d(iterable);
            }
            for (AbstractC26726c<?> abstractC26726c3 : this.f74830b) {
                if (abstractC26726c3.f74835d != this) {
                    abstractC26726c3.f74835d = this;
                    abstractC26726c3.m1388e(this, abstractC26726c3.f74833b);
                }
            }
        }
    }

    /* renamed from: c */
    public void m1393c() {
        AbstractC26726c<?>[] abstractC26726cArr;
        synchronized (this.f74831c) {
            for (AbstractC26726c<?> abstractC26726c : this.f74830b) {
                if (!abstractC26726c.f74832a.isEmpty()) {
                    abstractC26726c.f74832a.clear();
                    abstractC26726c.f74834c.m1385b(abstractC26726c);
                }
            }
        }
    }
}
