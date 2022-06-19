package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.KryoException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.esotericsoftware.kryo.c.l */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l.class */
public class C9400l<K> implements Iterable<C9402b<K>> {

    /* renamed from: a */
    public int f32326a;

    /* renamed from: b */
    K[] f32327b;

    /* renamed from: c */
    int[] f32328c;

    /* renamed from: d */
    float f32329d;

    /* renamed from: e */
    int f32330e;

    /* renamed from: f */
    protected int f32331f;

    /* renamed from: g */
    protected int f32332g;

    /* renamed from: com.esotericsoftware.kryo.c.l$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$a.class */
    public static final class C9401a<K> extends C9403c<K> implements Iterable<C9402b<K>>, Iterator<C9402b<K>> {

        /* renamed from: a */
        C9402b<K> f32333a = new C9402b<>();

        public C9401a(C9400l<K> c9400l) {
            super(c9400l);
        }

        @Override // com.esotericsoftware.kryo.p278c.C9400l.C9403c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo24319a() {
            super.mo24319a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f32340f) {
                return this.f32336b;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.lang.Iterable
        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f32336b) {
                if (!this.f32340f) {
                    throw new KryoException("#iterator() cannot be used nested.");
                }
                K[] kArr = this.f32337c.f32327b;
                this.f32333a.f32334a = kArr[this.f32338d];
                this.f32333a.f32335b = this.f32337c.f32328c[this.f32338d];
                this.f32339e = this.f32338d;
                m24318b();
                return this.f32333a;
            }
            throw new NoSuchElementException();
        }

        @Override // com.esotericsoftware.kryo.p278c.C9400l.C9403c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* renamed from: com.esotericsoftware.kryo.c.l$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$b.class */
    public static final class C9402b<K> {

        /* renamed from: a */
        public K f32334a;

        /* renamed from: b */
        public int f32335b;

        public final String toString() {
            return this.f32334a + "=" + this.f32335b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.esotericsoftware.kryo.c.l$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$c.class */
    public static class C9403c<K> {

        /* renamed from: b */
        public boolean f32336b;

        /* renamed from: c */
        final C9400l<K> f32337c;

        /* renamed from: d */
        int f32338d;

        /* renamed from: e */
        int f32339e;

        /* renamed from: f */
        boolean f32340f = true;

        public C9403c(C9400l<K> c9400l) {
            this.f32337c = c9400l;
            mo24319a();
        }

        /* renamed from: a */
        public void mo24319a() {
            this.f32339e = -1;
            this.f32338d = -1;
            m24318b();
        }

        /* renamed from: b */
        final void m24318b() {
            int i;
            K[] kArr = this.f32337c.f32327b;
            int length = kArr.length;
            do {
                i = this.f32338d + 1;
                this.f32338d = i;
                if (i >= length) {
                    this.f32336b = false;
                    return;
                }
            } while (kArr[i] == null);
            this.f32336b = true;
        }

        public void remove() {
            int i = this.f32339e;
            if (i >= 0) {
                K[] kArr = this.f32337c.f32327b;
                int[] iArr = this.f32337c.f32328c;
                int i2 = this.f32337c.f32332g;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int mo24325a = this.f32337c.mo24325a((C9400l<K>) k);
                    int i5 = i;
                    if (((i4 - mo24325a) & i2) > ((i - mo24325a) & i2)) {
                        kArr[i] = k;
                        iArr[i] = iArr[i4];
                        i5 = i4;
                    }
                    i = i5;
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                this.f32337c.f32326a--;
                if (i != this.f32339e) {
                    this.f32338d--;
                }
                this.f32339e = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }
    }

    public C9400l() {
        this(51, 0.8f);
    }

    public C9400l(int i) {
        this(i, 0.8f);
    }

    public C9400l(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.f32329d = f;
        int m24315a = C9404m.m24315a(i, f);
        this.f32330e = (int) (m24315a * f);
        int i2 = m24315a - 1;
        this.f32332g = i2;
        this.f32331f = Long.numberOfLeadingZeros(i2);
        this.f32327b = (K[]) new Object[m24315a];
        this.f32328c = new int[m24315a];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9400l(com.esotericsoftware.kryo.p278c.C9400l<? extends K> r7) {
        /*
            r6 = this;
            r0 = r7
            K[] r0 = r0.f32327b
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.f32329d
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            K[] r0 = r0.f32327b
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            K[] r2 = r2.f32327b
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            int[] r0 = r0.f32328c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            int[] r2 = r2.f32328c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f32326a
            r0.f32326a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.p278c.C9400l.<init>(com.esotericsoftware.kryo.c.l):void");
    }

    /* renamed from: a */
    private void m24327a() {
        if (this.f32326a == 0) {
            return;
        }
        this.f32326a = 0;
        Arrays.fill(this.f32327b, (Object) null);
    }

    /* renamed from: b */
    private void m24323b(int i) {
        int length = this.f32327b.length;
        this.f32330e = (int) (i * this.f32329d);
        int i2 = i - 1;
        this.f32332g = i2;
        this.f32331f = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f32327b;
        int[] iArr = this.f32328c;
        this.f32327b = (K[]) new Object[i];
        this.f32328c = new int[i];
        if (this.f32326a > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m24320c(k, iArr[i3]);
                }
            }
        }
    }

    /* renamed from: c */
    private void m24320c(K k, int i) {
        K[] kArr = this.f32327b;
        int mo24325a = mo24325a((C9400l<K>) k);
        while (true) {
            int i2 = mo24325a;
            if (kArr[i2] == null) {
                kArr[i2] = k;
                this.f32328c[i2] = i;
                return;
            }
            mo24325a = (i2 + 1) & this.f32332g;
        }
    }

    /* renamed from: a */
    protected int mo24325a(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f32331f);
    }

    /* renamed from: a */
    public final void m24326a(int i) {
        int m24315a = C9404m.m24315a(i, this.f32329d);
        if (this.f32327b.length <= m24315a) {
            m24327a();
            return;
        }
        this.f32326a = 0;
        m24323b(m24315a);
    }

    /* renamed from: a */
    public final void m24324a(K k, int i) {
        int mo24322b = mo24322b((C9400l<K>) k);
        if (mo24322b >= 0) {
            this.f32328c[mo24322b] = i;
            return;
        }
        int i2 = -(mo24322b + 1);
        K[] kArr = this.f32327b;
        kArr[i2] = k;
        this.f32328c[i2] = i;
        int i3 = this.f32326a + 1;
        this.f32326a = i3;
        if (i3 < this.f32330e) {
            return;
        }
        m24323b(kArr.length << 1);
    }

    /* renamed from: b */
    int mo24322b(K k) {
        if (k != null) {
            K[] kArr = this.f32327b;
            int mo24325a = mo24325a((C9400l<K>) k);
            while (true) {
                int i = mo24325a;
                K k2 = kArr[i];
                if (k2 == null) {
                    return -(i + 1);
                }
                if (k2.equals(k)) {
                    return i;
                }
                mo24325a = (i + 1) & this.f32332g;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    /* renamed from: b */
    public final int m24321b(K k, int i) {
        int mo24322b = mo24322b((C9400l<K>) k);
        return mo24322b < 0 ? i : this.f32328c[mo24322b];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9400l)) {
            return false;
        }
        C9400l c9400l = (C9400l) obj;
        if (c9400l.f32326a != this.f32326a) {
            return false;
        }
        K[] kArr = this.f32327b;
        int[] iArr = this.f32328c;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                int m24321b = c9400l.m24321b(k, 0);
                if (m24321b == 0) {
                    if (!(c9400l.mo24322b((C9400l) k) >= 0)) {
                        return false;
                    }
                }
                if (m24321b != iArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f32326a;
        K[] kArr = this.f32327b;
        int[] iArr = this.f32328c;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            K k = kArr[i2];
            int i3 = i;
            if (k != null) {
                i3 = i + k.hashCode() + iArr[i2];
            }
            i2++;
            i = i3;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return new C9401a(this);
    }

    public String toString() {
        int i;
        if (this.f32326a == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f32327b;
        int[] iArr = this.f32328c;
        int length = kArr.length;
        while (true) {
            int i2 = length;
            int i3 = i2 - 1;
            i = i3;
            if (i2 <= 0) {
                break;
            }
            K k = kArr[i3];
            if (k != null) {
                sb.append(k);
                sb.append('=');
                sb.append(iArr[i3]);
                i = i3;
                break;
            }
            length = i3;
        }
        while (true) {
            int i4 = i - 1;
            if (i <= 0) {
                sb.append('}');
                return sb.toString();
            }
            K k2 = kArr[i4];
            if (k2 != null) {
                sb.append(", ");
                sb.append(k2);
                sb.append('=');
                sb.append(iArr[i4]);
            }
            i = i4;
        }
    }
}
