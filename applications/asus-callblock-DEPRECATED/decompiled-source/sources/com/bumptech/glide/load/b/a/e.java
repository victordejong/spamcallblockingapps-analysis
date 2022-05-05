package com.bumptech.glide.load.b.a;

import com.bumptech.glide.load.b.a.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/e.class */
final class e<K extends h, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a<K, V> f3493a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, a<K, V>> f3494b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/e$a.class */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f3495a;

        /* renamed from: b  reason: collision with root package name */
        List<V> f3496b;
        a<K, V> c;
        a<K, V> d;

        public a() {
            this(null);
        }

        public a(K k) {
            this.d = this;
            this.c = this;
            this.f3495a = k;
        }

        public final V a() {
            int b2 = b();
            return b2 > 0 ? this.f3496b.remove(b2 - 1) : null;
        }

        public final int b() {
            return this.f3496b != null ? this.f3496b.size() : 0;
        }
    }

    private static <K, V> void a(a<K, V> aVar) {
        aVar.c.d = aVar;
        aVar.d.c = aVar;
    }

    private static <K, V> void b(a<K, V> aVar) {
        aVar.d.c = aVar.c;
        aVar.c.d = aVar.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V a() {
        V v;
        a aVar = this.f3493a.d;
        while (true) {
            if (aVar.equals(this.f3493a)) {
                v = null;
                break;
            }
            Object a2 = aVar.a();
            if (a2 != 0) {
                v = a2;
                break;
            }
            b(aVar);
            this.f3494b.remove(aVar.f3495a);
            ((h) aVar.f3495a).a();
            aVar = aVar.d;
        }
        return v;
    }

    public final V a(K k) {
        a<K, V> aVar;
        a<K, V> aVar2 = this.f3494b.get(k);
        if (aVar2 == null) {
            a<K, V> aVar3 = new a<>(k);
            this.f3494b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.a();
            aVar = aVar2;
        }
        b(aVar);
        aVar.d = this.f3493a;
        aVar.c = this.f3493a.c;
        a(aVar);
        return aVar.a();
    }

    public final void a(K k, V v) {
        a<K, V> aVar;
        a<K, V> aVar2 = this.f3494b.get(k);
        if (aVar2 == null) {
            a<K, V> aVar3 = new a<>(k);
            b(aVar3);
            aVar3.d = this.f3493a.d;
            aVar3.c = this.f3493a;
            a(aVar3);
            this.f3494b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.a();
            aVar = aVar2;
        }
        if (aVar.f3496b == null) {
            aVar.f3496b = new ArrayList();
        }
        aVar.f3496b.add(v);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a aVar = this.f3493a.c; !aVar.equals(this.f3493a); aVar = aVar.c) {
            z = true;
            sb.append('{').append(aVar.f3495a).append(':').append(aVar.b()).append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.append(" )").toString();
    }
}
