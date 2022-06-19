package com.bumptech.glide.load.engine.p090a;

import com.bumptech.glide.load.engine.p090a.AbstractC1691m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.a.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h.class */
class C1681h<K extends AbstractC1691m, V> {

    /* renamed from: a */
    private final C1682a<K, V> f5122a = new C1682a<>();

    /* renamed from: b */
    private final Map<K, C1682a<K, V>> f5123b = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h$a.class */
    public static class C1682a<K, V> {

        /* renamed from: a */
        final K f5124a;

        /* renamed from: b */
        C1682a<K, V> f5125b;

        /* renamed from: c */
        C1682a<K, V> f5126c;

        /* renamed from: d */
        private List<V> f5127d;

        C1682a() {
            this(null);
        }

        C1682a(K k) {
            this.f5126c = this;
            this.f5125b = this;
            this.f5124a = k;
        }

        /* renamed from: a */
        public V m16573a() {
            int m16571b = m16571b();
            return m16571b > 0 ? this.f5127d.remove(m16571b - 1) : null;
        }

        /* renamed from: a */
        public void m16572a(V v) {
            if (this.f5127d == null) {
                this.f5127d = new ArrayList();
            }
            this.f5127d.add(v);
        }

        /* renamed from: b */
        public int m16571b() {
            return this.f5127d != null ? this.f5127d.size() : 0;
        }
    }

    /* renamed from: a */
    private void m16579a(C1682a<K, V> c1682a) {
        m16574d(c1682a);
        c1682a.f5126c = this.f5122a;
        c1682a.f5125b = this.f5122a.f5125b;
        m16575c(c1682a);
    }

    /* renamed from: b */
    private void m16576b(C1682a<K, V> c1682a) {
        m16574d(c1682a);
        c1682a.f5126c = this.f5122a.f5126c;
        c1682a.f5125b = this.f5122a;
        m16575c(c1682a);
    }

    /* renamed from: c */
    private static <K, V> void m16575c(C1682a<K, V> c1682a) {
        c1682a.f5125b.f5126c = c1682a;
        c1682a.f5126c.f5125b = c1682a;
    }

    /* renamed from: d */
    private static <K, V> void m16574d(C1682a<K, V> c1682a) {
        c1682a.f5126c.f5125b = c1682a.f5125b;
        c1682a.f5125b.f5126c = c1682a.f5126c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public V m16580a() {
        V v;
        C1682a c1682a = this.f5122a.f5126c;
        while (true) {
            C1682a c1682a2 = c1682a;
            if (c1682a2.equals(this.f5122a)) {
                v = null;
                break;
            }
            Object m16573a = c1682a2.m16573a();
            if (m16573a != 0) {
                v = m16573a;
                break;
            }
            m16574d(c1682a2);
            this.f5123b.remove(c1682a2.f5124a);
            ((AbstractC1691m) c1682a2.f5124a).mo16515a();
            c1682a = c1682a2.f5126c;
        }
        return v;
    }

    /* renamed from: a */
    public V m16578a(K k) {
        C1682a<K, V> c1682a;
        C1682a<K, V> c1682a2 = this.f5123b.get(k);
        if (c1682a2 == null) {
            C1682a<K, V> c1682a3 = new C1682a<>(k);
            this.f5123b.put(k, c1682a3);
            c1682a = c1682a3;
        } else {
            k.mo16515a();
            c1682a = c1682a2;
        }
        m16579a(c1682a);
        return c1682a.m16573a();
    }

    /* renamed from: a */
    public void m16577a(K k, V v) {
        C1682a<K, V> c1682a;
        C1682a<K, V> c1682a2 = this.f5123b.get(k);
        if (c1682a2 == null) {
            C1682a<K, V> c1682a3 = new C1682a<>(k);
            m16576b(c1682a3);
            this.f5123b.put(k, c1682a3);
            c1682a = c1682a3;
        } else {
            k.mo16515a();
            c1682a = c1682a2;
        }
        c1682a.m16572a(v);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C1682a<K, V> c1682a = this.f5122a.f5125b; !c1682a.equals(this.f5122a); c1682a = c1682a.f5125b) {
            z = true;
            sb.append('{').append(c1682a.f5124a).append(':').append(c1682a.m16571b()).append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.append(" )").toString();
    }
}
