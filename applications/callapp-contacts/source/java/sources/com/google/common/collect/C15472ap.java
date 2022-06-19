package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.google.common.collect.ap */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap.class */
public final class C15472ap<K, V> extends AbstractC15556x<K, V> {

    /* renamed from: b */
    static final AbstractC15556x<Object, Object> f55735b = new C15472ap(null, new Object[0], 0);

    /* renamed from: c */
    final transient Object[] f55736c;

    /* renamed from: d */
    private final transient Object f55737d;

    /* renamed from: e */
    private final transient int f55738e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ap$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$a.class */
    public static final class C15473a<K, V> extends AbstractC15566z<Map.Entry<K, V>> {

        /* renamed from: a */
        private final transient AbstractC15556x<K, V> f55739a;

        /* renamed from: b */
        private final transient Object[] f55740b;

        /* renamed from: c */
        private final transient int f55741c;

        /* renamed from: d */
        private final transient int f55742d;

        C15473a(AbstractC15556x<K, V> abstractC15556x, Object[] objArr, int i, int i2) {
            this.f55739a = abstractC15556x;
            this.f55740b = objArr;
            this.f55741c = i;
            this.f55742d = i2;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final int mo8667a(Object[] objArr, int i) {
            return mo8656e().mo8667a(objArr, i);
        }

        @Override // com.google.common.collect.AbstractC15566z, com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final AbstractC15493ay<Map.Entry<K, V>> iterator() {
            return mo8656e().listIterator(0);
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                return value != null && value.equals(this.f55739a.get(key));
            }
            return false;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return true;
        }

        @Override // com.google.common.collect.AbstractC15566z
        /* renamed from: h */
        final AbstractC15549v<Map.Entry<K, V>> mo8654h() {
            return new AbstractC15549v<Map.Entry<K, V>>() { // from class: com.google.common.collect.ap.a.1
                @Override // com.google.common.collect.AbstractC15545t
                /* renamed from: f */
                public final boolean mo8666f() {
                    return true;
                }

                @Override // java.util.List
                public final /* synthetic */ Object get(int i) {
                    C15391m.m8949a(i, C15473a.this.f55742d);
                    int i2 = i * 2;
                    return new AbstractMap.SimpleImmutableEntry(C15473a.this.f55740b[C15473a.this.f55741c + i2], C15473a.this.f55740b[i2 + (C15473a.this.f55741c ^ 1)]);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return C15473a.this.f55742d;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f55742d;
        }
    }

    /* renamed from: com.google.common.collect.ap$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$b.class */
    static final class C15475b<K> extends AbstractC15566z<K> {

        /* renamed from: a */
        private final transient AbstractC15556x<K, ?> f55744a;

        /* renamed from: b */
        private final transient AbstractC15549v<K> f55745b;

        C15475b(AbstractC15556x<K, ?> abstractC15556x, AbstractC15549v<K> abstractC15549v) {
            this.f55744a = abstractC15556x;
            this.f55745b = abstractC15549v;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final int mo8667a(Object[] objArr, int i) {
            return this.f55745b.mo8667a(objArr, i);
        }

        @Override // com.google.common.collect.AbstractC15566z, com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final AbstractC15493ay<K> iterator() {
            return this.f55745b.listIterator(0);
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f55744a.get(obj) != null;
        }

        @Override // com.google.common.collect.AbstractC15566z, com.google.common.collect.AbstractC15545t
        /* renamed from: e */
        public final AbstractC15549v<K> mo8656e() {
            return this.f55745b;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f55744a.size();
        }
    }

    /* renamed from: com.google.common.collect.ap$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ap$c.class */
    static final class C15476c extends AbstractC15549v<Object> {

        /* renamed from: a */
        private final transient Object[] f55746a;

        /* renamed from: b */
        private final transient int f55747b;

        /* renamed from: c */
        private final transient int f55748c;

        C15476c(Object[] objArr, int i, int i2) {
            this.f55746a = objArr;
            this.f55747b = i;
            this.f55748c = i2;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            C15391m.m8949a(i, this.f55748c);
            return this.f55746a[(i * 2) + this.f55747b];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f55748c;
        }
    }

    private C15472ap(Object obj, Object[] objArr, int i) {
        this.f55737d = obj;
        this.f55736c = objArr;
        this.f55738e = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> C15472ap<K, V> m8832a(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (C15472ap) f55735b;
        }
        byte[] bArr = null;
        if (i == 1) {
            C15524i.m8780a(objArr[0], objArr[1]);
            return new C15472ap<>(null, objArr, 1);
        }
        C15391m.m8935b(i, objArr.length >> 1);
        int m8664a = AbstractC15566z.m8664a(i);
        if (i == 1) {
            C15524i.m8780a(objArr[0], objArr[1]);
        } else {
            int i8 = m8664a - 1;
            if (m8664a <= 128) {
                byte[] bArr2 = new byte[m8664a];
                Arrays.fill(bArr2, (byte) -1);
                int i9 = 0;
                while (true) {
                    bArr = bArr2;
                    if (i9 >= i) {
                        break;
                    }
                    i6 = (i9 * 2) + 0;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    C15524i.m8780a(obj, obj2);
                    int m8732a = C15544s.m8732a(obj.hashCode());
                    while (true) {
                        i7 = m8732a & i8;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (objArr[i10].equals(obj)) {
                            throw m8831a(obj, obj2, objArr, i10);
                        } else {
                            m8732a = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i9++;
                }
            } else if (m8664a <= 32768) {
                short[] sArr = new short[m8664a];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                while (true) {
                    bArr = sArr;
                    if (i11 >= i) {
                        break;
                    }
                    i4 = (i11 * 2) + 0;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    C15524i.m8780a(obj3, obj4);
                    int m8732a2 = C15544s.m8732a(obj3.hashCode());
                    while (true) {
                        i5 = m8732a2 & i8;
                        int i12 = sArr[i5] & 65535;
                        if (i12 == 65535) {
                            break;
                        } else if (objArr[i12].equals(obj3)) {
                            throw m8831a(obj3, obj4, objArr, i12);
                        } else {
                            m8732a2 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[m8664a];
                Arrays.fill(iArr, -1);
                int i13 = 0;
                while (true) {
                    bArr = iArr;
                    if (i13 >= i) {
                        break;
                    }
                    i2 = (i13 * 2) + 0;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    C15524i.m8780a(obj5, obj6);
                    int m8732a3 = C15544s.m8732a(obj5.hashCode());
                    while (true) {
                        i3 = m8732a3 & i8;
                        char c = iArr[i3];
                        if (c == -1) {
                            break;
                        } else if (objArr[c].equals(obj5)) {
                            throw m8831a(obj5, obj6, objArr, c);
                        } else {
                            m8732a3 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i13++;
                }
            }
        }
        return new C15472ap<>(bArr, objArr, i);
    }

    /* renamed from: a */
    private static IllegalArgumentException m8831a(Object obj, Object obj2, Object[] objArr, int i) {
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

    @Override // com.google.common.collect.AbstractC15556x
    /* renamed from: d */
    final AbstractC15566z<Map.Entry<K, V>> mo8700d() {
        return new C15473a(this, this.f55736c, 0, this.f55738e);
    }

    @Override // com.google.common.collect.AbstractC15556x
    /* renamed from: f */
    final AbstractC15566z<K> mo8698f() {
        return new C15475b(this, new C15476c(this.f55736c, 0, this.f55738e));
    }

    @Override // com.google.common.collect.AbstractC15556x, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.f55737d;
        Object[] objArr = this.f55736c;
        int i = this.f55738e;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (!objArr[0].equals(obj)) {
                return null;
            }
            return (V) objArr[1];
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length;
                int m8732a = C15544s.m8732a(obj.hashCode());
                while (true) {
                    int i2 = m8732a & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    m8732a = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int m8732a2 = C15544s.m8732a(obj.hashCode());
                while (true) {
                    int i4 = m8732a2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    m8732a2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int m8732a3 = C15544s.m8732a(obj.hashCode());
                while (true) {
                    int i6 = m8732a3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    m8732a3 = i6 + 1;
                }
            }
        }
    }

    @Override // com.google.common.collect.AbstractC15556x
    /* renamed from: h */
    final AbstractC15545t<V> mo8696h() {
        return new C15476c(this.f55736c, 1, this.f55738e);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f55738e;
    }
}
