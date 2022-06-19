package p1727n3.p1834m0.p1835c0.p1836p.p1837a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
import p1727n3.p1834m0.p1835c0.AbstractC26686e;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c;
import p1727n3.p1834m0.p1835c0.p1840q.C26725d;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1845t.C26789j;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26792l;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.p.a.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/a/c.class */
public class C26710c implements AbstractC26686e, AbstractC26724c, AbstractC26682b {

    /* renamed from: i */
    public static final String f74772i = AbstractC26839p.m1295e("GreedyScheduler");

    /* renamed from: a */
    public final Context f74773a;

    /* renamed from: b */
    public final C26702l f74774b;

    /* renamed from: c */
    public final C26725d f74775c;

    /* renamed from: e */
    public C26709b f74777e;

    /* renamed from: f */
    public boolean f74778f;

    /* renamed from: h */
    public Boolean f74780h;

    /* renamed from: d */
    public final Set<C26760p> f74776d = new HashSet();

    /* renamed from: g */
    public final Object f74779g = new Object();

    public C26710c(Context context, C26678c c26678c, AbstractC26821a abstractC26821a, C26702l c26702l) {
        this.f74773a = context;
        this.f74774b = c26702l;
        this.f74775c = new C26725d(context, abstractC26821a, this);
        this.f74777e = new C26709b(this, c26678c.f74670e);
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: a */
    public boolean mo1403a() {
        return false;
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        synchronized (this.f74779g) {
            Iterator<C26760p> it = this.f74776d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C26760p next = it.next();
                if (next.f74902a.equals(str)) {
                    AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f74776d.remove(next);
                    this.f74775c.m1394b(this.f74776d);
                    break;
                }
            }
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: c */
    public void mo1375c(List<String> list) {
        for (String str : list) {
            AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f74774b.m1427r(str);
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: d */
    public void mo1400d(String str) {
        Runnable remove;
        if (this.f74780h == null) {
            this.f74780h = Boolean.valueOf(C26789j.m1329a(this.f74773a, this.f74774b.f74724b));
        }
        if (!this.f74780h.booleanValue()) {
            AbstractC26839p.m1296c().mo1292d(f74772i, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        if (!this.f74778f) {
            this.f74774b.f74728f.m1447a(this);
            this.f74778f = true;
        }
        AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Cancelling work ID %s", str), new Throwable[0]);
        C26709b c26709b = this.f74777e;
        if (c26709b != null && (remove = c26709b.f74771c.remove(str)) != null) {
            c26709b.f74770b.f74679a.removeCallbacks(remove);
        }
        this.f74774b.m1427r(str);
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: e */
    public void mo1399e(C26760p... c26760pArr) {
        if (this.f74780h == null) {
            this.f74780h = Boolean.valueOf(C26789j.m1329a(this.f74773a, this.f74774b.f74724b));
        }
        if (!this.f74780h.booleanValue()) {
            AbstractC26839p.m1296c().mo1292d(f74772i, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        if (!this.f74778f) {
            this.f74774b.f74728f.m1447a(this);
            this.f74778f = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C26760p c26760p : c26760pArr) {
            long m1361a = c26760p.m1361a();
            long currentTimeMillis = System.currentTimeMillis();
            if (c26760p.f74903b == C26855x.EnumC26856a.ENQUEUED) {
                if (currentTimeMillis < m1361a) {
                    C26709b c26709b = this.f74777e;
                    if (c26709b != null) {
                        Runnable remove = c26709b.f74771c.remove(c26760p.f74902a);
                        if (remove != null) {
                            c26709b.f74770b.f74679a.removeCallbacks(remove);
                        }
                        RunnableC26708a runnableC26708a = new RunnableC26708a(c26709b, c26760p);
                        c26709b.f74771c.put(c26760p.f74902a, runnableC26708a);
                        c26709b.f74770b.f74679a.postDelayed(runnableC26708a, c26760p.m1361a() - System.currentTimeMillis());
                    }
                } else if (c26760p.m1360b()) {
                    int i = Build.VERSION.SDK_INT;
                    C26825d c26825d = c26760p.f74911j;
                    if (c26825d.f75060c) {
                        AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Ignoring WorkSpec %s, Requires device idle.", c26760p), new Throwable[0]);
                    } else if (i < 24 || !c26825d.m1308a()) {
                        hashSet.add(c26760p);
                        hashSet2.add(c26760p.f74902a);
                    } else {
                        AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", c26760p), new Throwable[0]);
                    }
                } else {
                    AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Starting work for %s", c26760p.f74902a), new Throwable[0]);
                    C26702l c26702l = this.f74774b;
                    ((C26822b) c26702l.f74726d).f75051a.execute(new RunnableC26792l(c26702l, c26760p.f74902a, null));
                }
            }
        }
        synchronized (this.f74779g) {
            if (!hashSet.isEmpty()) {
                AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f74776d.addAll(hashSet);
                this.f74775c.m1394b(this.f74776d);
            }
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: m */
    public void mo1371m(List<String> list) {
        for (String str : list) {
            AbstractC26839p.m1296c().mo1294a(f74772i, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            C26702l c26702l = this.f74774b;
            ((C26822b) c26702l.f74726d).f75051a.execute(new RunnableC26792l(c26702l, str, null));
        }
    }
}
