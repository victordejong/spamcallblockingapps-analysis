package p001a0;

import java.util.ArrayList;
import java.util.HashSet;
import p152l0.C3428c;
import p226s.C4263g;
/* renamed from: a0.a */
/* loaded from: classes-dex2jar.jar:a0/a.class */
public final class C0005a<T> {

    /* renamed from: a */
    public final C3428c f2a = new C3428c(10);

    /* renamed from: b */
    public final C4263g<T, ArrayList<T>> f3b = new C4263g<>();

    /* renamed from: c */
    public final ArrayList<T> f4c = new ArrayList<>();

    /* renamed from: d */
    public final HashSet<T> f5d = new HashSet<>();

    /* renamed from: a */
    public void m8933a(T t) {
        if (!(this.f3b.m1198e(t) >= 0)) {
            this.f3b.put(t, null);
        }
    }

    /* renamed from: b */
    public final void m8932b(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> orDefault = this.f3b.getOrDefault(t, null);
        if (orDefault != null) {
            int size = orDefault.size();
            for (int i = 0; i < size; i++) {
                m8932b(orDefault.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }
}
