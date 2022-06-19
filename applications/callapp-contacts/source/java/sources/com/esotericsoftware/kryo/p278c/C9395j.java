package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.KryoException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.NoSuchElementException;
import okhttp3.HttpUrl;
/* renamed from: com.esotericsoftware.kryo.c.j */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j.class */
public final class C9395j<V> implements Iterable<C9397b<V>> {

    /* renamed from: a */
    public int f32305a;

    /* renamed from: b */
    int[] f32306b;

    /* renamed from: c */
    V[] f32307c;

    /* renamed from: d */
    V f32308d;

    /* renamed from: e */
    boolean f32309e;

    /* renamed from: f */
    protected int f32310f;

    /* renamed from: g */
    protected int f32311g;

    /* renamed from: h */
    private final float f32312h;

    /* renamed from: i */
    private int f32313i;

    /* renamed from: com.esotericsoftware.kryo.c.j$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$a.class */
    public static final class C9396a<V> extends C9398c<V> implements Iterable<C9397b<V>>, Iterator<C9397b<V>> {

        /* renamed from: f */
        private final C9397b<V> f32314f = new C9397b<>();

        public C9396a(C9395j c9395j) {
            super(c9395j);
        }

        @Override // com.esotericsoftware.kryo.p278c.C9395j.C9398c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo24329a() {
            super.mo24329a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f32321e) {
                return this.f32317a;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.lang.Iterable
        public final Iterator<C9397b<V>> iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f32317a) {
                if (!this.f32321e) {
                    throw new KryoException("#iterator() cannot be used nested.");
                }
                int[] iArr = this.f32318b.f32306b;
                if (this.f32319c == -1) {
                    this.f32314f.f32315a = 0;
                    this.f32314f.f32316b = this.f32318b.f32308d;
                } else {
                    this.f32314f.f32315a = iArr[this.f32319c];
                    this.f32314f.f32316b = this.f32318b.f32307c[this.f32319c];
                }
                this.f32320d = this.f32319c;
                m24328b();
                return this.f32314f;
            }
            throw new NoSuchElementException();
        }

        @Override // com.esotericsoftware.kryo.p278c.C9395j.C9398c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* renamed from: com.esotericsoftware.kryo.c.j$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$b.class */
    public static final class C9397b<V> {

        /* renamed from: a */
        public int f32315a;

        /* renamed from: b */
        public V f32316b;

        public final String toString() {
            return this.f32315a + "=" + this.f32316b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.esotericsoftware.kryo.c.j$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$c.class */
    public static class C9398c<V> {

        /* renamed from: a */
        public boolean f32317a;

        /* renamed from: b */
        final C9395j<V> f32318b;

        /* renamed from: c */
        int f32319c;

        /* renamed from: d */
        int f32320d;

        /* renamed from: e */
        boolean f32321e = true;

        public C9398c(C9395j<V> c9395j) {
            this.f32318b = c9395j;
            mo24329a();
        }

        /* renamed from: a */
        public void mo24329a() {
            this.f32320d = -2;
            this.f32319c = -1;
            if (this.f32318b.f32309e) {
                this.f32317a = true;
            } else {
                m24328b();
            }
        }

        /* renamed from: b */
        final void m24328b() {
            int i;
            int[] iArr = this.f32318b.f32306b;
            int length = iArr.length;
            do {
                i = this.f32319c + 1;
                this.f32319c = i;
                if (i >= length) {
                    this.f32317a = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.f32317a = true;
        }

        public void remove() {
            int i = this.f32320d;
            if (i == -1 && this.f32318b.f32309e) {
                this.f32318b.f32309e = false;
            } else if (i < 0) {
                throw new IllegalStateException("next must be called before remove.");
            } else {
                int[] iArr = this.f32318b.f32306b;
                V[] vArr = this.f32318b.f32307c;
                int i2 = this.f32318b.f32311g;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int m24335a = this.f32318b.m24335a(i5);
                    int i6 = i;
                    if (((i4 - m24335a) & i2) > ((i - m24335a) & i2)) {
                        iArr[i] = i5;
                        vArr[i] = vArr[i4];
                        i6 = i4;
                    }
                    i = i6;
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f32320d) {
                    this.f32319c--;
                }
            }
            this.f32320d = -2;
            this.f32318b.f32305a--;
        }
    }

    public C9395j() {
        this(51, 0.8f);
    }

    public C9395j(int i) {
        this(i, 0.8f);
    }

    public C9395j(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.f32312h = f;
        int m24315a = C9404m.m24315a(i, f);
        this.f32313i = (int) (m24315a * f);
        int i2 = m24315a - 1;
        this.f32311g = i2;
        this.f32310f = Long.numberOfLeadingZeros(i2);
        this.f32306b = new int[m24315a];
        this.f32307c = (V[]) new Object[m24315a];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9395j(com.esotericsoftware.kryo.p278c.C9395j<? extends V> r7) {
        /*
            r6 = this;
            r0 = r7
            int[] r0 = r0.f32306b
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.f32312h
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            int[] r0 = r0.f32306b
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            int[] r2 = r2.f32306b
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            V[] r0 = r0.f32307c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            V[] r2 = r2.f32307c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f32305a
            r0.f32305a = r1
            r0 = r6
            r1 = r7
            V r1 = r1.f32308d
            r0.f32308d = r1
            r0 = r6
            r1 = r7
            boolean r1 = r1.f32309e
            r0.f32309e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.p278c.C9395j.<init>(com.esotericsoftware.kryo.c.j):void");
    }

    /* renamed from: b */
    private void m24332b(int i, V v) {
        int[] iArr = this.f32306b;
        int m24335a = m24335a(i);
        while (true) {
            int i2 = m24335a;
            if (iArr[i2] == 0) {
                iArr[i2] = i;
                this.f32307c[i2] = v;
                return;
            }
            m24335a = (i2 + 1) & this.f32311g;
        }
    }

    /* renamed from: c */
    private int m24331c(int i) {
        int[] iArr = this.f32306b;
        int m24335a = m24335a(i);
        while (true) {
            int i2 = m24335a;
            int i3 = iArr[i2];
            if (i3 == 0) {
                return -(i2 + 1);
            }
            if (i3 == i) {
                return i2;
            }
            m24335a = (i2 + 1) & this.f32311g;
        }
    }

    /* renamed from: d */
    private void m24330d(int i) {
        int length = this.f32306b.length;
        this.f32313i = (int) (i * this.f32312h);
        int i2 = i - 1;
        this.f32311g = i2;
        this.f32310f = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f32306b;
        V[] vArr = this.f32307c;
        this.f32306b = new int[i];
        this.f32307c = (V[]) new Object[i];
        if (this.f32305a > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m24332b(i4, vArr[i3]);
                }
            }
        }
    }

    /* renamed from: a */
    protected final int m24335a(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f32310f);
    }

    /* renamed from: a */
    public final V m24334a(int i, V v) {
        if (i == 0) {
            V v2 = this.f32308d;
            this.f32308d = v;
            if (!this.f32309e) {
                this.f32309e = true;
                this.f32305a++;
            }
            return v2;
        }
        int m24331c = m24331c(i);
        if (m24331c >= 0) {
            V[] vArr = this.f32307c;
            V v3 = vArr[m24331c];
            vArr[m24331c] = v;
            return v3;
        }
        int i2 = -(m24331c + 1);
        int[] iArr = this.f32306b;
        iArr[i2] = i;
        this.f32307c[i2] = v;
        int i3 = this.f32305a + 1;
        this.f32305a = i3;
        if (i3 < this.f32313i) {
            return null;
        }
        m24330d(iArr.length << 1);
        return null;
    }

    /* renamed from: b */
    public final V m24333b(int i) {
        if (i == 0) {
            if (!this.f32309e) {
                return null;
            }
            return this.f32308d;
        }
        int m24331c = m24331c(i);
        if (m24331c < 0) {
            return null;
        }
        return this.f32307c[m24331c];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9395j)) {
            return false;
        }
        C9395j c9395j = (C9395j) obj;
        if (c9395j.f32305a != this.f32305a) {
            return false;
        }
        boolean z = c9395j.f32309e;
        boolean z2 = this.f32309e;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = c9395j.f32308d;
            if (v == null) {
                if (this.f32308d != null) {
                    return false;
                }
            } else if (!v.equals(this.f32308d)) {
                return false;
            }
        }
        int[] iArr = this.f32306b;
        V[] vArr = this.f32307c;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    V v3 = C9404m.f32341a;
                    if (i2 != 0) {
                        int m24331c = c9395j.m24331c(i2);
                        if (m24331c >= 0) {
                            v3 = c9395j.f32307c[m24331c];
                        }
                    } else if (c9395j.f32309e) {
                        v3 = c9395j.f32308d;
                    }
                    if (v3 != null) {
                        return false;
                    }
                } else if (!v2.equals(c9395j.m24333b(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f32305a;
        int i2 = i;
        if (this.f32309e) {
            V v = this.f32308d;
            i2 = i;
            if (v != null) {
                i2 = i + v.hashCode();
            }
        }
        int[] iArr = this.f32306b;
        V[] vArr = this.f32307c;
        int i3 = 0;
        int length = iArr.length;
        while (true) {
            int i4 = i2;
            if (i3 < length) {
                int i5 = iArr[i3];
                i2 = i4;
                if (i5 != 0) {
                    int i6 = i4 + (i5 * 31);
                    V v2 = vArr[i3];
                    i2 = i6;
                    if (v2 != null) {
                        i2 = i6 + v2.hashCode();
                    }
                }
                i3++;
            } else {
                return i4;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<C9397b<V>> iterator() {
        return new C9396a(this);
    }

    public final String toString() {
        if (this.f32305a == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        int[] iArr = this.f32306b;
        V[] vArr = this.f32307c;
        int length = iArr.length;
        int i = length;
        if (this.f32309e) {
            sb.append("0=");
            sb.append(this.f32308d);
        } else {
            while (true) {
                int i2 = i - 1;
                length = i2;
                if (i <= 0) {
                    break;
                }
                int i3 = iArr[i2];
                if (i3 != 0) {
                    sb.append(i3);
                    sb.append('=');
                    sb.append(vArr[i2]);
                    length = i2;
                    break;
                }
                i = i2;
            }
        }
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                sb.append(']');
                return sb.toString();
            }
            int i5 = iArr[i4];
            length = i4;
            if (i5 != 0) {
                sb.append(", ");
                sb.append(i5);
                sb.append('=');
                sb.append(vArr[i4]);
                length = i4;
            }
        }
    }
}
