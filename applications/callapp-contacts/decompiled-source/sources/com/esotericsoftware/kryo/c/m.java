package com.esotericsoftware.kryo.c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m.class */
public class m<K, V> implements Iterable<b<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    static final Object f19026a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public int f19027b;

    /* renamed from: c  reason: collision with root package name */
    K[] f19028c;

    /* renamed from: d  reason: collision with root package name */
    V[] f19029d;
    float e;
    int f;
    protected int g;
    protected int h;

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$a.class */
    public static final class a<K, V> extends c<K, V, b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        b<K, V> f19030a = new b<>();

        public a(m<K, V> mVar) {
            super(mVar);
        }

        @Override // com.esotericsoftware.kryo.c.m.c
        public final /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f19033b;
        }

        @Override // java.lang.Iterable
        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f19033b) {
                K[] kArr = this.f19034c.f19028c;
                this.f19030a.f19031a = kArr[this.f19035d];
                this.f19030a.f19032b = this.f19034c.f19029d[this.f19035d];
                this.e = this.f19035d;
                b();
                return this.f19030a;
            }
            throw new NoSuchElementException();
        }

        @Override // com.esotericsoftware.kryo.c.m.c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$b.class */
    public static final class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public K f19031a;

        /* renamed from: b  reason: collision with root package name */
        public V f19032b;

        public final String toString() {
            return this.f19031a + "=" + this.f19032b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$c.class */
    static abstract class c<K, V, I> implements Iterable<I>, Iterator<I> {

        /* renamed from: b  reason: collision with root package name */
        public boolean f19033b;

        /* renamed from: c  reason: collision with root package name */
        final m<K, V> f19034c;

        /* renamed from: d  reason: collision with root package name */
        int f19035d;
        int e;
        boolean f = true;

        public c(m<K, V> mVar) {
            this.f19034c = mVar;
            a();
        }

        public void a() {
            this.e = -1;
            this.f19035d = -1;
            b();
        }

        final void b() {
            int i;
            K[] kArr = this.f19034c.f19028c;
            int length = kArr.length;
            do {
                i = this.f19035d + 1;
                this.f19035d = i;
                if (i >= length) {
                    this.f19033b = false;
                    return;
                }
            } while (kArr[i] == null);
            this.f19033b = true;
        }

        public void remove() {
            int i = this.e;
            if (i >= 0) {
                K[] kArr = this.f19034c.f19028c;
                V[] vArr = this.f19034c.f19029d;
                int i2 = this.f19034c.h;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int a2 = this.f19034c.a((m<K, V>) k);
                    i = i;
                    if (((i4 - a2) & i2) > ((i - a2) & i2)) {
                        kArr[i] = k;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                vArr[i] = null;
                this.f19034c.f19027b--;
                if (i != this.e) {
                    this.f19035d--;
                }
                this.e = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }
    }

    public m() {
        this(51, 0.8f);
    }

    public m(int i) {
        this(i, 0.8f);
    }

    public m(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.e = f;
        int a2 = a(i, f);
        this.f = (int) (a2 * f);
        int i2 = a2 - 1;
        this.h = i2;
        this.g = Long.numberOfLeadingZeros(i2);
        this.f19028c = (K[]) new Object[a2];
        this.f19029d = (V[]) new Object[a2];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m(com.esotericsoftware.kryo.c.m<? extends K, ? extends V> r7) {
        /*
            r6 = this;
            r0 = r7
            K[] r0 = r0.f19028c
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.e
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            K[] r0 = r0.f19028c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            K[] r2 = r2.f19028c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            V[] r0 = r0.f19029d
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            V[] r2 = r2.f19029d
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f19027b
            r0.f19027b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.m.<init>(com.esotericsoftware.kryo.c.m):void");
    }

    public static int a(int i, float f) {
        if (i >= 0) {
            int b2 = b(Math.max(2, (int) Math.ceil(i / f)));
            if (b2 <= 1073741824) {
                return b2;
            }
            throw new IllegalArgumentException("The required capacity is too large: ".concat(String.valueOf(i)));
        }
        throw new IllegalArgumentException("capacity must be >= 0: ".concat(String.valueOf(i)));
    }

    private void a(int i) {
        int length = this.f19028c.length;
        this.f = (int) (i * this.e);
        int i2 = i - 1;
        this.h = i2;
        this.g = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f19028c;
        V[] vArr = this.f19029d;
        this.f19028c = (K[]) new Object[i];
        this.f19029d = (V[]) new Object[i];
        if (this.f19027b > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    b(k, vArr[i3]);
                }
            }
        }
    }

    private static int b(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    private void b() {
        if (this.f19027b != 0) {
            this.f19027b = 0;
            Arrays.fill(this.f19028c, (Object) null);
            Arrays.fill(this.f19029d, (Object) null);
        }
    }

    private void b(K k, V v) {
        K[] kArr = this.f19028c;
        int a2 = a((m<K, V>) k);
        while (kArr[a2] != null) {
            a2 = (a2 + 1) & this.h;
        }
        kArr[a2] = k;
        this.f19029d[a2] = v;
    }

    protected int a(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.g);
    }

    public final V a(K k, V v) {
        int b2 = b((m<K, V>) k);
        if (b2 >= 0) {
            V[] vArr = this.f19029d;
            V v2 = vArr[b2];
            vArr[b2] = v;
            return v2;
        }
        int i = -(b2 + 1);
        K[] kArr = this.f19028c;
        kArr[i] = k;
        this.f19029d[i] = v;
        int i2 = this.f19027b + 1;
        this.f19027b = i2;
        if (i2 < this.f) {
            return null;
        }
        a(kArr.length << 1);
        return null;
    }

    public final void a() {
        int a2 = a(2048, this.e);
        if (this.f19028c.length <= a2) {
            b();
            return;
        }
        this.f19027b = 0;
        a(a2);
    }

    int b(K k) {
        if (k != null) {
            K[] kArr = this.f19028c;
            int a2 = a((m<K, V>) k);
            while (true) {
                K k2 = kArr[a2];
                if (k2 == null) {
                    return -(a2 + 1);
                }
                if (k2.equals(k)) {
                    return a2;
                }
                a2 = (a2 + 1) & this.h;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends K> V c(T t) {
        int b2 = b((m<K, V>) t);
        if (b2 < 0) {
            return null;
        }
        return this.f19029d[b2];
    }

    public final boolean d(K k) {
        return b((m<K, V>) k) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (mVar.f19027b != this.f19027b) {
            return false;
        }
        K[] kArr = this.f19028c;
        V[] vArr = this.f19029d;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                V v = vArr[i];
                if (v == null) {
                    Object obj2 = f19026a;
                    int b2 = mVar.b((m) k);
                    if (b2 >= 0) {
                        obj2 = mVar.f19029d[b2];
                    }
                    if (obj2 != null) {
                        return false;
                    }
                } else if (!v.equals(mVar.c(k))) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f19027b;
        K[] kArr = this.f19028c;
        V[] vArr = this.f19029d;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            i = i;
            if (k != null) {
                int hashCode = i + k.hashCode();
                V v = vArr[i2];
                i = hashCode;
                if (v != null) {
                    i = hashCode + v.hashCode();
                }
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
        if (this.f19027b == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f19028c;
        V[] vArr = this.f19029d;
        int length = kArr.length;
        while (true) {
            int i2 = length - 1;
            i = i2;
            if (length <= 0) {
                break;
            }
            K k = kArr[i2];
            if (k != null) {
                Object obj = k;
                if (k == this) {
                    obj = "(this)";
                }
                sb.append(obj);
                sb.append('=');
                V v = vArr[i2];
                Object obj2 = v;
                if (v == this) {
                    obj2 = "(this)";
                }
                sb.append(obj2);
                i = i2;
            } else {
                length = i2;
            }
        }
        while (true) {
            int i3 = i - 1;
            if (i > 0) {
                K k2 = kArr[i3];
                if (k2 != null) {
                    sb.append(", ");
                    Object obj3 = k2;
                    if (k2 == this) {
                        obj3 = "(this)";
                    }
                    sb.append(obj3);
                    sb.append('=');
                    V v2 = vArr[i3];
                    Object obj4 = v2;
                    if (v2 == this) {
                        obj4 = "(this)";
                    }
                    sb.append(obj4);
                }
                i = i3;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }
}
