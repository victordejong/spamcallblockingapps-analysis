package p1727n3.p1758e.p1767b.p1768j1;

import android.util.ArrayMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
/* renamed from: n3.e.b.j1.g0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/g0.class */
public final class C25956g0 {

    /* renamed from: g */
    public static final AbstractC25968j0.AbstractC25969a<Integer> f72570g = new C25992n("camerax.core.captureConfig.rotation", Integer.TYPE, null);

    /* renamed from: h */
    public static final AbstractC25968j0.AbstractC25969a<Integer> f72571h = new C25992n("camerax.core.captureConfig.jpegQuality", Integer.class, null);

    /* renamed from: a */
    public final List<AbstractC25980k0> f72572a;

    /* renamed from: b */
    public final AbstractC25968j0 f72573b;

    /* renamed from: c */
    public final int f72574c;

    /* renamed from: d */
    public final List<AbstractC26002q> f72575d;

    /* renamed from: e */
    public final boolean f72576e;

    /* renamed from: f */
    public final C25996o1 f72577f;

    /* renamed from: n3.e.b.j1.g0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/g0$a.class */
    public static final class C25957a {

        /* renamed from: a */
        public final Set<AbstractC25980k0> f72578a;

        /* renamed from: b */
        public AbstractC26060z0 f72579b;

        /* renamed from: c */
        public int f72580c;

        /* renamed from: d */
        public List<AbstractC26002q> f72581d;

        /* renamed from: e */
        public boolean f72582e;

        /* renamed from: f */
        public C25940b1 f72583f;

        public C25957a() {
            this.f72578a = new HashSet();
            this.f72579b = a1.x();
            this.f72580c = -1;
            this.f72581d = new ArrayList();
            this.f72582e = false;
            this.f72583f = new C25940b1(new ArrayMap());
        }

        public C25957a(C25956g0 c25956g0) {
            HashSet hashSet = new HashSet();
            this.f72578a = hashSet;
            this.f72579b = a1.x();
            this.f72580c = -1;
            this.f72581d = new ArrayList();
            this.f72582e = false;
            this.f72583f = new C25940b1(new ArrayMap());
            hashSet.addAll(c25956g0.f72572a);
            this.f72579b = a1.y(c25956g0.f72573b);
            this.f72580c = c25956g0.f72574c;
            this.f72581d.addAll(c25956g0.f72575d);
            this.f72582e = c25956g0.f72576e;
            C25996o1 c25996o1 = c25956g0.f72577f;
            ArrayMap arrayMap = new ArrayMap();
            for (String str : c25996o1.f72648a.keySet()) {
                arrayMap.put(str, c25996o1.m2817a(str));
            }
            this.f72583f = new C25940b1(arrayMap);
        }

        /* renamed from: a */
        public void m2867a(Collection<AbstractC26002q> collection) {
            for (AbstractC26002q abstractC26002q : collection) {
                m2866b(abstractC26002q);
            }
        }

        /* renamed from: b */
        public void m2866b(AbstractC26002q abstractC26002q) {
            if (!this.f72581d.contains(abstractC26002q)) {
                this.f72581d.add(abstractC26002q);
                return;
            }
            throw new IllegalArgumentException("duplicate camera capture callback");
        }

        /* renamed from: c */
        public void m2865c(AbstractC25968j0 abstractC25968j0) {
            for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : abstractC25968j0.mo2848d()) {
                Object mo2850b = ((C25949d1) this.f72579b).mo2850b(abstractC25969a, null);
                Object mo2851a = abstractC25968j0.mo2851a(abstractC25969a);
                if (mo2850b instanceof AbstractC26058y0) {
                    AbstractC26058y0 abstractC26058y0 = (AbstractC26058y0) mo2850b;
                    abstractC26058y0.f72730a.addAll(((AbstractC26058y0) mo2851a).m2767b());
                } else {
                    AbstractC26058y0 abstractC26058y02 = mo2851a;
                    if (mo2851a instanceof AbstractC26058y0) {
                        abstractC26058y02 = ((AbstractC26058y0) mo2851a).clone();
                    }
                    this.f72579b.z(abstractC25969a, abstractC25968j0.mo2847e(abstractC25969a), abstractC26058y02);
                }
            }
        }

        /* renamed from: d */
        public C25956g0 m2864d() {
            ArrayList arrayList = new ArrayList(this.f72578a);
            C25949d1 m2869w = C25949d1.m2869w(this.f72579b);
            int i = this.f72580c;
            List<AbstractC26002q> list = this.f72581d;
            boolean z = this.f72582e;
            C25940b1 c25940b1 = this.f72583f;
            C25996o1 c25996o1 = C25996o1.f72647b;
            ArrayMap arrayMap = new ArrayMap();
            for (String str : c25940b1.f72648a.keySet()) {
                arrayMap.put(str, c25940b1.m2817a(str));
            }
            return new C25956g0(arrayList, m2869w, i, list, z, new C25996o1(arrayMap));
        }
    }

    /* renamed from: n3.e.b.j1.g0$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/g0$b.class */
    public interface AbstractC25958b {
    }

    public C25956g0(List<AbstractC25980k0> list, AbstractC25968j0 abstractC25968j0, int i, List<AbstractC26002q> list2, boolean z, C25996o1 c25996o1) {
        this.f72572a = list;
        this.f72573b = abstractC25968j0;
        this.f72574c = i;
        this.f72575d = Collections.unmodifiableList(list2);
        this.f72576e = z;
        this.f72577f = c25996o1;
    }

    /* renamed from: a */
    public List<AbstractC25980k0> m2868a() {
        return Collections.unmodifiableList(this.f72572a);
    }
}
