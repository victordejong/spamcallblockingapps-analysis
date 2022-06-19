package androidx.coordinatorlayout.widget;

import androidx.core.p022f.C0498d;
import androidx.p014c.C0387g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0402a<T> {

    /* renamed from: a */
    private final C0498d.AbstractC0499a<ArrayList<T>> f1542a = new C0498d.C0500b(10);

    /* renamed from: b */
    private final C0387g<T, ArrayList<T>> f1543b = new C0387g<>();

    /* renamed from: c */
    private final ArrayList<T> f1544c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f1545d = new HashSet<>();

    /* renamed from: a */
    private void m6765a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f1543b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m6765a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: a */
    private void m6764a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1542a.mo6464a(arrayList);
    }

    /* renamed from: c */
    private ArrayList<T> m6761c() {
        ArrayList<T> mo6465a = this.f1542a.mo6465a();
        ArrayList<T> arrayList = mo6465a;
        if (mo6465a == null) {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m6768a() {
        int size = this.f1543b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> m6809c = this.f1543b.m6809c(i);
            if (m6809c != null) {
                m6764a((ArrayList) m6809c);
            }
        }
        this.f1543b.clear();
    }

    /* renamed from: a */
    public void m6767a(T t) {
        if (!this.f1543b.containsKey(t)) {
            this.f1543b.put(t, null);
        }
    }

    /* renamed from: a */
    public void m6766a(T t, T t2) {
        if (!this.f1543b.containsKey(t) || !this.f1543b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f1543b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m6761c();
            this.f1543b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public ArrayList<T> m6763b() {
        this.f1544c.clear();
        this.f1545d.clear();
        int size = this.f1543b.size();
        for (int i = 0; i < size; i++) {
            m6765a(this.f1543b.m6811b(i), this.f1544c, this.f1545d);
        }
        return this.f1544c;
    }

    /* renamed from: b */
    public boolean m6762b(T t) {
        return this.f1543b.containsKey(t);
    }

    /* renamed from: c */
    public List m6760c(T t) {
        return this.f1543b.get(t);
    }

    /* renamed from: d */
    public List<T> m6759d(T t) {
        int size = this.f1543b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList<T> m6809c = this.f1543b.m6809c(i);
            ArrayList arrayList2 = arrayList;
            if (m6809c != null) {
                arrayList2 = arrayList;
                if (m6809c.contains(t)) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(this.f1543b.m6811b(i));
                }
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: e */
    public boolean m6758e(T t) {
        int size = this.f1543b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> m6809c = this.f1543b.m6809c(i);
            if (m6809c != null && m6809c.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
