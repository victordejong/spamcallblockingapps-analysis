package p321d.p322a;

import java.util.Arrays;
/* renamed from: d.a.c */
/* loaded from: classes2-dex2jar.jar:d/a/c.class */
final class C9466c<K, V> {

    /* renamed from: a */
    private final AbstractC9470d<K, V> f40334a;

    /* renamed from: d.a.c$a */
    /* loaded from: classes2-dex2jar.jar:d/a/c$a.class */
    static final class C9467a<K, V> implements AbstractC9470d<K, V> {

        /* renamed from: a */
        private final K[] f40335a;

        /* renamed from: b */
        private final V[] f40336b;

        C9467a(K k, V v, K k2, V v2) {
            this(new Object[]{k, k2}, new Object[]{v, v2});
        }

        private C9467a(K[] kArr, V[] vArr) {
            this.f40335a = kArr;
            this.f40336b = vArr;
        }

        /* renamed from: c */
        private int m526c(K k) {
            int i = 0;
            while (true) {
                K[] kArr = this.f40335a;
                if (i < kArr.length) {
                    if (kArr[i] == k) {
                        return i;
                    }
                    i++;
                } else {
                    return -1;
                }
            }
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: a */
        public V mo521a(K k, int i, int i2) {
            int i3 = 0;
            while (true) {
                K[] kArr = this.f40335a;
                if (i3 < kArr.length) {
                    if (kArr[i3] == k) {
                        return this.f40336b[i3];
                    }
                    i3++;
                } else {
                    return null;
                }
            }
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: b */
        public AbstractC9470d<K, V> mo520b(K k, V v, int i, int i2) {
            int hashCode = this.f40335a[0].hashCode();
            if (hashCode != i) {
                return C9468b.m525c(new C9469c(k, v), i, this, hashCode, i2);
            }
            int m526c = m526c(k);
            if (m526c != -1) {
                K[] kArr = this.f40335a;
                Object[] copyOf = Arrays.copyOf(kArr, kArr.length);
                Object[] copyOf2 = Arrays.copyOf(this.f40336b, this.f40335a.length);
                copyOf[m526c] = k;
                copyOf2[m526c] = v;
                return new C9467a(copyOf, copyOf2);
            }
            K[] kArr2 = this.f40335a;
            Object[] copyOf3 = Arrays.copyOf(kArr2, kArr2.length + 1);
            Object[] copyOf4 = Arrays.copyOf(this.f40336b, this.f40335a.length + 1);
            K[] kArr3 = this.f40335a;
            copyOf3[kArr3.length] = k;
            copyOf4[kArr3.length] = v;
            return new C9467a(copyOf3, copyOf4);
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        public int size() {
            return this.f40336b.length;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CollisionLeaf(");
            for (int i = 0; i < this.f40336b.length; i++) {
                sb.append("(key=");
                sb.append(this.f40335a[i]);
                sb.append(" value=");
                sb.append(this.f40336b[i]);
                sb.append(") ");
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* renamed from: d.a.c$b */
    /* loaded from: classes2-dex2jar.jar:d/a/c$b.class */
    static final class C9468b<K, V> implements AbstractC9470d<K, V> {

        /* renamed from: a */
        final int f40337a;

        /* renamed from: b */
        final AbstractC9470d<K, V>[] f40338b;

        /* renamed from: c */
        private final int f40339c;

        private C9468b(int i, AbstractC9470d<K, V>[] abstractC9470dArr, int i2) {
            this.f40337a = i;
            this.f40338b = abstractC9470dArr;
            this.f40339c = i2;
        }

        /* renamed from: c */
        static <K, V> AbstractC9470d<K, V> m525c(AbstractC9470d<K, V> abstractC9470d, int i, AbstractC9470d<K, V> abstractC9470d2, int i2, int i3) {
            int m523e = m523e(i, i3);
            int m523e2 = m523e(i2, i3);
            if (m523e == m523e2) {
                AbstractC9470d m525c = m525c(abstractC9470d, i, abstractC9470d2, i2, i3 + 5);
                return new C9468b(m523e, new AbstractC9470d[]{m525c}, m525c.size());
            }
            AbstractC9470d<K, V> abstractC9470d3 = abstractC9470d;
            AbstractC9470d<K, V> abstractC9470d4 = abstractC9470d2;
            if (m522f(i, i3) > m522f(i2, i3)) {
                abstractC9470d4 = abstractC9470d;
                abstractC9470d3 = abstractC9470d2;
            }
            return new C9468b(m523e | m523e2, new AbstractC9470d[]{abstractC9470d3, abstractC9470d4}, abstractC9470d3.size() + abstractC9470d4.size());
        }

        /* renamed from: d */
        private int m524d(int i) {
            return Integer.bitCount((i - 1) & this.f40337a);
        }

        /* renamed from: e */
        private static int m523e(int i, int i2) {
            return 1 << m522f(i, i2);
        }

        /* renamed from: f */
        private static int m522f(int i, int i2) {
            return (i >>> i2) & 31;
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: a */
        public V mo521a(K k, int i, int i2) {
            int m523e = m523e(i, i2);
            if ((this.f40337a & m523e) == 0) {
                return null;
            }
            return this.f40338b[m524d(m523e)].mo521a(k, i, i2 + 5);
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: b */
        public AbstractC9470d<K, V> mo520b(K k, V v, int i, int i2) {
            int m523e = m523e(i, i2);
            int m524d = m524d(m523e);
            int i3 = this.f40337a;
            if ((i3 & m523e) == 0) {
                AbstractC9470d<K, V>[] abstractC9470dArr = this.f40338b;
                AbstractC9470d[] abstractC9470dArr2 = new AbstractC9470d[abstractC9470dArr.length + 1];
                System.arraycopy(abstractC9470dArr, 0, abstractC9470dArr2, 0, m524d);
                abstractC9470dArr2[m524d] = new C9469c(k, v);
                AbstractC9470d<K, V>[] abstractC9470dArr3 = this.f40338b;
                System.arraycopy(abstractC9470dArr3, m524d, abstractC9470dArr2, m524d + 1, abstractC9470dArr3.length - m524d);
                return new C9468b(i3 | m523e, abstractC9470dArr2, size() + 1);
            }
            AbstractC9470d<K, V>[] abstractC9470dArr4 = this.f40338b;
            AbstractC9470d[] abstractC9470dArr5 = (AbstractC9470d[]) Arrays.copyOf(abstractC9470dArr4, abstractC9470dArr4.length);
            abstractC9470dArr5[m524d] = this.f40338b[m524d].mo520b(k, v, i, i2 + 5);
            int size = size();
            int size2 = abstractC9470dArr5[m524d].size();
            return new C9468b(this.f40337a, abstractC9470dArr5, (size + size2) - this.f40338b[m524d].size());
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        public int size() {
            return this.f40339c;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CompressedIndex(");
            sb.append(String.format("bitmap=%s ", Integer.toBinaryString(this.f40337a)));
            for (AbstractC9470d<K, V> abstractC9470d : this.f40338b) {
                sb.append(abstractC9470d);
                sb.append(" ");
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d.a.c$c */
    /* loaded from: classes2-dex2jar.jar:d/a/c$c.class */
    public static final class C9469c<K, V> implements AbstractC9470d<K, V> {

        /* renamed from: a */
        private final K f40340a;

        /* renamed from: b */
        private final V f40341b;

        public C9469c(K k, V v) {
            this.f40340a = k;
            this.f40341b = v;
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: a */
        public V mo521a(K k, int i, int i2) {
            if (this.f40340a == k) {
                return this.f40341b;
            }
            return null;
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        /* renamed from: b */
        public AbstractC9470d<K, V> mo520b(K k, V v, int i, int i2) {
            int hashCode = this.f40340a.hashCode();
            return hashCode != i ? C9468b.m525c(new C9469c(k, v), i, this, hashCode, i2) : this.f40340a == k ? new C9469c(k, v) : new C9467a(this.f40340a, this.f40341b, k, v);
        }

        @Override // p321d.p322a.C9466c.AbstractC9470d
        public int size() {
            return 1;
        }

        public String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f40340a, this.f40341b);
        }
    }

    /* renamed from: d.a.c$d */
    /* loaded from: classes2-dex2jar.jar:d/a/c$d.class */
    public interface AbstractC9470d<K, V> {
        /* renamed from: a */
        V mo521a(K k, int i, int i2);

        /* renamed from: b */
        AbstractC9470d<K, V> mo520b(K k, V v, int i, int i2);

        int size();
    }

    public C9466c() {
        this(null);
    }

    private C9466c(AbstractC9470d<K, V> abstractC9470d) {
        this.f40334a = abstractC9470d;
    }

    /* renamed from: a */
    public V m528a(K k) {
        AbstractC9470d<K, V> abstractC9470d = this.f40334a;
        if (abstractC9470d == null) {
            return null;
        }
        return abstractC9470d.mo521a(k, k.hashCode(), 0);
    }

    /* renamed from: b */
    public C9466c<K, V> m527b(K k, V v) {
        AbstractC9470d<K, V> abstractC9470d = this.f40334a;
        return abstractC9470d == null ? new C9466c<>(new C9469c(k, v)) : new C9466c<>(abstractC9470d.mo520b(k, v, k.hashCode(), 0));
    }
}
