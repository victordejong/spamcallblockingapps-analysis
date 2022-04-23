package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.KryoException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.NoSuchElementException;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j.class */
public final class j<V> implements Iterable<b<V>> {

    /* renamed from: a  reason: collision with root package name */
    public int f19002a;

    /* renamed from: b  reason: collision with root package name */
    int[] f19003b;

    /* renamed from: c  reason: collision with root package name */
    V[] f19004c;

    /* renamed from: d  reason: collision with root package name */
    V f19005d;
    boolean e;
    protected int f;
    protected int g;
    private final float h;
    private int i;

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$a.class */
    public static final class a<V> extends c<V> implements Iterable<b<V>>, Iterator<b<V>> {
        private final b<V> f = new b<>();

        public a(j jVar) {
            super(jVar);
        }

        @Override // com.esotericsoftware.kryo.c.j.c
        public final /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.e) {
                return this.f19008a;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.lang.Iterable
        public final Iterator<b<V>> iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (!this.f19008a) {
                throw new NoSuchElementException();
            } else if (this.e) {
                int[] iArr = this.f19009b.f19003b;
                if (this.f19010c == -1) {
                    this.f.f19006a = 0;
                    this.f.f19007b = this.f19009b.f19005d;
                } else {
                    this.f.f19006a = iArr[this.f19010c];
                    this.f.f19007b = this.f19009b.f19004c[this.f19010c];
                }
                this.f19011d = this.f19010c;
                b();
                return this.f;
            } else {
                throw new KryoException("#iterator() cannot be used nested.");
            }
        }

        @Override // com.esotericsoftware.kryo.c.j.c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$b.class */
    public static final class b<V> {

        /* renamed from: a  reason: collision with root package name */
        public int f19006a;

        /* renamed from: b  reason: collision with root package name */
        public V f19007b;

        public final String toString() {
            return this.f19006a + "=" + this.f19007b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/j$c.class */
    static class c<V> {

        /* renamed from: a  reason: collision with root package name */
        public boolean f19008a;

        /* renamed from: b  reason: collision with root package name */
        final j<V> f19009b;

        /* renamed from: c  reason: collision with root package name */
        int f19010c;

        /* renamed from: d  reason: collision with root package name */
        int f19011d;
        boolean e = true;

        public c(j<V> jVar) {
            this.f19009b = jVar;
            a();
        }

        public void a() {
            this.f19011d = -2;
            this.f19010c = -1;
            if (this.f19009b.e) {
                this.f19008a = true;
            } else {
                b();
            }
        }

        final void b() {
            int i;
            int[] iArr = this.f19009b.f19003b;
            int length = iArr.length;
            do {
                i = this.f19010c + 1;
                this.f19010c = i;
                if (i >= length) {
                    this.f19008a = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.f19008a = true;
        }

        public void remove() {
            int i = this.f19011d;
            if (i == -1 && this.f19009b.e) {
                this.f19009b.e = false;
            } else if (i >= 0) {
                int[] iArr = this.f19009b.f19003b;
                V[] vArr = this.f19009b.f19004c;
                int i2 = this.f19009b.g;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int a2 = this.f19009b.a(i5);
                    i = i;
                    if (((i4 - a2) & i2) > ((i - a2) & i2)) {
                        iArr[i] = i5;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f19011d) {
                    this.f19010c--;
                }
            } else {
                throw new IllegalStateException("next must be called before remove.");
            }
            this.f19011d = -2;
            this.f19009b.f19002a--;
        }
    }

    public j() {
        this(51, 0.8f);
    }

    public j(int i) {
        this(i, 0.8f);
    }

    public j(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.h = f;
        int a2 = m.a(i, f);
        this.i = (int) (a2 * f);
        int i2 = a2 - 1;
        this.g = i2;
        this.f = Long.numberOfLeadingZeros(i2);
        this.f19003b = new int[a2];
        this.f19004c = (V[]) new Object[a2];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j(com.esotericsoftware.kryo.c.j<? extends V> r7) {
        /*
            r6 = this;
            r0 = r7
            int[] r0 = r0.f19003b
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.h
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            int[] r0 = r0.f19003b
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            int[] r2 = r2.f19003b
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            V[] r0 = r0.f19004c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            V[] r2 = r2.f19004c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f19002a
            r0.f19002a = r1
            r0 = r6
            r1 = r7
            V r1 = r1.f19005d
            r0.f19005d = r1
            r0 = r6
            r1 = r7
            boolean r1 = r1.e
            r0.e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.j.<init>(com.esotericsoftware.kryo.c.j):void");
    }

    private void b(int i, V v) {
        int[] iArr = this.f19003b;
        int a2 = a(i);
        while (iArr[a2] != 0) {
            a2 = (a2 + 1) & this.g;
        }
        iArr[a2] = i;
        this.f19004c[a2] = v;
    }

    private int c(int i) {
        int[] iArr = this.f19003b;
        int a2 = a(i);
        while (true) {
            int i2 = iArr[a2];
            if (i2 == 0) {
                return -(a2 + 1);
            }
            if (i2 == i) {
                return a2;
            }
            a2 = (a2 + 1) & this.g;
        }
    }

    private void d(int i) {
        int length = this.f19003b.length;
        this.i = (int) (i * this.h);
        int i2 = i - 1;
        this.g = i2;
        this.f = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f19003b;
        V[] vArr = this.f19004c;
        this.f19003b = new int[i];
        this.f19004c = (V[]) new Object[i];
        if (this.f19002a > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    b(i4, vArr[i3]);
                }
            }
        }
    }

    protected final int a(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f);
    }

    public final V a(int i, V v) {
        if (i == 0) {
            V v2 = this.f19005d;
            this.f19005d = v;
            if (!this.e) {
                this.e = true;
                this.f19002a++;
            }
            return v2;
        }
        int c2 = c(i);
        if (c2 >= 0) {
            V[] vArr = this.f19004c;
            V v3 = vArr[c2];
            vArr[c2] = v;
            return v3;
        }
        int i2 = -(c2 + 1);
        int[] iArr = this.f19003b;
        iArr[i2] = i;
        this.f19004c[i2] = v;
        int i3 = this.f19002a + 1;
        this.f19002a = i3;
        if (i3 < this.i) {
            return null;
        }
        d(iArr.length << 1);
        return null;
    }

    public final V b(int i) {
        if (i != 0) {
            int c2 = c(i);
            if (c2 >= 0) {
                return this.f19004c[c2];
            }
            return null;
        } else if (this.e) {
            return this.f19005d;
        } else {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (jVar.f19002a != this.f19002a) {
            return false;
        }
        boolean z = jVar.e;
        boolean z2 = this.e;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = jVar.f19005d;
            if (v == null) {
                if (this.f19005d != null) {
                    return false;
                }
            } else if (!v.equals(this.f19005d)) {
                return false;
            }
        }
        int[] iArr = this.f19003b;
        V[] vArr = this.f19004c;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    V v3 = (V) m.f19026a;
                    if (i2 != 0) {
                        int c2 = jVar.c(i2);
                        if (c2 >= 0) {
                            v3 = jVar.f19004c[c2];
                        }
                    } else if (jVar.e) {
                        v3 = jVar.f19005d;
                    }
                    if (v3 != null) {
                        return false;
                    }
                } else if (!v2.equals(jVar.b(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f19002a;
        int i2 = i;
        if (this.e) {
            V v = this.f19005d;
            i2 = i;
            if (v != null) {
                i2 = i + v.hashCode();
            }
        }
        int[] iArr = this.f19003b;
        V[] vArr = this.f19004c;
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            i2 = i2;
            if (i4 != 0) {
                int i5 = i2 + (i4 * 31);
                V v2 = vArr[i3];
                i2 = i5;
                if (v2 != null) {
                    i2 = i5 + v2.hashCode();
                }
            }
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final Iterator<b<V>> iterator() {
        return new a(this);
    }

    public final String toString() {
        if (this.f19002a == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        int[] iArr = this.f19003b;
        V[] vArr = this.f19004c;
        int length = iArr.length;
        int i = length;
        if (this.e) {
            sb.append("0=");
            sb.append(this.f19005d);
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
            if (length > 0) {
                int i5 = iArr[i4];
                length = i4;
                if (i5 != 0) {
                    sb.append(", ");
                    sb.append(i5);
                    sb.append('=');
                    sb.append(vArr[i4]);
                    length = i4;
                }
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }
}
