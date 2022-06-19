package io.p500a;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* renamed from: io.a.c */
/* loaded from: classes5-dex2jar.jar:io/a/c.class */
public final class C17744c<K, V> {

    /* renamed from: a */
    public final AbstractC17748d<K, V> f62616a;

    /* renamed from: io.a.c$a */
    /* loaded from: classes5-dex2jar.jar:io/a/c$a.class */
    static final class C17745a<K, V> implements AbstractC17748d<K, V> {

        /* renamed from: a */
        static final /* synthetic */ boolean f62617a = true;

        /* renamed from: b */
        private final K[] f62618b;

        /* renamed from: c */
        private final V[] f62619c;

        C17745a(K k, V v, K k2, V v2) {
            this(new Object[]{k, k2}, new Object[]{v, v2});
            boolean z = f62617a;
            if (z || k != k2) {
                if (!z && k.hashCode() != k2.hashCode()) {
                    throw new AssertionError();
                }
                return;
            }
            throw new AssertionError();
        }

        private C17745a(K[] kArr, V[] vArr) {
            this.f62618b = kArr;
            this.f62619c = vArr;
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final int mo4751a() {
            return this.f62619c.length;
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final AbstractC17748d<K, V> mo4749a(K k, V v, int i, int i2) {
            K[] kArr;
            int i3 = 0;
            int hashCode = this.f62618b[0].hashCode();
            if (hashCode != i) {
                return C17746b.m4752a(new C17747c(k, v), i, this, hashCode, i2);
            }
            while (true) {
                kArr = this.f62618b;
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
                Object[] copyOf2 = Arrays.copyOf(this.f62619c, this.f62618b.length);
                copyOf[i3] = k;
                copyOf2[i3] = v;
                return new C17745a(copyOf, copyOf2);
            }
            Object[] copyOf3 = Arrays.copyOf(kArr, kArr.length + 1);
            Object[] copyOf4 = Arrays.copyOf(this.f62619c, this.f62618b.length + 1);
            K[] kArr2 = this.f62618b;
            copyOf3[kArr2.length] = k;
            copyOf4[kArr2.length] = v;
            return new C17745a(copyOf3, copyOf4);
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final V mo4750a(K k, int i, int i2) {
            int i3 = 0;
            while (true) {
                K[] kArr = this.f62618b;
                if (i3 < kArr.length) {
                    if (kArr[i3] == k) {
                        return this.f62619c[i3];
                    }
                    i3++;
                } else {
                    return null;
                }
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CollisionLeaf(");
            for (int i = 0; i < this.f62619c.length; i++) {
                sb.append("(key=");
                sb.append(this.f62618b[i]);
                sb.append(" value=");
                sb.append(this.f62619c[i]);
                sb.append(") ");
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* renamed from: io.a.c$b */
    /* loaded from: classes5-dex2jar.jar:io/a/c$b.class */
    static final class C17746b<K, V> implements AbstractC17748d<K, V> {

        /* renamed from: c */
        static final /* synthetic */ boolean f62620c = true;

        /* renamed from: a */
        final int f62621a;

        /* renamed from: b */
        final AbstractC17748d<K, V>[] f62622b;

        /* renamed from: d */
        private final int f62623d;

        private C17746b(int i, AbstractC17748d<K, V>[] abstractC17748dArr, int i2) {
            this.f62621a = i;
            this.f62622b = abstractC17748dArr;
            this.f62623d = i2;
        }

        /* renamed from: a */
        private int m4754a(int i) {
            return Integer.bitCount((i - 1) & this.f62621a);
        }

        /* renamed from: a */
        private static int m4753a(int i, int i2) {
            return 1 << ((i >>> i2) & 31);
        }

        /* renamed from: a */
        static <K, V> AbstractC17748d<K, V> m4752a(AbstractC17748d<K, V> abstractC17748d, int i, AbstractC17748d<K, V> abstractC17748d2, int i2, int i3) {
            if (f62620c || i != i2) {
                int m4753a = m4753a(i, i3);
                int m4753a2 = m4753a(i2, i3);
                if (m4753a == m4753a2) {
                    AbstractC17748d m4752a = m4752a(abstractC17748d, i, abstractC17748d2, i2, i3 + 5);
                    return new C17746b(m4753a, new AbstractC17748d[]{m4752a}, m4752a.mo4751a());
                }
                AbstractC17748d<K, V> abstractC17748d3 = abstractC17748d;
                AbstractC17748d<K, V> abstractC17748d4 = abstractC17748d2;
                if (((i >>> i3) & 31) > ((i2 >>> i3) & 31)) {
                    abstractC17748d4 = abstractC17748d;
                    abstractC17748d3 = abstractC17748d2;
                }
                return new C17746b(m4753a | m4753a2, new AbstractC17748d[]{abstractC17748d3, abstractC17748d4}, abstractC17748d3.mo4751a() + abstractC17748d4.mo4751a());
            }
            throw new AssertionError();
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final int mo4751a() {
            return this.f62623d;
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final AbstractC17748d<K, V> mo4749a(K k, V v, int i, int i2) {
            int m4753a = m4753a(i, i2);
            int m4754a = m4754a(m4753a);
            int i3 = this.f62621a;
            if ((i3 & m4753a) == 0) {
                AbstractC17748d<K, V>[] abstractC17748dArr = this.f62622b;
                AbstractC17748d[] abstractC17748dArr2 = new AbstractC17748d[abstractC17748dArr.length + 1];
                System.arraycopy(abstractC17748dArr, 0, abstractC17748dArr2, 0, m4754a);
                abstractC17748dArr2[m4754a] = new C17747c(k, v);
                AbstractC17748d<K, V>[] abstractC17748dArr3 = this.f62622b;
                System.arraycopy(abstractC17748dArr3, m4754a, abstractC17748dArr2, m4754a + 1, abstractC17748dArr3.length - m4754a);
                return new C17746b(i3 | m4753a, abstractC17748dArr2, this.f62623d + 1);
            }
            AbstractC17748d<K, V>[] abstractC17748dArr4 = this.f62622b;
            AbstractC17748d[] abstractC17748dArr5 = (AbstractC17748d[]) Arrays.copyOf(abstractC17748dArr4, abstractC17748dArr4.length);
            abstractC17748dArr5[m4754a] = this.f62622b[m4754a].mo4749a(k, v, i, i2 + 5);
            int i4 = this.f62623d;
            int mo4751a = abstractC17748dArr5[m4754a].mo4751a();
            return new C17746b(this.f62621a, abstractC17748dArr5, (i4 + mo4751a) - this.f62622b[m4754a].mo4751a());
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final V mo4750a(K k, int i, int i2) {
            int m4753a = m4753a(i, i2);
            if ((this.f62621a & m4753a) == 0) {
                return null;
            }
            return this.f62622b[m4754a(m4753a)].mo4750a(k, i, i2 + 5);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CompressedIndex(");
            sb.append(String.format("bitmap=%s ", Integer.toBinaryString(this.f62621a)));
            for (AbstractC17748d<K, V> abstractC17748d : this.f62622b) {
                sb.append(abstractC17748d);
                sb.append(StringUtils.SPACE);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* renamed from: io.a.c$c */
    /* loaded from: classes5-dex2jar.jar:io/a/c$c.class */
    public static final class C17747c<K, V> implements AbstractC17748d<K, V> {

        /* renamed from: a */
        private final K f62624a;

        /* renamed from: b */
        private final V f62625b;

        public C17747c(K k, V v) {
            this.f62624a = k;
            this.f62625b = v;
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final int mo4751a() {
            return 1;
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final AbstractC17748d<K, V> mo4749a(K k, V v, int i, int i2) {
            int hashCode = this.f62624a.hashCode();
            if (hashCode != i) {
                return C17746b.m4752a(new C17747c(k, v), i, this, hashCode, i2);
            }
            K k2 = this.f62624a;
            return k2 == k ? new C17747c(k, v) : new C17745a(k2, this.f62625b, k, v);
        }

        @Override // io.p500a.C17744c.AbstractC17748d
        /* renamed from: a */
        public final V mo4750a(K k, int i, int i2) {
            if (this.f62624a == k) {
                return this.f62625b;
            }
            return null;
        }

        public final String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f62624a, this.f62625b);
        }
    }

    /* renamed from: io.a.c$d */
    /* loaded from: classes5-dex2jar.jar:io/a/c$d.class */
    public interface AbstractC17748d<K, V> {
        /* renamed from: a */
        int mo4751a();

        /* renamed from: a */
        AbstractC17748d<K, V> mo4749a(K k, V v, int i, int i2);

        /* renamed from: a */
        V mo4750a(K k, int i, int i2);
    }

    public C17744c() {
        this(null);
    }

    public C17744c(AbstractC17748d<K, V> abstractC17748d) {
        this.f62616a = abstractC17748d;
    }
}
