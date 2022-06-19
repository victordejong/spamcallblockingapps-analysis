package p1727n3.p1804j.p1805a;

import java.util.ArrayList;
import java.util.HashSet;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p1727n3.p1807k.p1820h.C26556f;
/* renamed from: n3.j.a.a */
/* loaded from: classes-dex2jar.jar:n3/j/a/a.class */
public final class C26408a<T> {

    /* renamed from: a */
    public final AbstractC26555e<ArrayList<T>> f74024a = new C26556f(10);

    /* renamed from: b */
    public final C26187h<T, ArrayList<T>> f74025b = new C26187h<>();

    /* renamed from: c */
    public final ArrayList<T> f74026c = new ArrayList<>();

    /* renamed from: d */
    public final HashSet<T> f74027d = new HashSet<>();

    /* renamed from: a */
    public void m1898a(T t) {
        if (!(this.f74025b.m2579i(t) >= 0)) {
            this.f74025b.put(t, null);
        }
    }

    /* renamed from: b */
    public final void m1897b(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> orDefault = this.f74025b.getOrDefault(t, null);
        if (orDefault != null) {
            int size = orDefault.size();
            for (int i = 0; i < size; i++) {
                m1897b(orDefault.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }
}
