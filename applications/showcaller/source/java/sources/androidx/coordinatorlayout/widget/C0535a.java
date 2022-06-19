package androidx.coordinatorlayout.widget;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p020b.p036e.C1502g;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1595f;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0535a<T> {

    /* renamed from: a */
    private final AbstractC1594e<ArrayList<T>> f2781a = new C1595f(10);

    /* renamed from: b */
    private final C1502g<T, ArrayList<T>> f2782b = new C1502g<>();

    /* renamed from: c */
    private final ArrayList<T> f2783c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f2784d = new HashSet<>();

    /* renamed from: e */
    private void m33514e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f2782b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m33514e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: f */
    private ArrayList<T> m33513f() {
        ArrayList<T> mo22686a = this.f2781a.mo22686a();
        ArrayList<T> arrayList = mo22686a;
        if (mo22686a == null) {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* renamed from: k */
    private void m33508k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f2781a.mo22685b(arrayList);
    }

    /* renamed from: a */
    public void m33518a(T t, T t2) {
        if (!this.f2782b.containsKey(t) || !this.f2782b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f2782b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m33513f();
            this.f2782b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public void m33517b(T t) {
        if (!this.f2782b.containsKey(t)) {
            this.f2782b.put(t, null);
        }
    }

    /* renamed from: c */
    public void m33516c() {
        int size = this.f2782b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> m29909m = this.f2782b.m29909m(i);
            if (m29909m != null) {
                m33508k(m29909m);
            }
        }
        this.f2782b.clear();
    }

    /* renamed from: d */
    public boolean m33515d(T t) {
        return this.f2782b.containsKey(t);
    }

    /* renamed from: g */
    public List m33512g(T t) {
        return this.f2782b.get(t);
    }

    /* renamed from: h */
    public List<T> m33511h(T t) {
        int size = this.f2782b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList<T> m29909m = this.f2782b.m29909m(i);
            ArrayList arrayList2 = arrayList;
            if (m29909m != null) {
                arrayList2 = arrayList;
                if (m29909m.contains(t)) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(this.f2782b.m29910i(i));
                }
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: i */
    public ArrayList<T> m33510i() {
        this.f2783c.clear();
        this.f2784d.clear();
        int size = this.f2782b.size();
        for (int i = 0; i < size; i++) {
            m33514e(this.f2782b.m29910i(i), this.f2783c, this.f2784d);
        }
        return this.f2783c;
    }

    /* renamed from: j */
    public boolean m33509j(T t) {
        int size = this.f2782b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> m29909m = this.f2782b.m29909m(i);
            if (m29909m != null && m29909m.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
