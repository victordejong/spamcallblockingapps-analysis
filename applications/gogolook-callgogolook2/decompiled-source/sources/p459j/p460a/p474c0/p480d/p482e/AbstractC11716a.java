package p459j.p460a.p474c0.p480d.p482e;

import androidx.collection.SimpleArrayMap;
/* renamed from: j.a.c0.d.e.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/e/a.class */
public abstract class AbstractC11716a<K, V> {

    /* renamed from: a */
    public final SimpleArrayMap<K, C11718b<V>> f26284a = new SimpleArrayMap<>();

    /* renamed from: j.a.c0.d.e.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/d/e/a$b.class */
    public static class C11718b<V> {

        /* renamed from: a */
        public int f26285a;

        /* renamed from: b */
        public V f26286b;

        public C11718b() {
        }
    }

    /* renamed from: a */
    public V m8439a(K k) {
        C11718b<V> bVar;
        if (k == null || (bVar = this.f26284a.get(k)) == null) {
            return null;
        }
        bVar.f26285a++;
        return bVar.f26286b;
    }

    /* renamed from: a */
    public void mo8432a() {
        this.f26284a.clear();
    }

    /* renamed from: a */
    public boolean m8438a(K k, V v) {
        if (this.f26284a.size() >= 500 || k == null) {
            return false;
        }
        C11718b<V> bVar = new C11718b<>();
        bVar.f26286b = v;
        this.f26284a.put(k, bVar);
        return true;
    }

    /* renamed from: b */
    public V m8437b(K k) {
        C11718b<V> remove = this.f26284a.remove(k);
        return remove != null ? remove.f26286b : null;
    }
}
