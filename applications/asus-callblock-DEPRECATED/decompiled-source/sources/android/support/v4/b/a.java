package android.support.v4.b;

import android.support.v4.b.g;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/a.class */
public class a<K, V> extends h<K, V> implements Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    g<K, V> f118a;

    public a() {
    }

    public a(byte b2) {
        super(1);
    }

    private g<K, V> a() {
        if (this.f118a == null) {
            this.f118a = new g<K, V>() { // from class: android.support.v4.b.a.1
                @Override // android.support.v4.b.g
                protected final int a() {
                    return a.this.h;
                }

                @Override // android.support.v4.b.g
                protected final int a(Object obj) {
                    return a.this.a(obj);
                }

                @Override // android.support.v4.b.g
                protected final Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                @Override // android.support.v4.b.g
                protected final V a(int i, V v) {
                    return a.this.a(i, (int) v);
                }

                @Override // android.support.v4.b.g
                protected final void a(int i) {
                    a.this.d(i);
                }

                @Override // android.support.v4.b.g
                protected final void a(K k, V v) {
                    a.this.put(k, v);
                }

                @Override // android.support.v4.b.g
                protected final int b(Object obj) {
                    return a.this.b(obj);
                }

                @Override // android.support.v4.b.g
                protected final Map<K, V> b() {
                    return a.this;
                }

                @Override // android.support.v4.b.g
                protected final void c() {
                    a.this.clear();
                }
            };
        }
        return this.f118a;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        g<K, V> a2 = a();
        if (a2.f128b == null) {
            a2.f128b = new g.b();
        }
        return a2.f128b;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        g<K, V> a2 = a();
        if (a2.c == null) {
            a2.c = new g.c();
        }
        return a2.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        int size = this.h + map.size();
        if (this.f.length < size) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            super.a(size);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, this.h);
                System.arraycopy(objArr, 0, this.g, 0, this.h << 1);
            }
            h.a(iArr, objArr, this.h);
        }
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        g<K, V> a2 = a();
        if (a2.d == null) {
            a2.d = new g.e();
        }
        return a2.d;
    }
}
