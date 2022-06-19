package p206q1;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.work.C0677a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p186o1.EnumC3836m;
import p197p1.AbstractC3996a;
import p197p1.AbstractC4000d;
import p197p1.C4006j;
import p238t1.AbstractC4354c;
import p238t1.C4355d;
import p282x1.C4832p;
import p292y1.C4962i;
import p292y1.RunnableC4965k;
/* renamed from: q1.c */
/* loaded from: classes-dex2jar.jar:q1/c.class */
public class C4146c implements AbstractC4000d, AbstractC4354c, AbstractC3996a {

    /* renamed from: i */
    public static final String f13076i = AbstractC3824h.m1773e("GreedyScheduler");

    /* renamed from: a */
    public final Context f13077a;

    /* renamed from: b */
    public final C4006j f13078b;

    /* renamed from: c */
    public final C4355d f13079c;

    /* renamed from: e */
    public C4145b f13081e;

    /* renamed from: f */
    public boolean f13082f;

    /* renamed from: h */
    public Boolean f13084h;

    /* renamed from: d */
    public final Set<C4832p> f13080d = new HashSet();

    /* renamed from: g */
    public final Object f13083g = new Object();

    public C4146c(Context context, C0677a c0677a, AbstractC0008a abstractC0008a, C4006j c4006j) {
        this.f13077a = context;
        this.f13078b = c4006j;
        this.f13079c = new C4355d(context, abstractC0008a, this);
        this.f13081e = new C4145b(this, c0677a.f2635e);
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        synchronized (this.f13083g) {
            Iterator<C4832p> it2 = this.f13080d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                C4832p next = it2.next();
                if (next.f14831a.equals(str)) {
                    AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f13080d.remove(next);
                    this.f13079c.m1011b(this.f13080d);
                    break;
                }
            }
        }
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: b */
    public void mo1126b(String str) {
        Runnable remove;
        if (this.f13084h == null) {
            this.f13084h = Boolean.valueOf(C4962i.m173a(this.f13077a, this.f13078b.f12583b));
        }
        if (!this.f13084h.booleanValue()) {
            AbstractC3824h.m1774c().mo1770d(f13076i, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        if (!this.f13082f) {
            this.f13078b.f12587f.m1551b(this);
            this.f13082f = true;
        }
        AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Cancelling work ID %s", str), new Throwable[0]);
        C4145b c4145b = this.f13081e;
        if (c4145b != null && (remove = c4145b.f13075c.remove(str)) != null) {
            ((Handler) c4145b.f13074b.f9203a).removeCallbacks(remove);
        }
        this.f13078b.m1531g(str);
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: c */
    public void mo1014c(List<String> list) {
        for (String str : list) {
            AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f13078b.m1531g(str);
        }
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: d */
    public void mo1124d(C4832p... c4832pArr) {
        if (this.f13084h == null) {
            this.f13084h = Boolean.valueOf(C4962i.m173a(this.f13077a, this.f13078b.f12583b));
        }
        if (!this.f13084h.booleanValue()) {
            AbstractC3824h.m1774c().mo1770d(f13076i, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        if (!this.f13082f) {
            this.f13078b.f12587f.m1551b(this);
            this.f13082f = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C4832p c4832p : c4832pArr) {
            long m391a = c4832p.m391a();
            long currentTimeMillis = System.currentTimeMillis();
            if (c4832p.f14832b == EnumC3836m.ENQUEUED) {
                if (currentTimeMillis < m391a) {
                    C4145b c4145b = this.f13081e;
                    if (c4145b != null) {
                        Runnable remove = c4145b.f13075c.remove(c4832p.f14831a);
                        if (remove != null) {
                            ((Handler) c4145b.f13074b.f9203a).removeCallbacks(remove);
                        }
                        RunnableC4144a runnableC4144a = new RunnableC4144a(c4145b, c4832p);
                        c4145b.f13075c.put(c4832p.f14831a, runnableC4144a);
                        ((Handler) c4145b.f13074b.f9203a).postDelayed(runnableC4144a, c4832p.m391a() - System.currentTimeMillis());
                    }
                } else if (c4832p.m390b()) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 23 && c4832p.f14840j.f12296c) {
                        AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Ignoring WorkSpec %s, Requires device idle.", c4832p), new Throwable[0]);
                    } else if (i < 24 || !c4832p.f14840j.m1777a()) {
                        hashSet.add(c4832p);
                        hashSet2.add(c4832p.f14831a);
                    } else {
                        AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", c4832p), new Throwable[0]);
                    }
                } else {
                    AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Starting work for %s", c4832p.f14831a), new Throwable[0]);
                    C4006j c4006j = this.f13078b;
                    ((C0009b) c4006j.f12585d).f8a.execute(new RunnableC4965k(c4006j, c4832p.f14831a, null));
                }
            }
        }
        synchronized (this.f13083g) {
            if (!hashSet.isEmpty()) {
                AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f13080d.addAll(hashSet);
                this.f13079c.m1011b(this.f13080d);
            }
        }
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: e */
    public void mo1013e(List<String> list) {
        for (String str : list) {
            AbstractC3824h.m1774c().mo1772a(f13076i, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            C4006j c4006j = this.f13078b;
            ((C0009b) c4006j.f12585d).f8a.execute(new RunnableC4965k(c4006j, str, null));
        }
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: f */
    public boolean mo1122f() {
        return false;
    }
}
