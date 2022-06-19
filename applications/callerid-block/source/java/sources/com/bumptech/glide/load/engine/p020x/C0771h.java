package com.bumptech.glide.load.engine.p020x;

import com.bumptech.glide.load.engine.p020x.AbstractC0774m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.x.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/h.class */
class C0771h<K extends AbstractC0774m, V> {

    /* renamed from: a */
    private final C0772a<K, V> f3618a = new C0772a<>();

    /* renamed from: b */
    private final Map<K, C0772a<K, V>> f3619b = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.x.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/h$a.class */
    public static class C0772a<K, V> {

        /* renamed from: a */
        final K f3620a;

        /* renamed from: b */
        private List<V> f3621b;

        /* renamed from: c */
        C0772a<K, V> f3622c;

        /* renamed from: d */
        C0772a<K, V> f3623d;

        C0772a() {
            this(null);
        }

        C0772a(K k) {
            this.f3623d = this;
            this.f3622c = this;
            this.f3620a = k;
        }

        /* renamed from: a */
        public void m11054a(V v) {
            if (this.f3621b == null) {
                this.f3621b = new ArrayList();
            }
            this.f3621b.add(v);
        }

        /* renamed from: b */
        public V m11053b() {
            int m11052c = m11052c();
            return m11052c > 0 ? this.f3621b.remove(m11052c - 1) : null;
        }

        /* renamed from: c */
        public int m11052c() {
            List<V> list = this.f3621b;
            return list != null ? list.size() : 0;
        }
    }

    C0771h() {
    }

    /* renamed from: b */
    private void m11060b(C0772a<K, V> c0772a) {
        m11057e(c0772a);
        C0772a<K, V> c0772a2 = this.f3618a;
        c0772a.f3623d = c0772a2;
        c0772a.f3622c = c0772a2.f3622c;
        m11055g(c0772a);
    }

    /* renamed from: c */
    private void m11059c(C0772a<K, V> c0772a) {
        m11057e(c0772a);
        C0772a<K, V> c0772a2 = this.f3618a;
        c0772a.f3623d = c0772a2.f3623d;
        c0772a.f3622c = c0772a2;
        m11055g(c0772a);
    }

    /* renamed from: e */
    private static <K, V> void m11057e(C0772a<K, V> c0772a) {
        C0772a<K, V> c0772a2 = c0772a.f3623d;
        c0772a2.f3622c = c0772a.f3622c;
        c0772a.f3622c.f3623d = c0772a2;
    }

    /* renamed from: g */
    private static <K, V> void m11055g(C0772a<K, V> c0772a) {
        c0772a.f3622c.f3623d = c0772a;
        c0772a.f3623d.f3622c = c0772a;
    }

    /* renamed from: a */
    public V m11061a(K k) {
        C0772a<K, V> c0772a;
        C0772a<K, V> c0772a2 = this.f3619b.get(k);
        if (c0772a2 == null) {
            C0772a<K, V> c0772a3 = new C0772a<>(k);
            this.f3619b.put(k, c0772a3);
            c0772a = c0772a3;
        } else {
            k.m11043a();
            c0772a = c0772a2;
        }
        m11060b(c0772a);
        return c0772a.m11053b();
    }

    /* renamed from: d */
    public void m11058d(K k, V v) {
        C0772a<K, V> c0772a;
        C0772a<K, V> c0772a2 = this.f3619b.get(k);
        if (c0772a2 == null) {
            C0772a<K, V> c0772a3 = new C0772a<>(k);
            m11059c(c0772a3);
            this.f3619b.put(k, c0772a3);
            c0772a = c0772a3;
        } else {
            k.m11043a();
            c0772a = c0772a2;
        }
        c0772a.m11054a(v);
    }

    /* renamed from: f */
    public V m11056f() {
        C0772a<K, V> c0772a = this.f3618a;
        while (true) {
            c0772a = c0772a.f3623d;
            if (!c0772a.equals(this.f3618a)) {
                V m11053b = c0772a.m11053b();
                if (m11053b != null) {
                    return m11053b;
                }
                m11057e(c0772a);
                this.f3619b.remove(c0772a.f3620a);
                c0772a.f3620a.m11043a();
            } else {
                return null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C0772a<K, V> c0772a = this.f3618a.f3622c; !c0772a.equals(this.f3618a); c0772a = c0772a.f3622c) {
            z = true;
            sb.append('{');
            sb.append(c0772a.f3620a);
            sb.append(':');
            sb.append(c0772a.m11052c());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
