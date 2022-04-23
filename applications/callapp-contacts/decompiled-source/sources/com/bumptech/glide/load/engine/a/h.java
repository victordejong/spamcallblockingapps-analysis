package com.bumptech.glide.load.engine.a;

import com.bumptech.glide.load.engine.a.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h.class */
final class h<K extends m, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a<K, V> f7449a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, a<K, V>> f7450b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/h$a.class */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f7451a;

        /* renamed from: b  reason: collision with root package name */
        a<K, V> f7452b;

        /* renamed from: c  reason: collision with root package name */
        a<K, V> f7453c;

        /* renamed from: d  reason: collision with root package name */
        private List<V> f7454d;

        a() {
            this(null);
        }

        a(K k) {
            this.f7453c = this;
            this.f7452b = this;
            this.f7451a = k;
        }

        public final V a() {
            int b2 = b();
            if (b2 > 0) {
                return this.f7454d.remove(b2 - 1);
            }
            return null;
        }

        public final void a(V v) {
            if (this.f7454d == null) {
                this.f7454d = new ArrayList();
            }
            this.f7454d.add(v);
        }

        public final int b() {
            List<V> list = this.f7454d;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    private void a(a<K, V> aVar) {
        d(aVar);
        aVar.f7453c = this.f7449a;
        aVar.f7452b = this.f7449a.f7452b;
        c(aVar);
    }

    private void b(a<K, V> aVar) {
        d(aVar);
        aVar.f7453c = this.f7449a.f7453c;
        aVar.f7452b = this.f7449a;
        c(aVar);
    }

    private static <K, V> void c(a<K, V> aVar) {
        aVar.f7452b.f7453c = aVar;
        aVar.f7453c.f7452b = aVar;
    }

    private static <K, V> void d(a<K, V> aVar) {
        aVar.f7453c.f7452b = aVar.f7452b;
        aVar.f7452b.f7453c = aVar.f7453c;
    }

    public final V a() {
        for (a aVar = this.f7449a.f7453c; !aVar.equals(this.f7449a); aVar = aVar.f7453c) {
            V v = (V) aVar.a();
            if (v != null) {
                return v;
            }
            d(aVar);
            this.f7450b.remove(aVar.f7451a);
            ((m) aVar.f7451a).a();
        }
        return null;
    }

    public final V a(K k) {
        a<K, V> aVar;
        a<K, V> aVar2 = this.f7450b.get(k);
        if (aVar2 == null) {
            a<K, V> aVar3 = new a<>(k);
            this.f7450b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.a();
            aVar = aVar2;
        }
        a(aVar);
        return aVar.a();
    }

    public final void a(K k, V v) {
        a<K, V> aVar;
        a<K, V> aVar2 = this.f7450b.get(k);
        if (aVar2 == null) {
            a<K, V> aVar3 = new a<>(k);
            b(aVar3);
            this.f7450b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.a();
            aVar = aVar2;
        }
        aVar.a(v);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a aVar = this.f7449a.f7452b; !aVar.equals(this.f7449a); aVar = aVar.f7452b) {
            z = true;
            sb.append('{');
            sb.append(aVar.f7451a);
            sb.append(':');
            sb.append(aVar.b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
