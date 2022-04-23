package androidx.coordinatorlayout.widget;

import androidx.b.g;
import androidx.core.e.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final c.a<ArrayList<T>> f1668a = new c.b(10);

    /* renamed from: b  reason: collision with root package name */
    final g<T, ArrayList<T>> f1669b = new g<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<T> f1670c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<T> f1671d = new HashSet<>();

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList<T> arrayList2 = this.f1669b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        a(arrayList2.get(i), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    public final ArrayList<T> a() {
        this.f1670c.clear();
        this.f1671d.clear();
        int size = this.f1669b.size();
        for (int i = 0; i < size; i++) {
            a(this.f1669b.b(i), this.f1670c, this.f1671d);
        }
        return this.f1670c;
    }

    public final void a(T t) {
        if (!this.f1669b.containsKey(t)) {
            this.f1669b.put(t, null);
        }
    }

    public final List b(T t) {
        return this.f1669b.get(t);
    }
}
