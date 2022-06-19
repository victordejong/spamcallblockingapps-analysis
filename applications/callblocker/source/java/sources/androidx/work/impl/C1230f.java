package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.AbstractC1296n;
import androidx.work.AbstractC1307r;
import androidx.work.AbstractC1311u;
import androidx.work.EnumC1136g;
import androidx.work.impl.utils.RunnableC1270b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/f.class */
public class C1230f extends AbstractC1307r {

    /* renamed from: a */
    private static final String f4142a = AbstractC1293l.m17541a("WorkContinuationImpl");

    /* renamed from: b */
    private final C1249i f4143b;

    /* renamed from: c */
    private final String f4144c;

    /* renamed from: d */
    private final EnumC1136g f4145d;

    /* renamed from: e */
    private final List<? extends AbstractC1311u> f4146e;

    /* renamed from: f */
    private final List<String> f4147f;

    /* renamed from: g */
    private final List<String> f4148g;

    /* renamed from: h */
    private final List<C1230f> f4149h;

    /* renamed from: i */
    private boolean f4150i;

    /* renamed from: j */
    private AbstractC1296n f4151j;

    public C1230f(C1249i c1249i, String str, EnumC1136g enumC1136g, List<? extends AbstractC1311u> list) {
        this(c1249i, str, enumC1136g, list, null);
    }

    C1230f(C1249i c1249i, String str, EnumC1136g enumC1136g, List<? extends AbstractC1311u> list, List<C1230f> list2) {
        this.f4143b = c1249i;
        this.f4144c = str;
        this.f4145d = enumC1136g;
        this.f4146e = list;
        this.f4149h = list2;
        this.f4147f = new ArrayList(this.f4146e.size());
        this.f4148g = new ArrayList();
        if (list2 != null) {
            for (C1230f c1230f : list2) {
                this.f4148g.addAll(c1230f.f4148g);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String m17528a = list.get(i).m17528a();
            this.f4147f.add(m17528a);
            this.f4148g.add(m17528a);
        }
    }

    /* renamed from: a */
    public static Set<String> m17698a(C1230f c1230f) {
        HashSet hashSet = new HashSet();
        List<C1230f> m17690h = c1230f.m17690h();
        if (m17690h != null && !m17690h.isEmpty()) {
            for (C1230f c1230f2 : m17690h) {
                hashSet.addAll(c1230f2.m17693e());
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    private static boolean m17697a(C1230f c1230f, Set<String> set) {
        boolean z;
        set.addAll(c1230f.m17693e());
        Set<String> m17698a = m17698a(c1230f);
        Iterator<String> it = set.iterator();
        while (true) {
            if (it.hasNext()) {
                if (m17698a.contains(it.next())) {
                    z = true;
                    break;
                }
            } else {
                List<C1230f> m17690h = c1230f.m17690h();
                if (m17690h != null && !m17690h.isEmpty()) {
                    for (C1230f c1230f2 : m17690h) {
                        if (m17697a(c1230f2, set)) {
                            z = true;
                            break;
                        }
                    }
                }
                set.removeAll(c1230f.m17693e());
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    public C1249i m17699a() {
        return this.f4143b;
    }

    /* renamed from: b */
    public String m17696b() {
        return this.f4144c;
    }

    /* renamed from: c */
    public EnumC1136g m17695c() {
        return this.f4145d;
    }

    /* renamed from: d */
    public List<? extends AbstractC1311u> m17694d() {
        return this.f4146e;
    }

    /* renamed from: e */
    public List<String> m17693e() {
        return this.f4147f;
    }

    /* renamed from: f */
    public boolean m17692f() {
        return this.f4150i;
    }

    /* renamed from: g */
    public void m17691g() {
        this.f4150i = true;
    }

    /* renamed from: h */
    public List<C1230f> m17690h() {
        return this.f4149h;
    }

    /* renamed from: i */
    public AbstractC1296n m17689i() {
        if (!this.f4150i) {
            RunnableC1270b runnableC1270b = new RunnableC1270b(this);
            this.f4143b.m17647g().mo17577a(runnableC1270b);
            this.f4151j = runnableC1270b.m17586a();
        } else {
            AbstractC1293l.m17543a().mo17537d(f4142a, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f4147f)), new Throwable[0]);
        }
        return this.f4151j;
    }

    /* renamed from: j */
    public boolean m17688j() {
        return m17697a(this, new HashSet());
    }
}
