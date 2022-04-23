package p081h.p203i.p316b.p318b;

import java.util.AbstractMap;
import java.util.Map;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.t */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/t.class */
public final class C9345t<K, V> extends AbstractC9328j<K, V> {

    /* renamed from: g */
    public static final AbstractC9328j<Object, Object> f21375g = new C9345t(null, new Object[0], 0);

    /* renamed from: d */
    public final transient Object f21376d;

    /* renamed from: e */
    public final transient Object[] f21377e;

    /* renamed from: f */
    public final transient int f21378f;

    /* renamed from: h.i.b.b.t$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/t$a.class */
    public static class C9346a<K, V> extends AbstractC9331k<Map.Entry<K, V>> {

        /* renamed from: c */
        public final transient AbstractC9328j<K, V> f21379c;

        /* renamed from: d */
        public final transient Object[] f21380d;

        /* renamed from: e */
        public final transient int f21381e;

        /* renamed from: f */
        public final transient int f21382f;

        /* renamed from: h.i.b.b.t$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/b/b/t$a$a.class */
        public class C9347a extends AbstractC9323i<Map.Entry<K, V>> {
            public C9347a() {
            }

            @Override // java.util.List
            public Map.Entry<K, V> get(int i) {
                C9301k.m15481a(i, C9346a.this.f21382f);
                int i2 = i * 2;
                return new AbstractMap.SimpleImmutableEntry(C9346a.this.f21380d[C9346a.this.f21381e + i2], C9346a.this.f21380d[i2 + (C9346a.this.f21381e ^ 1)]);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return C9346a.this.f21382f;
            }
        }

        public C9346a(AbstractC9328j<K, V> jVar, Object[] objArr, int i, int i2) {
            this.f21379c = jVar;
            this.f21380d = objArr;
            this.f21381e = i;
            this.f21382f = i2;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h
        /* renamed from: a */
        public int mo15372a(Object[] objArr, int i) {
            return mo15381r().mo15372a(objArr, i);
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                z = false;
                if (value != null) {
                    z = false;
                    if (value.equals(this.f21379c.get(key))) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9331k, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public AbstractC9311a0<Map.Entry<K, V>> iterator() {
            return mo15381r().iterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9331k
        /* renamed from: s */
        public AbstractC9323i<Map.Entry<K, V>> mo15371s() {
            return new C9347a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f21382f;
        }
    }

    /* renamed from: h.i.b.b.t$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/t$b.class */
    public static final class C9348b<K> extends AbstractC9331k<K> {

        /* renamed from: c */
        public final transient AbstractC9328j<K, ?> f21384c;

        /* renamed from: d */
        public final transient AbstractC9323i<K> f21385d;

        public C9348b(AbstractC9328j<K, ?> jVar, AbstractC9323i<K> iVar) {
            this.f21384c = jVar;
            this.f21385d = iVar;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h
        /* renamed from: a */
        public int mo15372a(Object[] objArr, int i) {
            return mo15381r().mo15372a(objArr, i);
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f21384c.get(obj) != null;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9331k, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public AbstractC9311a0<K> iterator() {
            return mo15381r().iterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9331k
        /* renamed from: r */
        public AbstractC9323i<K> mo15381r() {
            return this.f21385d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f21384c.size();
        }
    }

    /* renamed from: h.i.b.b.t$c */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/t$c.class */
    public static final class C9349c extends AbstractC9323i<Object> {

        /* renamed from: c */
        public final transient Object[] f21386c;

        /* renamed from: d */
        public final transient int f21387d;

        /* renamed from: e */
        public final transient int f21388e;

        public C9349c(Object[] objArr, int i, int i2) {
            this.f21386c = objArr;
            this.f21387d = i;
            this.f21388e = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            C9301k.m15481a(i, this.f21388e);
            return this.f21386c[(i * 2) + this.f21387d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f21388e;
        }
    }

    public C9345t(Object obj, Object[] objArr, int i) {
        this.f21376d = obj;
        this.f21377e = objArr;
        this.f21378f = i;
    }

    /* renamed from: a */
    public static <K, V> C9345t<K, V> m15390a(int i, Object[] objArr) {
        if (i == 0) {
            return (C9345t) f21375g;
        }
        if (i == 1) {
            C9317d.m15439a(objArr[0], objArr[1]);
            return new C9345t<>(null, objArr, 1);
        }
        C9301k.m15471b(i, objArr.length >> 1);
        return new C9345t<>(m15387a(objArr, i, AbstractC9331k.m15412g(i), 0), objArr, i);
    }

    /* renamed from: a */
    public static IllegalArgumentException m15389a(Object obj, Object obj2, Object[] objArr, int i) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i] + "=" + objArr[i ^ 1]);
    }

    /* renamed from: a */
    public static Object m15388a(Object obj, Object[] objArr, int i, int i2, Object obj2) {
        Object obj3 = null;
        if (obj2 == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[i2].equals(obj2)) {
                obj3 = objArr[i2 ^ 1];
            }
            return obj3;
        } else if (obj == null) {
            return null;
        } else {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int length = bArr.length;
                int a = C9320g.m15435a(obj2.hashCode());
                while (true) {
                    int i3 = a & (length - 1);
                    int i4 = bArr[i3] & 255;
                    if (i4 == 255) {
                        return null;
                    }
                    if (objArr[i4].equals(obj2)) {
                        return objArr[i4 ^ 1];
                    }
                    a = i3 + 1;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                int length2 = sArr.length;
                int a2 = C9320g.m15435a(obj2.hashCode());
                while (true) {
                    int i5 = a2 & (length2 - 1);
                    int i6 = sArr[i5] & 65535;
                    if (i6 == 65535) {
                        return null;
                    }
                    if (objArr[i6].equals(obj2)) {
                        return objArr[i6 ^ 1];
                    }
                    a2 = i5 + 1;
                }
            } else {
                int[] iArr = (int[]) obj;
                int length3 = iArr.length;
                int a3 = C9320g.m15435a(obj2.hashCode());
                while (true) {
                    int i7 = a3 & (length3 - 1);
                    int i8 = iArr[i7];
                    if (i8 == -1) {
                        return null;
                    }
                    if (objArr[i8].equals(obj2)) {
                        return objArr[i8 ^ 1];
                    }
                    a3 = i7 + 1;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007a, code lost:
        r0[r0] = (byte) r0;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0100, code lost:
        r0[r0] = (short) r0;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x017c, code lost:
        r0[r0] = r0;
        r7 = r7 + 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m15387a(java.lang.Object[] r5, int r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p316b.p318b.C9345t.m15387a(java.lang.Object[], int, int, int):java.lang.Object");
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9328j
    /* renamed from: a */
    public AbstractC9331k<Map.Entry<K, V>> mo15391a() {
        return new C9346a(this, this.f21377e, 0, this.f21378f);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9328j
    /* renamed from: b */
    public AbstractC9331k<K> mo15386b() {
        return new C9348b(this, new C9349c(this.f21377e, 0, this.f21378f));
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9328j
    /* renamed from: c */
    public AbstractC9321h<V> mo15385c() {
        return new C9349c(this.f21377e, 1, this.f21378f);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9328j, java.util.Map
    public V get(Object obj) {
        return (V) m15388a(this.f21376d, this.f21377e, this.f21378f, 0, obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.f21378f;
    }
}
