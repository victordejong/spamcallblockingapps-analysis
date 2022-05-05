package com.google.a.b;

import com.google.a.b.o;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/a/b/x.class */
public final class x<K, V> extends n<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final transient c<K, V>[] f3729a;

    /* renamed from: b  reason: collision with root package name */
    private final transient c<K, V>[] f3730b;
    private final transient int c;
    private final transient int d;
    private transient o<Map.Entry<K, V>> e;
    private transient o<K> f;
    private transient k<V> g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$a.class */
    public static final class a<K, V> extends o.a<Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        final transient x<K, V> f3731b;

        a(x<K, V> xVar) {
            super(((x) xVar).f3729a);
            this.f3731b = xVar;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                V v = this.f3731b.get(entry.getKey());
                z = false;
                if (v != null) {
                    z = false;
                    if (v.equals(entry.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$b.class */
    public static final class b<K, V> extends o.b<Map.Entry<K, V>, K> {
        final x<K, V> d;

        b(x<K, V> xVar) {
            super(((x) xVar).f3729a, ((x) xVar).d);
            this.d = xVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.a.b.k
        public final boolean a() {
            return true;
        }

        @Override // com.google.a.b.o.b
        final /* synthetic */ Object b(Object obj) {
            return ((Map.Entry) obj).getKey();
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.d.containsKey(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$c.class */
    public interface c<K, V> extends Map.Entry<K, V> {
        c<K, V> a();
    }

    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$d.class */
    private static final class d<K, V> extends l<K, V> implements c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final c<K, V> f3732a;

        d(K k, V v, c<K, V> cVar) {
            super(k, v);
            this.f3732a = cVar;
        }

        @Override // com.google.a.b.x.c
        public final c<K, V> a() {
            return this.f3732a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$e.class */
    private static final class e<K, V> extends l<K, V> implements c<K, V> {
        e(K k, V v) {
            super(k, v);
        }

        @Override // com.google.a.b.x.c
        public final c<K, V> a() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/x$f.class */
    public static final class f<V> extends k<V> {

        /* renamed from: a  reason: collision with root package name */
        final x<?, V> f3733a;

        f(x<?, V> xVar) {
            this.f3733a = xVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.a.b.k
        public final boolean a() {
            return true;
        }

        @Override // com.google.a.b.k
        /* renamed from: b */
        public final ae<V> iterator() {
            return new com.google.a.b.a<V>(((x) this.f3733a).f3729a.length) { // from class: com.google.a.b.x.f.1
                @Override // com.google.a.b.a
                protected final V a(int i) {
                    return ((x) f.this.f3733a).f3729a[i].getValue();
                }
            };
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.f3733a.containsValue(obj);
        }

        @Override // java.util.Collection
        public final int size() {
            return ((x) this.f3733a).f3729a.length;
        }
    }

    public x(Map.Entry<?, ?>... entryArr) {
        int length = entryArr.length;
        this.f3729a = new c[length];
        int highestOneBit = Integer.highestOneBit(length) << 1;
        com.google.a.a.d.a(highestOneBit > 0, "table too large: %s", Integer.valueOf(length));
        this.f3730b = new c[highestOneBit];
        this.c = highestOneBit - 1;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Map.Entry<?, ?> entry = entryArr[i2];
            Object key = entry.getKey();
            int hashCode = key.hashCode();
            i += hashCode;
            int a2 = this.c & i.a(hashCode);
            c<K, V> cVar = this.f3730b[a2];
            Object value = entry.getValue();
            c<K, V> eVar = cVar == null ? new e<>(key, value) : new d<>(key, value, cVar);
            this.f3730b[a2] = eVar;
            this.f3729a[i2] = eVar;
            for (c<K, V> cVar2 = cVar; cVar2 != null; cVar2 = cVar2.a()) {
                com.google.a.a.d.a(!key.equals(cVar2.getKey()), "duplicate key: %s", key);
            }
        }
        this.d = i;
    }

    @Override // com.google.a.b.n
    /* renamed from: a */
    public final o<Map.Entry<K, V>> entrySet() {
        o<Map.Entry<K, V>> oVar = this.e;
        o<Map.Entry<K, V>> oVar2 = oVar;
        if (oVar == null) {
            oVar2 = new a<>(this);
            this.e = oVar2;
        }
        return oVar2;
    }

    @Override // com.google.a.b.n
    /* renamed from: b */
    public final o<K> keySet() {
        o<K> oVar = this.f;
        o<K> oVar2 = oVar;
        if (oVar == null) {
            oVar2 = new b<>(this);
            this.f = oVar2;
        }
        return oVar2;
    }

    @Override // com.google.a.b.n
    /* renamed from: c */
    public final k<V> values() {
        k<V> kVar = this.g;
        k<V> kVar2 = kVar;
        if (kVar == null) {
            kVar2 = new f<>(this);
            this.g = kVar2;
        }
        return kVar2;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean z;
        if (obj == null) {
            z = false;
        } else {
            c<K, V>[] cVarArr = this.f3729a;
            int length = cVarArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (cVarArr[i].getValue().equals(obj)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final V get(Object obj) {
        V v;
        if (obj == null) {
            v = null;
        } else {
            c<K, V> cVar = this.f3730b[i.a(obj.hashCode()) & this.c];
            while (true) {
                v = null;
                if (cVar == null) {
                    break;
                } else if (obj.equals(cVar.getKey())) {
                    v = cVar.getValue();
                    break;
                } else {
                    cVar = cVar.a();
                }
            }
        }
        return v;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f3729a.length;
    }

    @Override // com.google.a.b.n
    public final String toString() {
        StringBuilder append = com.google.a.b.e.a(size()).append('{');
        com.google.a.b.e.f3692a.a(append, Arrays.asList(this.f3729a));
        return append.append('}').toString();
    }
}
