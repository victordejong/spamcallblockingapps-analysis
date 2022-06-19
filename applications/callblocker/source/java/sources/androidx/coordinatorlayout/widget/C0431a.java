package androidx.coordinatorlayout.widget;

import androidx.core.p025g.C0523e;
import androidx.p013b.C0386g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0431a<T> {

    /* renamed from: a */
    private final C0523e.AbstractC0524a<ArrayList<T>> f1722a = new C0523e.C0525b(10);

    /* renamed from: b */
    private final C0386g<T, ArrayList<T>> f1723b = new C0386g<>();

    /* renamed from: c */
    private final ArrayList<T> f1724c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f1725d = new HashSet<>();

    /* renamed from: a */
    private void m20912a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f1723b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m20912a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: a */
    private void m20911a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1722a.mo17020a(arrayList);
    }

    /* renamed from: c */
    private ArrayList<T> m20908c() {
        ArrayList<T> mo17021a = this.f1722a.mo17021a();
        ArrayList<T> arrayList = mo17021a;
        if (mo17021a == null) {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m20915a() {
        int size = this.f1723b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> m21083c = this.f1723b.m21083c(i);
            if (m21083c != null) {
                m20911a((ArrayList) m21083c);
            }
        }
        this.f1723b.clear();
    }

    /* renamed from: a */
    public void m20914a(T t) {
        if (!this.f1723b.containsKey(t)) {
            this.f1723b.put(t, null);
        }
    }

    /* renamed from: a */
    public void m20913a(T t, T t2) {
        if (!this.f1723b.containsKey(t) || !this.f1723b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f1723b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m20908c();
            this.f1723b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public ArrayList<T> m20910b() {
        this.f1724c.clear();
        this.f1725d.clear();
        int size = this.f1723b.size();
        for (int i = 0; i < size; i++) {
            m20912a(this.f1723b.m21085b(i), this.f1724c, this.f1725d);
        }
        return this.f1724c;
    }

    /* renamed from: b */
    public boolean m20909b(T t) {
        return this.f1723b.containsKey(t);
    }

    /* renamed from: c */
    public List m20907c(T t) {
        return this.f1723b.get(t);
    }

    /* renamed from: d */
    public List<T> m20906d(T t) {
        ArrayList arrayList = null;
        int size = this.f1723b.size();
        int i = 0;
        while (i < size) {
            ArrayList<T> m21083c = this.f1723b.m21083c(i);
            ArrayList arrayList2 = arrayList;
            if (m21083c != null) {
                arrayList2 = arrayList;
                if (m21083c.contains(t)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.f1723b.m21085b(i));
                    arrayList2 = arrayList;
                }
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: e */
    public boolean m20905e(T t) {
        boolean z;
        int size = this.f1723b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            ArrayList<T> m21083c = this.f1723b.m21083c(i);
            if (m21083c != null && m21083c.contains(t)) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }
}
