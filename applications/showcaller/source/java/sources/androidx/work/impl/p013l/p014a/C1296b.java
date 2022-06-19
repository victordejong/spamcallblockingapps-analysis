package androidx.work.impl.p013l.p014a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import androidx.work.WorkInfo$State;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.AbstractC1268e;
import androidx.work.impl.C1289j;
import androidx.work.impl.p015m.AbstractC1299c;
import androidx.work.impl.p015m.C1300d;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.C1372f;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.l.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/l/a/b.class */
public class C1296b implements AbstractC1268e, AbstractC1299c, AbstractC1250b {

    /* renamed from: d */
    private static final String f5497d = AbstractC1404j.m30159f("GreedyScheduler");

    /* renamed from: e */
    private final Context f5498e;

    /* renamed from: f */
    private final C1289j f5499f;

    /* renamed from: g */
    private final C1300d f5500g;

    /* renamed from: i */
    private C1294a f5502i;

    /* renamed from: j */
    private boolean f5503j;

    /* renamed from: l */
    Boolean f5505l;

    /* renamed from: h */
    private final Set<C1344p> f5501h = new HashSet();

    /* renamed from: k */
    private final Object f5504k = new Object();

    public C1296b(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, C1289j c1289j) {
        this.f5498e = context;
        this.f5499f = c1289j;
        this.f5500g = new C1300d(context, abstractC1399a, this);
        this.f5502i = new C1294a(this, c1230a.m30587k());
    }

    /* renamed from: g */
    private void m30354g() {
        this.f5505l = Boolean.valueOf(C1372f.m30210b(this.f5498e, this.f5499f.m30394i()));
    }

    /* renamed from: h */
    private void m30353h() {
        if (!this.f5503j) {
            this.f5499f.m30390m().m30448c(this);
            this.f5503j = true;
        }
    }

    /* renamed from: i */
    private void m30352i(String str) {
        synchronized (this.f5504k) {
            Iterator<C1344p> it = this.f5501h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C1344p next = it.next();
                if (next.f5578c.equals(str)) {
                    AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f5501h.remove(next);
                    this.f5500g.m30346d(this.f5501h);
                    break;
                }
            }
        }
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: a */
    public void mo30358a(C1344p... c1344pArr) {
        if (this.f5505l == null) {
            m30354g();
        }
        if (!this.f5505l.booleanValue()) {
            AbstractC1404j.m30161c().mo30156d(f5497d, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        m30353h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C1344p c1344p : c1344pArr) {
            long m30286a = c1344p.m30286a();
            long currentTimeMillis = System.currentTimeMillis();
            if (c1344p.f5579d == WorkInfo$State.ENQUEUED) {
                if (currentTimeMillis < m30286a) {
                    C1294a c1294a = this.f5502i;
                    if (c1294a != null) {
                        c1294a.m30360a(c1344p);
                    }
                } else if (c1344p.m30285b()) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 23 && c1344p.f5587l.m30575h()) {
                        AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Ignoring WorkSpec %s, Requires device idle.", c1344p), new Throwable[0]);
                    } else if (i < 24 || !c1344p.f5587l.m30578e()) {
                        hashSet.add(c1344p);
                        hashSet2.add(c1344p.f5578c);
                    } else {
                        AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", c1344p), new Throwable[0]);
                    }
                } else {
                    AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Starting work for %s", c1344p.f5578c), new Throwable[0]);
                    this.f5499f.m30382u(c1344p.f5578c);
                }
            }
        }
        synchronized (this.f5504k) {
            if (!hashSet.isEmpty()) {
                AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f5501h.addAll(hashSet);
                this.f5500g.m30346d(this.f5501h);
            }
        }
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: b */
    public void mo30168b(List<String> list) {
        for (String str : list) {
            AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f5499f.m30379x(str);
        }
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: c */
    public boolean mo30357c() {
        return false;
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        m30352i(str);
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: e */
    public void mo30355e(String str) {
        if (this.f5505l == null) {
            m30354g();
        }
        if (!this.f5505l.booleanValue()) {
            AbstractC1404j.m30161c().mo30156d(f5497d, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        m30353h();
        AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Cancelling work ID %s", str), new Throwable[0]);
        C1294a c1294a = this.f5502i;
        if (c1294a != null) {
            c1294a.m30359b(str);
        }
        this.f5499f.m30379x(str);
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: f */
    public void mo30164f(List<String> list) {
        for (String str : list) {
            AbstractC1404j.m30161c().mo30158a(f5497d, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.f5499f.m30382u(str);
        }
    }
}
