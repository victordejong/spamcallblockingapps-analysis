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

    /* JADX INFO: Access modifiers changed from: private */
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
            int c = m11052c();
            return c > 0 ? this.f3621b.remove(c - 1) : null;
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
    private void m11060b(C0772a<K, V> aVar) {
        m11057e(aVar);
        C0772a<K, V> aVar2 = this.f3618a;
        aVar.f3623d = aVar2;
        aVar.f3622c = aVar2.f3622c;
        m11055g(aVar);
    }

    /* renamed from: c */
    private void m11059c(C0772a<K, V> aVar) {
        m11057e(aVar);
        C0772a<K, V> aVar2 = this.f3618a;
        aVar.f3623d = aVar2.f3623d;
        aVar.f3622c = aVar2;
        m11055g(aVar);
    }

    /* renamed from: e */
    private static <K, V> void m11057e(C0772a<K, V> aVar) {
        C0772a<K, V> aVar2 = aVar.f3623d;
        aVar2.f3622c = aVar.f3622c;
        aVar.f3622c.f3623d = aVar2;
    }

    /* renamed from: g */
    private static <K, V> void m11055g(C0772a<K, V> aVar) {
        aVar.f3622c.f3623d = aVar;
        aVar.f3623d.f3622c = aVar;
    }

    /* renamed from: a */
    public V m11061a(K k) {
        C0772a<K, V> aVar;
        C0772a<K, V> aVar2 = this.f3619b.get(k);
        if (aVar2 == null) {
            C0772a<K, V> aVar3 = new C0772a<>(k);
            this.f3619b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.m11043a();
            aVar = aVar2;
        }
        m11060b(aVar);
        return aVar.m11053b();
    }

    /* renamed from: d */
    public void m11058d(K k, V v) {
        C0772a<K, V> aVar;
        C0772a<K, V> aVar2 = this.f3619b.get(k);
        if (aVar2 == null) {
            C0772a<K, V> aVar3 = new C0772a<>(k);
            m11059c(aVar3);
            this.f3619b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.m11043a();
            aVar = aVar2;
        }
        aVar.m11054a(v);
    }

    /* renamed from: f */
    public V m11056f() {
        C0772a aVar = this.f3618a;
        while (true) {
            aVar = aVar.f3623d;
            if (aVar.equals(this.f3618a)) {
                return null;
            }
            V v = (V) aVar.m11053b();
            if (v != null) {
                return v;
            }
            m11057e(aVar);
            this.f3619b.remove(aVar.f3620a);
            ((AbstractC0774m) aVar.f3620a).m11043a();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C0772a aVar = this.f3618a.f3622c; !aVar.equals(this.f3618a); aVar = aVar.f3622c) {
            z = true;
            sb.append('{');
            sb.append(aVar.f3620a);
            sb.append(':');
            sb.append(aVar.m11052c());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
