package io.a;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:io/a/c.class */
public final class c<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final d<K, V> f36165a;

    /* loaded from: classes5-dex2jar.jar:io/a/c$a.class */
    static final class a<K, V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f36166a = true;

        /* renamed from: b  reason: collision with root package name */
        private final K[] f36167b;

        /* renamed from: c  reason: collision with root package name */
        private final V[] f36168c;

        a(K k, V v, K k2, V v2) {
            this(new Object[]{k, k2}, new Object[]{v, v2});
            boolean z = f36166a;
            if (!z && k == k2) {
                throw new AssertionError();
            } else if (!z && k.hashCode() != k2.hashCode()) {
                throw new AssertionError();
            }
        }

        private a(K[] kArr, V[] vArr) {
            this.f36167b = kArr;
            this.f36168c = vArr;
        }

        @Override // io.a.c.d
        public final int a() {
            return this.f36168c.length;
        }

        @Override // io.a.c.d
        public final d<K, V> a(K k, V v, int i, int i2) {
            K[] kArr;
            int i3 = 0;
            int hashCode = this.f36167b[0].hashCode();
            if (hashCode != i) {
                return b.a(new C0586c(k, v), i, this, hashCode, i2);
            }
            while (true) {
                kArr = this.f36167b;
                if (i3 >= kArr.length) {
                    i3 = -1;
                    break;
                } else if (kArr[i3] == k) {
                    break;
                } else {
                    i3++;
                }
            }
            if (i3 != -1) {
                Object[] copyOf = Arrays.copyOf(kArr, kArr.length);
                Object[] copyOf2 = Arrays.copyOf(this.f36168c, this.f36167b.length);
                copyOf[i3] = k;
                copyOf2[i3] = v;
                return new a(copyOf, copyOf2);
            }
            Object[] copyOf3 = Arrays.copyOf(kArr, kArr.length + 1);
            Object[] copyOf4 = Arrays.copyOf(this.f36168c, this.f36167b.length + 1);
            K[] kArr2 = this.f36167b;
            copyOf3[kArr2.length] = k;
            copyOf4[kArr2.length] = v;
            return new a(copyOf3, copyOf4);
        }

        @Override // io.a.c.d
        public final V a(K k, int i, int i2) {
            int i3 = 0;
            while (true) {
                K[] kArr = this.f36167b;
                if (i3 >= kArr.length) {
                    return null;
                }
                if (kArr[i3] == k) {
                    return this.f36168c[i3];
                }
                i3++;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CollisionLeaf(");
            for (int i = 0; i < this.f36168c.length; i++) {
                sb.append("(key=");
                sb.append(this.f36167b[i]);
                sb.append(" value=");
                sb.append(this.f36168c[i]);
                sb.append(") ");
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/a/c$b.class */
    static final class b<K, V> implements d<K, V> {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f36169c = true;

        /* renamed from: a  reason: collision with root package name */
        final int f36170a;

        /* renamed from: b  reason: collision with root package name */
        final d<K, V>[] f36171b;

        /* renamed from: d  reason: collision with root package name */
        private final int f36172d;

        private b(int i, d<K, V>[] dVarArr, int i2) {
            this.f36170a = i;
            this.f36171b = dVarArr;
            this.f36172d = i2;
        }

        private int a(int i) {
            return Integer.bitCount((i - 1) & this.f36170a);
        }

        private static int a(int i, int i2) {
            return 1 << ((i >>> i2) & 31);
        }

        static <K, V> d<K, V> a(d<K, V> dVar, int i, d<K, V> dVar2, int i2, int i3) {
            if (f36169c || i != i2) {
                int a2 = a(i, i3);
                int a3 = a(i2, i3);
                if (a2 == a3) {
                    d a4 = a(dVar, i, dVar2, i2, i3 + 5);
                    return new b(a2, new d[]{a4}, a4.a());
                }
                d<K, V> dVar3 = dVar;
                d<K, V> dVar4 = dVar2;
                if (((i >>> i3) & 31) > ((i2 >>> i3) & 31)) {
                    dVar4 = dVar;
                    dVar3 = dVar2;
                }
                return new b(a2 | a3, new d[]{dVar3, dVar4}, dVar3.a() + dVar4.a());
            }
            throw new AssertionError();
        }

        @Override // io.a.c.d
        public final int a() {
            return this.f36172d;
        }

        @Override // io.a.c.d
        public final d<K, V> a(K k, V v, int i, int i2) {
            int a2 = a(i, i2);
            int a3 = a(a2);
            int i3 = this.f36170a;
            if ((i3 & a2) == 0) {
                d<K, V>[] dVarArr = this.f36171b;
                d[] dVarArr2 = new d[dVarArr.length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, a3);
                dVarArr2[a3] = new C0586c(k, v);
                d<K, V>[] dVarArr3 = this.f36171b;
                System.arraycopy(dVarArr3, a3, dVarArr2, a3 + 1, dVarArr3.length - a3);
                return new b(i3 | a2, dVarArr2, this.f36172d + 1);
            }
            d<K, V>[] dVarArr4 = this.f36171b;
            d[] dVarArr5 = (d[]) Arrays.copyOf(dVarArr4, dVarArr4.length);
            dVarArr5[a3] = this.f36171b[a3].a(k, v, i, i2 + 5);
            int i4 = this.f36172d;
            int a4 = dVarArr5[a3].a();
            return new b(this.f36170a, dVarArr5, (i4 + a4) - this.f36171b[a3].a());
        }

        @Override // io.a.c.d
        public final V a(K k, int i, int i2) {
            int a2 = a(i, i2);
            if ((this.f36170a & a2) == 0) {
                return null;
            }
            return this.f36171b[a(a2)].a(k, i, i2 + 5);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CompressedIndex(");
            sb.append(String.format("bitmap=%s ", Integer.toBinaryString(this.f36170a)));
            for (d<K, V> dVar : this.f36171b) {
                sb.append(dVar);
                sb.append(StringUtils.SPACE);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* renamed from: io.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/a/c$c.class */
    public static final class C0586c<K, V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f36173a;

        /* renamed from: b  reason: collision with root package name */
        private final V f36174b;

        public C0586c(K k, V v) {
            this.f36173a = k;
            this.f36174b = v;
        }

        @Override // io.a.c.d
        public final int a() {
            return 1;
        }

        @Override // io.a.c.d
        public final d<K, V> a(K k, V v, int i, int i2) {
            int hashCode = this.f36173a.hashCode();
            if (hashCode != i) {
                return b.a(new C0586c(k, v), i, this, hashCode, i2);
            }
            K k2 = this.f36173a;
            return k2 == k ? new C0586c(k, v) : new a(k2, this.f36174b, k, v);
        }

        @Override // io.a.c.d
        public final V a(K k, int i, int i2) {
            if (this.f36173a == k) {
                return this.f36174b;
            }
            return null;
        }

        public final String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f36173a, this.f36174b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/a/c$d.class */
    public interface d<K, V> {
        int a();

        d<K, V> a(K k, V v, int i, int i2);

        V a(K k, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
        this(null);
    }

    public c(d<K, V> dVar) {
        this.f36165a = dVar;
    }
}
