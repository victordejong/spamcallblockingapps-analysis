package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.KryoException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l.class */
public class l<K> implements Iterable<b<K>> {

    /* renamed from: a  reason: collision with root package name */
    public int f19016a;

    /* renamed from: b  reason: collision with root package name */
    K[] f19017b;

    /* renamed from: c  reason: collision with root package name */
    int[] f19018c;

    /* renamed from: d  reason: collision with root package name */
    float f19019d;
    int e;
    protected int f;
    protected int g;

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$a.class */
    public static final class a<K> extends c<K> implements Iterable<b<K>>, Iterator<b<K>> {

        /* renamed from: a  reason: collision with root package name */
        b<K> f19020a = new b<>();

        public a(l<K> lVar) {
            super(lVar);
        }

        @Override // com.esotericsoftware.kryo.c.l.c
        public final /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f) {
                return this.f19023b;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.lang.Iterable
        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (!this.f19023b) {
                throw new NoSuchElementException();
            } else if (this.f) {
                K[] kArr = this.f19024c.f19017b;
                this.f19020a.f19021a = kArr[this.f19025d];
                this.f19020a.f19022b = this.f19024c.f19018c[this.f19025d];
                this.e = this.f19025d;
                b();
                return this.f19020a;
            } else {
                throw new KryoException("#iterator() cannot be used nested.");
            }
        }

        @Override // com.esotericsoftware.kryo.c.l.c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$b.class */
    public static final class b<K> {

        /* renamed from: a  reason: collision with root package name */
        public K f19021a;

        /* renamed from: b  reason: collision with root package name */
        public int f19022b;

        public final String toString() {
            return this.f19021a + "=" + this.f19022b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/l$c.class */
    static class c<K> {

        /* renamed from: b  reason: collision with root package name */
        public boolean f19023b;

        /* renamed from: c  reason: collision with root package name */
        final l<K> f19024c;

        /* renamed from: d  reason: collision with root package name */
        int f19025d;
        int e;
        boolean f = true;

        public c(l<K> lVar) {
            this.f19024c = lVar;
            a();
        }

        public void a() {
            this.e = -1;
            this.f19025d = -1;
            b();
        }

        final void b() {
            int i;
            K[] kArr = this.f19024c.f19017b;
            int length = kArr.length;
            do {
                i = this.f19025d + 1;
                this.f19025d = i;
                if (i >= length) {
                    this.f19023b = false;
                    return;
                }
            } while (kArr[i] == null);
            this.f19023b = true;
        }

        public void remove() {
            int i = this.e;
            if (i >= 0) {
                K[] kArr = this.f19024c.f19017b;
                int[] iArr = this.f19024c.f19018c;
                int i2 = this.f19024c.g;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int a2 = this.f19024c.a((l<K>) k);
                    i = i;
                    if (((i4 - a2) & i2) > ((i - a2) & i2)) {
                        kArr[i] = k;
                        iArr[i] = iArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                this.f19024c.f19016a--;
                if (i != this.e) {
                    this.f19025d--;
                }
                this.e = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }
    }

    public l() {
        this(51, 0.8f);
    }

    public l(int i) {
        this(i, 0.8f);
    }

    public l(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.f19019d = f;
        int a2 = m.a(i, f);
        this.e = (int) (a2 * f);
        int i2 = a2 - 1;
        this.g = i2;
        this.f = Long.numberOfLeadingZeros(i2);
        this.f19017b = (K[]) new Object[a2];
        this.f19018c = new int[a2];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(com.esotericsoftware.kryo.c.l<? extends K> r7) {
        /*
            r6 = this;
            r0 = r7
            K[] r0 = r0.f19017b
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.f19019d
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            K[] r0 = r0.f19017b
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            K[] r2 = r2.f19017b
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            int[] r0 = r0.f19018c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            int[] r2 = r2.f19018c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f19016a
            r0.f19016a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.l.<init>(com.esotericsoftware.kryo.c.l):void");
    }

    private void a() {
        if (this.f19016a != 0) {
            this.f19016a = 0;
            Arrays.fill(this.f19017b, (Object) null);
        }
    }

    private void b(int i) {
        int length = this.f19017b.length;
        this.e = (int) (i * this.f19019d);
        int i2 = i - 1;
        this.g = i2;
        this.f = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f19017b;
        int[] iArr = this.f19018c;
        this.f19017b = (K[]) new Object[i];
        this.f19018c = new int[i];
        if (this.f19016a > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    c(k, iArr[i3]);
                }
            }
        }
    }

    private void c(K k, int i) {
        K[] kArr = this.f19017b;
        int a2 = a((l<K>) k);
        while (kArr[a2] != null) {
            a2 = (a2 + 1) & this.g;
        }
        kArr[a2] = k;
        this.f19018c[a2] = i;
    }

    protected int a(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f);
    }

    public final void a(int i) {
        int a2 = m.a(i, this.f19019d);
        if (this.f19017b.length <= a2) {
            a();
            return;
        }
        this.f19016a = 0;
        b(a2);
    }

    public final void a(K k, int i) {
        int b2 = b((l<K>) k);
        if (b2 >= 0) {
            this.f19018c[b2] = i;
            return;
        }
        int i2 = -(b2 + 1);
        K[] kArr = this.f19017b;
        kArr[i2] = k;
        this.f19018c[i2] = i;
        int i3 = this.f19016a + 1;
        this.f19016a = i3;
        if (i3 >= this.e) {
            b(kArr.length << 1);
        }
    }

    int b(K k) {
        if (k != null) {
            K[] kArr = this.f19017b;
            int a2 = a((l<K>) k);
            while (true) {
                K k2 = kArr[a2];
                if (k2 == null) {
                    return -(a2 + 1);
                }
                if (k2.equals(k)) {
                    return a2;
                }
                a2 = (a2 + 1) & this.g;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public final int b(K k, int i) {
        int b2 = b((l<K>) k);
        return b2 < 0 ? i : this.f19018c[b2];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.f19016a != this.f19016a) {
            return false;
        }
        K[] kArr = this.f19017b;
        int[] iArr = this.f19018c;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                int b2 = lVar.b(k, 0);
                if (b2 == 0) {
                    if (!(lVar.b((l) k) >= 0)) {
                        return false;
                    }
                }
                if (b2 != iArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f19016a;
        K[] kArr = this.f19017b;
        int[] iArr = this.f19018c;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            i = i;
            if (k != null) {
                i += k.hashCode() + iArr[i2];
            }
        }
        return i;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return new a(this);
    }

    public String toString() {
        int i;
        if (this.f19016a == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f19017b;
        int[] iArr = this.f19018c;
        int length = kArr.length;
        while (true) {
            int i2 = length - 1;
            i = i2;
            if (length <= 0) {
                break;
            }
            K k = kArr[i2];
            if (k != null) {
                sb.append(k);
                sb.append('=');
                sb.append(iArr[i2]);
                i = i2;
                break;
            }
            length = i2;
        }
        while (true) {
            int i3 = i - 1;
            if (i > 0) {
                K k2 = kArr[i3];
                if (k2 != null) {
                    sb.append(", ");
                    sb.append(k2);
                    sb.append('=');
                    sb.append(iArr[i3]);
                }
                i = i3;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }
}
