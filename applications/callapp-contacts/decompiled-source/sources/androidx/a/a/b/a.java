package androidx.a.a.b;

import androidx.a.a.b.b;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/a.class */
public class a<K, V> extends b<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public HashMap<K, b.c<K, V>> f497a = new HashMap<>();

    @Override // androidx.a.a.b.b
    protected final b.c<K, V> a(K k) {
        return this.f497a.get(k);
    }

    @Override // androidx.a.a.b.b
    public final V a(K k, V v) {
        b.c<K, V> a2 = a(k);
        if (a2 != null) {
            return a2.f502b;
        }
        this.f497a.put(k, b(k, v));
        return null;
    }

    @Override // androidx.a.a.b.b
    public final V b(K k) {
        V v = (V) super.b(k);
        this.f497a.remove(k);
        return v;
    }

    public final boolean c(K k) {
        return this.f497a.containsKey(k);
    }
}
