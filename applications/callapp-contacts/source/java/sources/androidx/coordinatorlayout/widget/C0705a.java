package androidx.coordinatorlayout.widget;

import androidx.core.p036e.C0829c;
import androidx.p023b.C0441g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0705a<T> {

    /* renamed from: a */
    final C0829c.AbstractC0830a<ArrayList<T>> f3219a = new C0829c.C0831b(10);

    /* renamed from: b */
    final C0441g<T, ArrayList<T>> f3220b = new C0441g<>();

    /* renamed from: c */
    private final ArrayList<T> f3221c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f3222d = new HashSet<>();

    /* renamed from: a */
    private void m44639a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f3220b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m44639a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: a */
    public final ArrayList<T> m44641a() {
        this.f3221c.clear();
        this.f3222d.clear();
        int size = this.f3220b.size();
        for (int i = 0; i < size; i++) {
            m44639a(this.f3220b.m45517b(i), this.f3221c, this.f3222d);
        }
        return this.f3221c;
    }

    /* renamed from: a */
    public final void m44640a(T t) {
        if (!this.f3220b.containsKey(t)) {
            this.f3220b.put(t, null);
        }
    }

    /* renamed from: b */
    public final List m44638b(T t) {
        return this.f3220b.get(t);
    }
}
