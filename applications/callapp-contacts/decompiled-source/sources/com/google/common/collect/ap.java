package com.google.common.collect;

import com.google.common.base.m;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap.class */
public final class ap<K, V> extends x<K, V> {

    /* renamed from: b  reason: collision with root package name */
    static final x<Object, Object> f32010b = new ap(null, new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f32011c;

    /* renamed from: d  reason: collision with root package name */
    private final transient Object f32012d;
    private final transient int e;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$a.class */
    static final class a<K, V> extends z<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final transient x<K, V> f32013a;

        /* renamed from: b  reason: collision with root package name */
        private final transient Object[] f32014b;

        /* renamed from: c  reason: collision with root package name */
        private final transient int f32015c;

        /* renamed from: d  reason: collision with root package name */
        private final transient int f32016d;

        a(x<K, V> xVar, Object[] objArr, int i, int i2) {
            this.f32013a = xVar;
            this.f32014b = objArr;
            this.f32015c = i;
            this.f32016d = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final int a(Object[] objArr, int i) {
            return e().a(objArr, i);
        }

        @Override // com.google.common.collect.z, com.google.common.collect.t
        /* renamed from: a */
        public final ay<Map.Entry<K, V>> iterator() {
            return e().listIterator(0);
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f32013a.get(key));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return true;
        }

        @Override // com.google.common.collect.z
        final v<Map.Entry<K, V>> h() {
            return new v<Map.Entry<K, V>>() { // from class: com.google.common.collect.ap.a.1
                @Override // com.google.common.collect.t
                public final boolean f() {
                    return true;
                }

                @Override // java.util.List
                public final /* synthetic */ Object get(int i) {
                    m.a(i, a.this.f32016d);
                    int i2 = i * 2;
                    return new AbstractMap.SimpleImmutableEntry(a.this.f32014b[a.this.f32015c + i2], a.this.f32014b[i2 + (a.this.f32015c ^ 1)]);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return a.this.f32016d;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f32016d;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$b.class */
    static final class b<K> extends z<K> {

        /* renamed from: a  reason: collision with root package name */
        private final transient x<K, ?> f32018a;

        /* renamed from: b  reason: collision with root package name */
        private final transient v<K> f32019b;

        b(x<K, ?> xVar, v<K> vVar) {
            this.f32018a = xVar;
            this.f32019b = vVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final int a(Object[] objArr, int i) {
            return this.f32019b.a(objArr, i);
        }

        @Override // com.google.common.collect.z, com.google.common.collect.t
        /* renamed from: a */
        public final ay<K> iterator() {
            return this.f32019b.listIterator(0);
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f32018a.get(obj) != null;
        }

        @Override // com.google.common.collect.z, com.google.common.collect.t
        public final v<K> e() {
            return this.f32019b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f32018a.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$c.class */
    static final class c extends v<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final transient Object[] f32020a;

        /* renamed from: b  reason: collision with root package name */
        private final transient int f32021b;

        /* renamed from: c  reason: collision with root package name */
        private final transient int f32022c;

        c(Object[] objArr, int i, int i2) {
            this.f32020a = objArr;
            this.f32021b = i;
            this.f32022c = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            m.a(i, this.f32022c);
            return this.f32020a[(i * 2) + this.f32021b];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f32022c;
        }
    }

    private ap(Object obj, Object[] objArr, int i) {
        this.f32012d = obj;
        this.f32011c = objArr;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> ap<K, V> a(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (ap) f32010b;
        }
        int[] iArr = null;
        if (i == 1) {
            i.a(objArr[0], objArr[1]);
            return new ap<>(null, objArr, 1);
        }
        m.b(i, objArr.length >> 1);
        int a2 = z.a(i);
        if (i == 1) {
            i.a(objArr[0], objArr[1]);
        } else {
            int i8 = a2 - 1;
            if (a2 <= 128) {
                byte[] bArr = new byte[a2];
                Arrays.fill(bArr, (byte) -1);
                int i9 = 0;
                while (true) {
                    iArr = bArr;
                    if (i9 >= i) {
                        break;
                    }
                    i6 = (i9 * 2) + 0;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    i.a(obj, obj2);
                    int a3 = s.a(obj.hashCode());
                    while (true) {
                        i7 = a3 & i8;
                        int i10 = bArr[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (!objArr[i10].equals(obj)) {
                            a3 = i7 + 1;
                        } else {
                            throw a(obj, obj2, objArr, i10);
                        }
                    }
                    bArr[i7] = (byte) i6;
                    i9++;
                }
            } else if (a2 <= 32768) {
                short[] sArr = new short[a2];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                while (true) {
                    iArr = sArr;
                    if (i11 >= i) {
                        break;
                    }
                    i4 = (i11 * 2) + 0;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    i.a(obj3, obj4);
                    int a4 = s.a(obj3.hashCode());
                    while (true) {
                        i5 = a4 & i8;
                        int i12 = sArr[i5] & 65535;
                        if (i12 == 65535) {
                            break;
                        } else if (!objArr[i12].equals(obj3)) {
                            a4 = i5 + 1;
                        } else {
                            throw a(obj3, obj4, objArr, i12);
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr2 = new int[a2];
                Arrays.fill(iArr2, -1);
                int i13 = 0;
                while (true) {
                    iArr = iArr2;
                    if (i13 >= i) {
                        break;
                    }
                    i2 = (i13 * 2) + 0;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    i.a(obj5, obj6);
                    int a5 = s.a(obj5.hashCode());
                    while (true) {
                        i3 = a5 & i8;
                        int i14 = iArr2[i3];
                        if (i14 == -1) {
                            break;
                        } else if (!objArr[i14].equals(obj5)) {
                            a5 = i3 + 1;
                        } else {
                            throw a(obj5, obj6, objArr, i14);
                        }
                    }
                    iArr2[i3] = i2;
                    i13++;
                }
            }
        }
        return new ap<>(iArr, objArr, i);
    }

    private static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("Multiple entries with same key: ");
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        sb.append(" and ");
        sb.append(valueOf3);
        sb.append("=");
        sb.append(valueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.common.collect.x
    final z<Map.Entry<K, V>> d() {
        return new a(this, this.f32011c, 0, this.e);
    }

    @Override // com.google.common.collect.x
    final z<K> f() {
        return new b(this, new c(this.f32011c, 0, this.e));
    }

    @Override // com.google.common.collect.x, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.f32012d;
        Object[] objArr = this.f32011c;
        int i = this.e;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length;
                int a2 = s.a(obj.hashCode());
                while (true) {
                    int i2 = a2 & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    a2 = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int a3 = s.a(obj.hashCode());
                while (true) {
                    int i4 = a3 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    a3 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int a4 = s.a(obj.hashCode());
                while (true) {
                    int i6 = a4 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    a4 = i6 + 1;
                }
            }
        }
    }

    @Override // com.google.common.collect.x
    final t<V> h() {
        return new c(this.f32011c, 1, this.e);
    }

    @Override // java.util.Map
    public final int size() {
        return this.e;
    }
}
