package androidx.coordinatorlayout.widget;

import d.e.g;
import d.h.l.e;
import d.h.l.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0233a<T> {

    /* renamed from: a */
    private final e<ArrayList<T>> f1555a = new f(10);

    /* renamed from: b */
    private final g<T, ArrayList<T>> f1556b = new g<>();

    /* renamed from: c */
    private final ArrayList<T> f1557c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f1558d = new HashSet<>();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private void m13699e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList arrayList2 = (ArrayList) this.f1556b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m13699e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: f */
    private ArrayList<T> m13698f() {
        ArrayList<T> arrayList = (ArrayList) this.f1555a.b();
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        return arrayList2;
    }

    /* renamed from: k */
    private void m13693k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1555a.a(arrayList);
    }

    /* renamed from: a */
    public void m13703a(T t, T t2) {
        if (!this.f1556b.containsKey(t) || !this.f1556b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = (ArrayList) this.f1556b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m13698f();
            this.f1556b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public void m13702b(T t) {
        if (!this.f1556b.containsKey(t)) {
            this.f1556b.put(t, (Object) null);
        }
    }

    /* renamed from: c */
    public void m13701c() {
        int size = this.f1556b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayList = (ArrayList) this.f1556b.m(i);
            if (arrayList != null) {
                m13693k(arrayList);
            }
        }
        this.f1556b.clear();
    }

    /* renamed from: d */
    public boolean m13700d(T t) {
        return this.f1556b.containsKey(t);
    }

    /* renamed from: g */
    public List m13697g(T t) {
        return (List) this.f1556b.get(t);
    }

    /* renamed from: h */
    public List<T> m13696h(T t) {
        int size = this.f1556b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList arrayList2 = (ArrayList) this.f1556b.m(i);
            ArrayList arrayList3 = arrayList;
            if (arrayList2 != null) {
                arrayList3 = arrayList;
                if (arrayList2.contains(t)) {
                    arrayList3 = arrayList;
                    if (arrayList == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(this.f1556b.i(i));
                }
            }
            i++;
            arrayList = arrayList3;
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public ArrayList<T> m13695i() {
        this.f1557c.clear();
        this.f1558d.clear();
        int size = this.f1556b.size();
        for (int i = 0; i < size; i++) {
            m13699e(this.f1556b.i(i), this.f1557c, this.f1558d);
        }
        return this.f1557c;
    }

    /* renamed from: j */
    public boolean m13694j(T t) {
        int size = this.f1556b.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.f1556b.m(i);
            if (arrayList != null && arrayList.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
