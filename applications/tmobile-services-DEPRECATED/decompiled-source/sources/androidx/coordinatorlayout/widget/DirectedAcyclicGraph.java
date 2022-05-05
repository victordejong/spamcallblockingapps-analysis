package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/DirectedAcyclicGraph.class */
public final class DirectedAcyclicGraph<T> {

    /* renamed from: a */
    private final Pools.Pool<ArrayList<T>> f2796a = new Pools.SimplePool(10);

    /* renamed from: b */
    private final SimpleArrayMap<T, ArrayList<T>> f2797b = new SimpleArrayMap<>();

    /* renamed from: c */
    private final ArrayList<T> f2798c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f2799d = new HashSet<>();

    /* renamed from: e */
    private void m19869e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList<T> arrayList2 = this.f2797b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        m19869e(arrayList2.get(i), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    @NonNull
    /* renamed from: f */
    private ArrayList<T> m19868f() {
        ArrayList<T> b = this.f2796a.mo19341b();
        ArrayList<T> arrayList = b;
        if (b == null) {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* renamed from: k */
    private void m19863k(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.f2796a.mo19342a(arrayList);
    }

    /* renamed from: a */
    public void m19873a(@NonNull T t, @NonNull T t2) {
        if (!this.f2797b.containsKey(t) || !this.f2797b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f2797b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m19868f();
            this.f2797b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public void m19872b(@NonNull T t) {
        if (!this.f2797b.containsKey(t)) {
            this.f2797b.put(t, null);
        }
    }

    /* renamed from: c */
    public void m19871c() {
        int size = this.f2797b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> o = this.f2797b.m21005o(i);
            if (o != null) {
                m19863k(o);
            }
        }
        this.f2797b.clear();
    }

    /* renamed from: d */
    public boolean m19870d(@NonNull T t) {
        return this.f2797b.containsKey(t);
    }

    @Nullable
    /* renamed from: g */
    public List m19867g(@NonNull T t) {
        return this.f2797b.get(t);
    }

    @Nullable
    /* renamed from: h */
    public List<T> m19866h(@NonNull T t) {
        int size = this.f2797b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> o = this.f2797b.m21005o(i);
            arrayList = arrayList;
            if (o != null) {
                arrayList = arrayList;
                if (o.contains(t)) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.f2797b.m21007k(i));
                }
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: i */
    public ArrayList<T> m19865i() {
        this.f2798c.clear();
        this.f2799d.clear();
        int size = this.f2797b.size();
        for (int i = 0; i < size; i++) {
            m19869e(this.f2797b.m21007k(i), this.f2798c, this.f2799d);
        }
        return this.f2798c;
    }

    /* renamed from: j */
    public boolean m19864j(@NonNull T t) {
        int size = this.f2797b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> o = this.f2797b.m21005o(i);
            if (o != null && o.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
