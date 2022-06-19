package com.bumptech.glide.load.engine.p209x;

import com.bumptech.glide.load.engine.p209x.AbstractC4109m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.x.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/h.class */
class C4099h<K extends AbstractC4109m, V> {

    /* renamed from: a */
    private final C4100a<K, V> f12918a = new C4100a<>();

    /* renamed from: b */
    private final Map<K, C4100a<K, V>> f12919b = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.x.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/h$a.class */
    public static class C4100a<K, V> {

        /* renamed from: a */
        final K f12920a;

        /* renamed from: b */
        private List<V> f12921b;

        /* renamed from: c */
        C4100a<K, V> f12922c;

        /* renamed from: d */
        C4100a<K, V> f12923d;

        C4100a() {
            this(null);
        }

        C4100a(K k) {
            this.f12923d = this;
            this.f12922c = this;
            this.f12920a = k;
        }

        /* renamed from: a */
        public void m23286a(V v) {
            if (this.f12921b == null) {
                this.f12921b = new ArrayList();
            }
            this.f12921b.add(v);
        }

        /* renamed from: b */
        public V m23285b() {
            int m23284c = m23284c();
            return m23284c > 0 ? this.f12921b.remove(m23284c - 1) : null;
        }

        /* renamed from: c */
        public int m23284c() {
            List<V> list = this.f12921b;
            return list != null ? list.size() : 0;
        }
    }

    /* renamed from: b */
    private void m23292b(C4100a<K, V> c4100a) {
        m23289e(c4100a);
        C4100a<K, V> c4100a2 = this.f12918a;
        c4100a.f12923d = c4100a2;
        c4100a.f12922c = c4100a2.f12922c;
        m23287g(c4100a);
    }

    /* renamed from: c */
    private void m23291c(C4100a<K, V> c4100a) {
        m23289e(c4100a);
        C4100a<K, V> c4100a2 = this.f12918a;
        c4100a.f12923d = c4100a2.f12923d;
        c4100a.f12922c = c4100a2;
        m23287g(c4100a);
    }

    /* renamed from: e */
    private static <K, V> void m23289e(C4100a<K, V> c4100a) {
        C4100a<K, V> c4100a2 = c4100a.f12923d;
        c4100a2.f12922c = c4100a.f12922c;
        c4100a.f12922c.f12923d = c4100a2;
    }

    /* renamed from: g */
    private static <K, V> void m23287g(C4100a<K, V> c4100a) {
        c4100a.f12922c.f12923d = c4100a;
        c4100a.f12923d.f12922c = c4100a;
    }

    /* renamed from: a */
    public V m23293a(K k) {
        C4100a<K, V> c4100a;
        C4100a<K, V> c4100a2 = this.f12919b.get(k);
        if (c4100a2 == null) {
            C4100a<K, V> c4100a3 = new C4100a<>(k);
            this.f12919b.put(k, c4100a3);
            c4100a = c4100a3;
        } else {
            k.mo23231a();
            c4100a = c4100a2;
        }
        m23292b(c4100a);
        return c4100a.m23285b();
    }

    /* renamed from: d */
    public void m23290d(K k, V v) {
        C4100a<K, V> c4100a;
        C4100a<K, V> c4100a2 = this.f12919b.get(k);
        if (c4100a2 == null) {
            C4100a<K, V> c4100a3 = new C4100a<>(k);
            m23291c(c4100a3);
            this.f12919b.put(k, c4100a3);
            c4100a = c4100a3;
        } else {
            k.mo23231a();
            c4100a = c4100a2;
        }
        c4100a.m23286a(v);
    }

    /* renamed from: f */
    public V m23288f() {
        C4100a c4100a = this.f12918a.f12923d;
        while (true) {
            C4100a c4100a2 = c4100a;
            if (!c4100a2.equals(this.f12918a)) {
                V v = (V) c4100a2.m23285b();
                if (v != null) {
                    return v;
                }
                m23289e(c4100a2);
                this.f12919b.remove(c4100a2.f12920a);
                ((AbstractC4109m) c4100a2.f12920a).mo23231a();
                c4100a = c4100a2.f12923d;
            } else {
                return null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C4100a<K, V> c4100a = this.f12918a.f12922c; !c4100a.equals(this.f12918a); c4100a = c4100a.f12922c) {
            z = true;
            sb.append('{');
            sb.append(c4100a.f12920a);
            sb.append(':');
            sb.append(c4100a.m23284c());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
