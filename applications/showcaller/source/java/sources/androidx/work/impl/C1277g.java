package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1408l;
import androidx.work.AbstractC1417p;
import androidx.work.AbstractC1419r;
import androidx.work.ExistingWorkPolicy;
import androidx.work.impl.utils.RunnableC1368b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/g.class */
public class C1277g extends AbstractC1417p {

    /* renamed from: a */
    private static final String f5422a = AbstractC1404j.m30159f("WorkContinuationImpl");

    /* renamed from: b */
    private final C1289j f5423b;

    /* renamed from: c */
    private final String f5424c;

    /* renamed from: d */
    private final ExistingWorkPolicy f5425d;

    /* renamed from: e */
    private final List<? extends AbstractC1419r> f5426e;

    /* renamed from: f */
    private final List<String> f5427f;

    /* renamed from: g */
    private final List<String> f5428g;

    /* renamed from: h */
    private final List<C1277g> f5429h;

    /* renamed from: i */
    private boolean f5430i;

    /* renamed from: j */
    private AbstractC1408l f5431j;

    public C1277g(C1289j c1289j, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends AbstractC1419r> list, List<C1277g> list2) {
        this.f5423b = c1289j;
        this.f5424c = str;
        this.f5425d = existingWorkPolicy;
        this.f5426e = list;
        this.f5429h = list2;
        this.f5427f = new ArrayList(list.size());
        this.f5428g = new ArrayList();
        if (list2 != null) {
            for (C1277g c1277g : list2) {
                this.f5428g.addAll(c1277g.f5428g);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String m30141a = list.get(i).m30141a();
            this.f5427f.add(m30141a);
            this.f5428g.add(m30141a);
        }
    }

    public C1277g(C1289j c1289j, List<? extends AbstractC1419r> list) {
        this(c1289j, null, ExistingWorkPolicy.KEEP, list, null);
    }

    /* renamed from: i */
    private static boolean m30409i(C1277g c1277g, Set<String> set) {
        set.addAll(c1277g.m30415c());
        Set<String> m30406l = m30406l(c1277g);
        for (String str : set) {
            if (m30406l.contains(str)) {
                return true;
            }
        }
        List<C1277g> m30413e = c1277g.m30413e();
        if (m30413e != null && !m30413e.isEmpty()) {
            for (C1277g c1277g2 : m30413e) {
                if (m30409i(c1277g2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(c1277g.m30415c());
        return false;
    }

    /* renamed from: l */
    public static Set<String> m30406l(C1277g c1277g) {
        HashSet hashSet = new HashSet();
        List<C1277g> m30413e = c1277g.m30413e();
        if (m30413e != null && !m30413e.isEmpty()) {
            for (C1277g c1277g2 : m30413e) {
                hashSet.addAll(c1277g2.m30415c());
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public AbstractC1408l m30417a() {
        if (!this.f5430i) {
            RunnableC1368b runnableC1368b = new RunnableC1368b(this);
            this.f5423b.m30387p().mo30172b(runnableC1368b);
            this.f5431j = runnableC1368b.m30225d();
        } else {
            AbstractC1404j.m30161c().mo30154h(f5422a, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f5427f)), new Throwable[0]);
        }
        return this.f5431j;
    }

    /* renamed from: b */
    public ExistingWorkPolicy m30416b() {
        return this.f5425d;
    }

    /* renamed from: c */
    public List<String> m30415c() {
        return this.f5427f;
    }

    /* renamed from: d */
    public String m30414d() {
        return this.f5424c;
    }

    /* renamed from: e */
    public List<C1277g> m30413e() {
        return this.f5429h;
    }

    /* renamed from: f */
    public List<? extends AbstractC1419r> m30412f() {
        return this.f5426e;
    }

    /* renamed from: g */
    public C1289j m30411g() {
        return this.f5423b;
    }

    /* renamed from: h */
    public boolean m30410h() {
        return m30409i(this, new HashSet());
    }

    /* renamed from: j */
    public boolean m30408j() {
        return this.f5430i;
    }

    /* renamed from: k */
    public void m30407k() {
        this.f5430i = true;
    }
}
