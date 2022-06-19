package com.bumptech.glide.load.engine.p119a;

import com.bumptech.glide.load.engine.p119a.AbstractC3725m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.a.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h.class */
final class C3715h<K extends AbstractC3725m, V> {

    /* renamed from: a */
    private final C3716a<K, V> f13881a = new C3716a<>();

    /* renamed from: b */
    private final Map<K, C3716a<K, V>> f13882b = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h$a.class */
    public static final class C3716a<K, V> {

        /* renamed from: a */
        final K f13883a;

        /* renamed from: b */
        C3716a<K, V> f13884b;

        /* renamed from: c */
        C3716a<K, V> f13885c;

        /* renamed from: d */
        private List<V> f13886d;

        C3716a() {
            this(null);
        }

        C3716a(K k) {
            this.f13885c = this;
            this.f13884b = this;
            this.f13883a = k;
        }

        /* renamed from: a */
        public final V m37483a() {
            int m37481b = m37481b();
            if (m37481b > 0) {
                return this.f13886d.remove(m37481b - 1);
            }
            return null;
        }

        /* renamed from: a */
        public final void m37482a(V v) {
            if (this.f13886d == null) {
                this.f13886d = new ArrayList();
            }
            this.f13886d.add(v);
        }

        /* renamed from: b */
        public final int m37481b() {
            List<V> list = this.f13886d;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    /* renamed from: a */
    private void m37489a(C3716a<K, V> c3716a) {
        m37484d(c3716a);
        c3716a.f13885c = this.f13881a;
        c3716a.f13884b = this.f13881a.f13884b;
        m37485c(c3716a);
    }

    /* renamed from: b */
    private void m37486b(C3716a<K, V> c3716a) {
        m37484d(c3716a);
        c3716a.f13885c = this.f13881a.f13885c;
        c3716a.f13884b = this.f13881a;
        m37485c(c3716a);
    }

    /* renamed from: c */
    private static <K, V> void m37485c(C3716a<K, V> c3716a) {
        c3716a.f13884b.f13885c = c3716a;
        c3716a.f13885c.f13884b = c3716a;
    }

    /* renamed from: d */
    private static <K, V> void m37484d(C3716a<K, V> c3716a) {
        c3716a.f13885c.f13884b = c3716a.f13884b;
        c3716a.f13884b.f13885c = c3716a.f13885c;
    }

    /* renamed from: a */
    public final V m37490a() {
        C3716a c3716a = this.f13881a.f13885c;
        while (true) {
            C3716a c3716a2 = c3716a;
            if (!c3716a2.equals(this.f13881a)) {
                V v = (V) c3716a2.m37483a();
                if (v != null) {
                    return v;
                }
                m37484d(c3716a2);
                this.f13882b.remove(c3716a2.f13883a);
                ((AbstractC3725m) c3716a2.f13883a).mo37443a();
                c3716a = c3716a2.f13885c;
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    public final V m37488a(K k) {
        C3716a<K, V> c3716a;
        C3716a<K, V> c3716a2 = this.f13882b.get(k);
        if (c3716a2 == null) {
            C3716a<K, V> c3716a3 = new C3716a<>(k);
            this.f13882b.put(k, c3716a3);
            c3716a = c3716a3;
        } else {
            k.mo37443a();
            c3716a = c3716a2;
        }
        m37489a(c3716a);
        return c3716a.m37483a();
    }

    /* renamed from: a */
    public final void m37487a(K k, V v) {
        C3716a<K, V> c3716a;
        C3716a<K, V> c3716a2 = this.f13882b.get(k);
        if (c3716a2 == null) {
            C3716a<K, V> c3716a3 = new C3716a<>(k);
            m37486b(c3716a3);
            this.f13882b.put(k, c3716a3);
            c3716a = c3716a3;
        } else {
            k.mo37443a();
            c3716a = c3716a2;
        }
        c3716a.m37482a(v);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C3716a<K, V> c3716a = this.f13881a.f13884b; !c3716a.equals(this.f13881a); c3716a = c3716a.f13884b) {
            z = true;
            sb.append('{');
            sb.append(c3716a.f13883a);
            sb.append(':');
            sb.append(c3716a.m37481b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
