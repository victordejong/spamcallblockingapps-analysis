package p1727n3.p1834m0.p1835c0;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.AbstractC26858z;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26783e;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.g */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/g.class */
public class C26688g extends AbstractC26854w {

    /* renamed from: j */
    public static final String f74698j = AbstractC26839p.m1295e("WorkContinuationImpl");

    /* renamed from: a */
    public final C26702l f74699a;

    /* renamed from: b */
    public final String f74700b;

    /* renamed from: c */
    public final EnumC26832h f74701c;

    /* renamed from: d */
    public final List<? extends AbstractC26858z> f74702d;

    /* renamed from: e */
    public final List<String> f74703e;

    /* renamed from: f */
    public final List<String> f74704f;

    /* renamed from: g */
    public final List<C26688g> f74705g;

    /* renamed from: h */
    public boolean f74706h;

    /* renamed from: i */
    public AbstractC26844s f74707i;

    public C26688g(C26702l c26702l, String str, EnumC26832h enumC26832h, List<? extends AbstractC26858z> list) {
        this(c26702l, str, enumC26832h, list, null);
    }

    public C26688g(C26702l c26702l, String str, EnumC26832h enumC26832h, List<? extends AbstractC26858z> list, List<C26688g> list2) {
        this.f74699a = c26702l;
        this.f74700b = str;
        this.f74701c = enumC26832h;
        this.f74702d = list;
        this.f74705g = list2;
        this.f74703e = new ArrayList(list.size());
        this.f74704f = new ArrayList();
        if (list2 != null) {
            for (C26688g c26688g : list2) {
                this.f74704f.addAll(c26688g.f74704f);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String m1274a = list.get(i).m1274a();
            this.f74703e.add(m1274a);
            this.f74704f.add(m1274a);
        }
    }

    /* renamed from: c */
    public static boolean m1437c(C26688g c26688g, Set<String> set) {
        set.addAll(c26688g.f74703e);
        Set<String> m1436d = m1436d(c26688g);
        for (String str : set) {
            if (((HashSet) m1436d).contains(str)) {
                return true;
            }
        }
        List<C26688g> list = c26688g.f74705g;
        if (list != null && !list.isEmpty()) {
            for (C26688g c26688g2 : list) {
                if (m1437c(c26688g2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(c26688g.f74703e);
        return false;
    }

    /* renamed from: d */
    public static Set<String> m1436d(C26688g c26688g) {
        HashSet hashSet = new HashSet();
        List<C26688g> list = c26688g.f74705g;
        if (list != null && !list.isEmpty()) {
            for (C26688g c26688g2 : list) {
                hashSet.addAll(c26688g2.f74703e);
            }
        }
        return hashSet;
    }

    @Override // p1727n3.p1834m0.AbstractC26854w
    /* renamed from: a */
    public AbstractC26844s mo1290a() {
        if (!this.f74706h) {
            RunnableC26783e runnableC26783e = new RunnableC26783e(this);
            ((C26822b) this.f74699a.f74726d).f75051a.execute(runnableC26783e);
            this.f74707i = runnableC26783e.f74955b;
        } else {
            AbstractC26839p.m1296c().mo1291f(f74698j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f74703e)), new Throwable[0]);
        }
        return this.f74707i;
    }
}
