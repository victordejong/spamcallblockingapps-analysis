package p1727n3.p1758e.p1767b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.C26014t0;
/* renamed from: n3.e.b.m0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/m0.class */
public final class C26077m0 {

    /* renamed from: b */
    public static final C26077m0 f72752b;

    /* renamed from: c */
    public static final C26077m0 f72753c;

    /* renamed from: a */
    public LinkedHashSet<AbstractC26062k0> f72754a;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new C26014t0(0));
        f72752b = new C26077m0(linkedHashSet);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(new C26014t0(1));
        f72753c = new C26077m0(linkedHashSet2);
    }

    public C26077m0(LinkedHashSet<AbstractC26062k0> linkedHashSet) {
        this.f72754a = linkedHashSet;
    }

    /* renamed from: a */
    public LinkedHashSet<AbstractC25938b0> m2740a(LinkedHashSet<AbstractC25938b0> linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator<AbstractC25938b0> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().mo2761a());
        }
        List<AbstractC26075l0> m2739b = m2739b(arrayList);
        LinkedHashSet<AbstractC25938b0> linkedHashSet2 = new LinkedHashSet<>();
        Iterator<AbstractC25938b0> it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            AbstractC25938b0 next = it2.next();
            if (m2739b.contains(next.mo2761a())) {
                linkedHashSet2.add(next);
            }
        }
        return linkedHashSet2;
    }

    /* renamed from: b */
    public List<AbstractC26075l0> m2739b(List<AbstractC26075l0> list) {
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList(list);
        Iterator<AbstractC26062k0> it = this.f72754a.iterator();
        while (it.hasNext()) {
            arrayList2 = it.next().mo2762a(Collections.unmodifiableList(arrayList2));
            if (arrayList2.isEmpty()) {
                throw new IllegalArgumentException("No available camera can be found.");
            }
            if (!arrayList.containsAll(arrayList2)) {
                throw new IllegalArgumentException("The output isn't contained in the input.");
            }
            arrayList.retainAll(arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: c */
    public Integer m2738c() {
        Iterator<AbstractC26062k0> it = this.f72754a.iterator();
        Integer num = null;
        while (it.hasNext()) {
            AbstractC26062k0 next = it.next();
            if (next instanceof C26014t0) {
                Integer valueOf = Integer.valueOf(((C26014t0) next).f72665a);
                if (num == null) {
                    num = valueOf;
                } else if (!num.equals(valueOf)) {
                    throw new IllegalStateException("Multiple conflicting lens facing requirements exist.");
                }
            }
        }
        return num;
    }

    /* renamed from: d */
    public AbstractC25938b0 m2737d(LinkedHashSet<AbstractC25938b0> linkedHashSet) {
        return m2740a(linkedHashSet).iterator().next();
    }
}
