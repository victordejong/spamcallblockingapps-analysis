package p1727n3.p1758e.p1767b.p1768j1;

import android.util.ArrayMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p1727n3.p1758e.p1759a.p1766f.C25887g;
import p1727n3.p1758e.p1759a.p1766f.i$a;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
/* renamed from: n3.e.b.j1.d1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/d1.class */
public class C25949d1 implements AbstractC25968j0 {

    /* renamed from: r */
    public static final C25949d1 f72559r = new C25949d1(new TreeMap(C25963i.f72589a));

    /* renamed from: q */
    public final TreeMap<AbstractC25968j0.AbstractC25969a<?>, Map<AbstractC25968j0.EnumC25971c, Object>> f72560q;

    public C25949d1(TreeMap<AbstractC25968j0.AbstractC25969a<?>, Map<AbstractC25968j0.EnumC25971c, Object>> treeMap) {
        this.f72560q = treeMap;
    }

    /* renamed from: w */
    public static C25949d1 m2869w(AbstractC25968j0 abstractC25968j0) {
        if (C25949d1.class.equals(abstractC25968j0.getClass())) {
            return (C25949d1) abstractC25968j0;
        }
        TreeMap treeMap = new TreeMap(C25963i.f72589a);
        C25949d1 c25949d1 = (C25949d1) abstractC25968j0;
        for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : c25949d1.mo2848d()) {
            Set<AbstractC25968j0.EnumC25971c> mo2845l = c25949d1.mo2845l(abstractC25969a);
            ArrayMap arrayMap = new ArrayMap();
            for (AbstractC25968j0.EnumC25971c enumC25971c : mo2845l) {
                arrayMap.put(enumC25971c, c25949d1.mo2844p(abstractC25969a, enumC25971c));
            }
            treeMap.put(abstractC25969a, arrayMap);
        }
        return new C25949d1(treeMap);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: a */
    public <ValueT> ValueT mo2851a(AbstractC25968j0.AbstractC25969a<ValueT> abstractC25969a) {
        Map<AbstractC25968j0.EnumC25971c, Object> map = this.f72560q.get(abstractC25969a);
        if (map != null) {
            return (ValueT) map.get((AbstractC25968j0.EnumC25971c) Collections.min(map.keySet()));
        }
        throw new IllegalArgumentException("Option does not exist: " + abstractC25969a);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: b */
    public <ValueT> ValueT mo2850b(AbstractC25968j0.AbstractC25969a<ValueT> abstractC25969a, ValueT valuet) {
        try {
            return (ValueT) mo2851a(abstractC25969a);
        } catch (IllegalArgumentException e) {
            return valuet;
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: c */
    public boolean mo2849c(AbstractC25968j0.AbstractC25969a<?> abstractC25969a) {
        return this.f72560q.containsKey(abstractC25969a);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: d */
    public Set<AbstractC25968j0.AbstractC25969a<?>> mo2848d() {
        return Collections.unmodifiableSet(this.f72560q.keySet());
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: e */
    public AbstractC25968j0.EnumC25971c mo2847e(AbstractC25968j0.AbstractC25969a<?> abstractC25969a) {
        Map<AbstractC25968j0.EnumC25971c, Object> map = this.f72560q.get(abstractC25969a);
        if (map != null) {
            return (AbstractC25968j0.EnumC25971c) Collections.min(map.keySet());
        }
        throw new IllegalArgumentException("Option does not exist: " + abstractC25969a);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: j */
    public void mo2846j(String str, AbstractC25968j0.AbstractC25970b abstractC25970b) {
        for (Map.Entry<AbstractC25968j0.AbstractC25969a<?>, Map<AbstractC25968j0.EnumC25971c, Object>> entry : this.f72560q.tailMap(new C25992n(str, Void.class, null)).entrySet()) {
            if (!entry.getKey().mo2823a().startsWith(str)) {
                return;
            }
            AbstractC25968j0.AbstractC25969a<?> key = entry.getKey();
            C25887g c25887g = (C25887g) abstractC25970b;
            i$a i_a = c25887g.f72414a;
            AbstractC25968j0 abstractC25968j0 = c25887g.f72415b;
            i_a.f72424a.z(key, abstractC25968j0.mo2847e(key), abstractC25968j0.mo2851a(key));
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: l */
    public Set<AbstractC25968j0.EnumC25971c> mo2845l(AbstractC25968j0.AbstractC25969a<?> abstractC25969a) {
        Map<AbstractC25968j0.EnumC25971c, Object> map = this.f72560q.get(abstractC25969a);
        return map == null ? Collections.emptySet() : Collections.unmodifiableSet(map.keySet());
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0
    /* renamed from: p */
    public <ValueT> ValueT mo2844p(AbstractC25968j0.AbstractC25969a<ValueT> abstractC25969a, AbstractC25968j0.EnumC25971c enumC25971c) {
        Map<AbstractC25968j0.EnumC25971c, Object> map = this.f72560q.get(abstractC25969a);
        if (map == null) {
            throw new IllegalArgumentException("Option does not exist: " + abstractC25969a);
        } else if (map.containsKey(enumC25971c)) {
            return (ValueT) map.get(enumC25971c);
        } else {
            throw new IllegalArgumentException("Option does not exist: " + abstractC25969a + " with priority=" + enumC25971c);
        }
    }
}
