package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Stack;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t.class */
public final class C19710t extends AbstractC19673d {

    /* renamed from: a */
    private static final int[] f65874a;

    /* renamed from: d */
    private final int f65875d;

    /* renamed from: e */
    private final AbstractC19673d f65876e;

    /* renamed from: f */
    private final AbstractC19673d f65877f;

    /* renamed from: g */
    private final int f65878g;

    /* renamed from: h */
    private final int f65879h;

    /* renamed from: i */
    private int f65880i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.t$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$a.class */
    public static final class C19712a {

        /* renamed from: a */
        final Stack<AbstractC19673d> f65881a;

        private C19712a() {
            this.f65881a = new Stack<>();
        }

        /* renamed from: a */
        private static int m1632a(int i) {
            int binarySearch = Arrays.binarySearch(C19710t.f65874a, i);
            int i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-(binarySearch + 1)) - 1;
            }
            return i2;
        }

        /* renamed from: a */
        final void m1631a(AbstractC19673d abstractC19673d) {
            AbstractC19673d abstractC19673d2;
            C19710t c19710t;
            while (!abstractC19673d.mo1634j()) {
                if (!(abstractC19673d instanceof C19710t)) {
                    String valueOf = String.valueOf(String.valueOf(abstractC19673d.getClass()));
                    StringBuilder sb = new StringBuilder(valueOf.length() + 49);
                    sb.append("Has a new type of ByteString been created? Found ");
                    sb.append(valueOf);
                    throw new IllegalArgumentException(sb.toString());
                }
                C19710t c19710t2 = (C19710t) abstractC19673d;
                m1631a(c19710t2.f65876e);
                abstractC19673d = c19710t2.f65877f;
            }
            int m1632a = m1632a(abstractC19673d.mo1649a());
            int i = C19710t.f65874a[m1632a + 1];
            if (this.f65881a.isEmpty() || this.f65881a.peek().mo1649a() >= i) {
                this.f65881a.push(abstractC19673d);
                return;
            }
            int i2 = C19710t.f65874a[m1632a];
            AbstractC19673d pop = this.f65881a.pop();
            while (true) {
                abstractC19673d2 = pop;
                if (this.f65881a.isEmpty() || this.f65881a.peek().mo1649a() >= i2) {
                    break;
                }
                pop = new C19710t(this.f65881a.pop(), abstractC19673d2);
            }
            C19710t c19710t3 = new C19710t(abstractC19673d2, abstractC19673d);
            while (true) {
                c19710t = c19710t3;
                if (this.f65881a.isEmpty()) {
                    break;
                }
                if (this.f65881a.peek().mo1649a() >= C19710t.f65874a[m1632a(c19710t.mo1649a()) + 1]) {
                    break;
                }
                c19710t3 = new C19710t(this.f65881a.pop(), c19710t);
            }
            this.f65881a.push(c19710t);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.t$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$b.class */
    public static final class C19713b implements Iterator<C19702o> {

        /* renamed from: a */
        private final Stack<C19710t> f65882a;

        /* renamed from: b */
        private C19702o f65883b;

        private C19713b(AbstractC19673d abstractC19673d) {
            this.f65882a = new Stack<>();
            this.f65883b = m1629a(abstractC19673d);
        }

        /* renamed from: a */
        private C19702o m1629a(AbstractC19673d abstractC19673d) {
            while (abstractC19673d instanceof C19710t) {
                C19710t c19710t = (C19710t) abstractC19673d;
                this.f65882a.push(c19710t);
                abstractC19673d = c19710t.f65876e;
            }
            return (C19702o) abstractC19673d;
        }

        /* renamed from: b */
        private C19702o m1628b() {
            while (!this.f65882a.isEmpty()) {
                C19702o m1629a = m1629a(this.f65882a.pop().f65877f);
                if (!(m1629a.mo1649a() == 0)) {
                    return m1629a;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final C19702o next() {
            C19702o c19702o = this.f65883b;
            if (c19702o != null) {
                this.f65883b = m1628b();
                return c19702o;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65883b != null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.t$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$c.class */
    public final class C19714c implements AbstractC19673d.AbstractC19674a {

        /* renamed from: a */
        int f65884a;

        /* renamed from: c */
        private final C19713b f65886c;

        /* renamed from: d */
        private AbstractC19673d.AbstractC19674a f65887d;

        private C19714c() {
            C19710t.this = r6;
            C19713b c19713b = new C19713b(r6);
            this.f65886c = c19713b;
            this.f65887d = c19713b.next().iterator();
            this.f65884a = r6.mo1649a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d.AbstractC19674a
        /* renamed from: a */
        public final byte mo1627a() {
            if (!this.f65887d.hasNext()) {
                this.f65887d = this.f65886c.next().iterator();
            }
            this.f65884a--;
            return this.f65887d.mo1627a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65884a > 0;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Byte next() {
            return Byte.valueOf(mo1627a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.t$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$d.class */
    final class C19715d extends InputStream {

        /* renamed from: b */
        private C19713b f65889b;

        /* renamed from: c */
        private C19702o f65890c;

        /* renamed from: d */
        private int f65891d;

        /* renamed from: e */
        private int f65892e;

        /* renamed from: f */
        private int f65893f;

        /* renamed from: g */
        private int f65894g;

        public C19715d() {
            C19710t.this = r4;
            m1626a();
        }

        /* renamed from: a */
        private int m1625a(byte[] bArr, int i, int i2) {
            int i3;
            int i4 = i2;
            while (true) {
                i3 = i4;
                int i5 = i;
                if (i3 <= 0) {
                    break;
                }
                m1624b();
                if (this.f65890c != null) {
                    int min = Math.min(this.f65891d - this.f65892e, i3);
                    i = i5;
                    if (bArr != null) {
                        this.f65890c.m1766b(bArr, this.f65892e, i5, min);
                        i = i5 + min;
                    }
                    this.f65892e += min;
                    i4 = i3 - min;
                } else if (i3 == i2) {
                    return -1;
                }
            }
            return i2 - i3;
        }

        /* renamed from: a */
        private void m1626a() {
            C19713b c19713b = new C19713b(C19710t.this);
            this.f65889b = c19713b;
            C19702o next = c19713b.next();
            this.f65890c = next;
            this.f65891d = next.mo1649a();
            this.f65892e = 0;
            this.f65893f = 0;
        }

        /* renamed from: b */
        private void m1624b() {
            if (this.f65890c != null) {
                int i = this.f65892e;
                int i2 = this.f65891d;
                if (i != i2) {
                    return;
                }
                this.f65893f += i2;
                this.f65892e = 0;
                if (!this.f65889b.hasNext()) {
                    this.f65890c = null;
                    this.f65891d = 0;
                    return;
                }
                C19702o next = this.f65889b.next();
                this.f65890c = next;
                this.f65891d = next.mo1649a();
            }
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            return C19710t.this.mo1649a() - (this.f65893f + this.f65892e);
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            this.f65894g = this.f65893f + this.f65892e;
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            m1624b();
            C19702o c19702o = this.f65890c;
            if (c19702o == null) {
                return -1;
            }
            int i = this.f65892e;
            this.f65892e = i + 1;
            return c19702o.mo1666a(i) & 255;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            return m1625a(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public final void reset() {
            synchronized (this) {
                m1626a();
                m1625a(null, 0, this.f65894g);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.io.InputStream
        public final long skip(long j) {
            if (j >= 0) {
                char c = j;
                if (j > 2147483647L) {
                    c = 65535;
                }
                return m1625a(null, 0, c);
            }
            throw new IndexOutOfBoundsException();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (i <= 0) {
                break;
            }
            arrayList.add(Integer.valueOf(i));
            i2 = i;
            i = i3 + i;
        }
        arrayList.add(Integer.MAX_VALUE);
        f65874a = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = f65874a;
            if (i4 < iArr.length) {
                iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
                i4++;
            } else {
                return;
            }
        }
    }

    private C19710t(AbstractC19673d abstractC19673d, AbstractC19673d abstractC19673d2) {
        this.f65880i = 0;
        this.f65876e = abstractC19673d;
        this.f65877f = abstractC19673d2;
        int mo1649a = abstractC19673d.mo1649a();
        this.f65878g = mo1649a;
        this.f65875d = mo1649a + abstractC19673d2.mo1649a();
        this.f65879h = Math.max(abstractC19673d.mo1635i(), abstractC19673d2.mo1635i()) + 1;
    }

    /* renamed from: a */
    public static AbstractC19673d m1647a(AbstractC19673d abstractC19673d, AbstractC19673d abstractC19673d2) {
        C19710t c19710t = abstractC19673d instanceof C19710t ? (C19710t) abstractC19673d : null;
        if (abstractC19673d2.mo1649a() != 0) {
            C19710t c19710t2 = abstractC19673d2;
            if (abstractC19673d.mo1649a() != 0) {
                int mo1649a = abstractC19673d.mo1649a() + abstractC19673d2.mo1649a();
                if (mo1649a < 128) {
                    abstractC19673d = m1640b(abstractC19673d, abstractC19673d2);
                } else if (c19710t != null && c19710t.f65877f.mo1649a() + abstractC19673d2.mo1649a() < 128) {
                    c19710t2 = new C19710t(c19710t.f65876e, m1640b(c19710t.f65877f, abstractC19673d2));
                } else if (c19710t == null || c19710t.f65876e.mo1635i() <= c19710t.f65877f.mo1635i() || c19710t.f65879h <= abstractC19673d2.mo1635i()) {
                    if (mo1649a < f65874a[Math.max(abstractC19673d.mo1635i(), abstractC19673d2.mo1635i()) + 1]) {
                        C19712a c19712a = new C19712a();
                        c19712a.m1631a(abstractC19673d);
                        c19712a.m1631a(abstractC19673d2);
                        AbstractC19673d pop = c19712a.f65881a.pop();
                        while (true) {
                            AbstractC19673d abstractC19673d3 = pop;
                            abstractC19673d = abstractC19673d3;
                            if (c19712a.f65881a.isEmpty()) {
                                break;
                            }
                            pop = new C19710t(c19712a.f65881a.pop(), abstractC19673d3);
                        }
                    } else {
                        abstractC19673d = new C19710t(abstractC19673d, abstractC19673d2);
                    }
                } else {
                    c19710t2 = new C19710t(c19710t.f65876e, new C19710t(c19710t.f65877f, abstractC19673d2));
                }
            }
            abstractC19673d = c19710t2;
        }
        return abstractC19673d;
    }

    /* renamed from: b */
    private static C19702o m1640b(AbstractC19673d abstractC19673d, AbstractC19673d abstractC19673d2) {
        int mo1649a = abstractC19673d.mo1649a();
        int mo1649a2 = abstractC19673d2.mo1649a();
        byte[] bArr = new byte[mo1649a + mo1649a2];
        abstractC19673d.m1766b(bArr, 0, 0, mo1649a);
        abstractC19673d2.m1766b(bArr, 0, mo1649a, mo1649a2);
        return new C19702o(bArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final int mo1649a() {
        return this.f65875d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final int mo1648a(int i, int i2, int i3) {
        int i4 = this.f65878g;
        if (i2 + i3 <= i4) {
            return this.f65876e.mo1648a(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f65877f.mo1648a(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f65877f.mo1648a(this.f65876e.mo1648a(i, i2, i5), 0, i3 - i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final void mo1645a(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.f65878g;
        if (i + i3 <= i4) {
            this.f65876e.mo1645a(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.f65877f.mo1645a(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.f65876e.mo1645a(bArr, i, i2, i5);
            this.f65877f.mo1645a(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final int mo1643b(int i, int i2, int i3) {
        int i4 = this.f65878g;
        if (i2 + i3 <= i4) {
            return this.f65876e.mo1643b(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f65877f.mo1643b(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f65877f.mo1643b(this.f65876e.mo1643b(i, i2, i5), 0, i3 - i5);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final String mo1641b(String str) throws UnsupportedEncodingException {
        return new String(m1765d(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final void mo1642b(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = this.f65878g;
        if (i + i2 <= i3) {
            this.f65876e.mo1642b(outputStream, i, i2);
        } else if (i >= i3) {
            this.f65877f.mo1642b(outputStream, i - i3, i2);
        } else {
            int i4 = i3 - i;
            this.f65876e.mo1642b(outputStream, i, i4);
            this.f65877f.mo1642b(outputStream, 0, i2 - i4);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: c */
    public final AbstractC19673d.AbstractC19674a iterator() {
        return new C19714c();
    }

    public final boolean equals(Object obj) {
        int mo1633k;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC19673d)) {
            return false;
        }
        AbstractC19673d abstractC19673d = (AbstractC19673d) obj;
        if (this.f65875d != abstractC19673d.mo1649a()) {
            return false;
        }
        if (this.f65875d == 0) {
            return true;
        }
        if (this.f65880i != 0 && (mo1633k = abstractC19673d.mo1633k()) != 0 && this.f65880i != mo1633k) {
            return false;
        }
        C19713b c19713b = new C19713b(this);
        C19702o next = c19713b.next();
        C19713b c19713b2 = new C19713b(abstractC19673d);
        C19702o next2 = c19713b2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int mo1649a = next.mo1649a() - i;
            int mo1649a2 = next2.mo1649a() - i2;
            int min = Math.min(mo1649a, mo1649a2);
            if (!(i == 0 ? next.m1664a(next2, i2, min) : next2.m1664a(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.f65875d;
            if (i3 >= i4) {
                if (i3 != i4) {
                    throw new IllegalStateException();
                }
                return true;
            }
            if (min == mo1649a) {
                next = c19713b.next();
                i = 0;
            } else {
                i += min;
            }
            if (min == mo1649a2) {
                next2 = c19713b2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: f */
    public final boolean mo1637f() {
        int mo1648a = this.f65876e.mo1648a(0, 0, this.f65878g);
        AbstractC19673d abstractC19673d = this.f65877f;
        return abstractC19673d.mo1648a(mo1648a, 0, abstractC19673d.mo1649a()) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: g */
    public final C19676e mo1636g() {
        return C19676e.m1755a(new C19715d());
    }

    public final int hashCode() {
        int i = this.f65880i;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f65875d;
            int mo1643b = mo1643b(i3, 0, i3);
            i2 = mo1643b;
            if (mo1643b == 0) {
                i2 = 1;
            }
            this.f65880i = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: i */
    public final int mo1635i() {
        return this.f65879h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: j */
    public final boolean mo1634j() {
        return this.f65875d >= f65874a[this.f65879h];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: k */
    public final int mo1633k() {
        return this.f65880i;
    }
}
