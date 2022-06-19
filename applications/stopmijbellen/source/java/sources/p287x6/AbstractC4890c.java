package p287x6;

import android.support.p012v4.media.AbstractC0081a;
import com.google.protobuf.C1879f0;
import com.google.protobuf.C1895k;
import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import p007a6.C0033h;
import p124i4.C3102d;
/* renamed from: x6.c */
/* loaded from: classes-dex2jar.jar:x6/c.class */
public abstract class AbstractC4890c implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final AbstractC4890c f14961b = new C4896f(C1895k.f7093b);

    /* renamed from: c */
    public static final AbstractC4894d f14962c;

    /* renamed from: a */
    public int f14963a = 0;

    /* renamed from: x6.c$a */
    /* loaded from: classes-dex2jar.jar:x6/c$a.class */
    public static abstract class AbstractC4891a implements Iterator {
        @Override // java.util.Iterator
        public Object next() {
            return Byte.valueOf(((C4883b) this).m317a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: x6.c$b */
    /* loaded from: classes-dex2jar.jar:x6/c$b.class */
    public static final class C4892b implements AbstractC4894d {
        public C4892b(C4883b c4883b) {
        }
    }

    /* renamed from: x6.c$c */
    /* loaded from: classes-dex2jar.jar:x6/c$c.class */
    public static final class C4893c extends C4896f {

        /* renamed from: e */
        public final int f14964e;

        /* renamed from: f */
        public final int f14965f;

        public C4893c(byte[] bArr, int i, int i2) {
            super(bArr);
            AbstractC4890c.m279b(i, i + i2, bArr.length);
            this.f14964e = i;
            this.f14965f = i2;
        }

        @Override // p287x6.AbstractC4890c.C4896f, p287x6.AbstractC4890c
        /* renamed from: a */
        public byte mo278a(int i) {
            int i2 = this.f14965f;
            if (((i2 - (i + 1)) | i) < 0) {
                if (i < 0) {
                    throw new ArrayIndexOutOfBoundsException(C0033h.m8886k("Index < 0: ", i));
                }
                throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
            }
            return this.f14966d[this.f14964e + i];
        }

        @Override // p287x6.AbstractC4890c.C4896f, p287x6.AbstractC4890c
        /* renamed from: c */
        public byte mo277c(int i) {
            return this.f14966d[this.f14964e + i];
        }

        @Override // p287x6.AbstractC4890c.C4896f
        /* renamed from: i */
        public int mo271i() {
            return this.f14964e;
        }

        @Override // p287x6.AbstractC4890c.C4896f, p287x6.AbstractC4890c
        public int size() {
            return this.f14965f;
        }
    }

    /* renamed from: x6.c$d */
    /* loaded from: classes-dex2jar.jar:x6/c$d.class */
    public interface AbstractC4894d {
    }

    /* renamed from: x6.c$e */
    /* loaded from: classes-dex2jar.jar:x6/c$e.class */
    public static abstract class AbstractC4895e extends AbstractC4890c {
        @Override // p287x6.AbstractC4890c, java.lang.Iterable
        public Iterator<Byte> iterator() {
            return new C4883b(this);
        }
    }

    /* renamed from: x6.c$f */
    /* loaded from: classes-dex2jar.jar:x6/c$f.class */
    public static class C4896f extends AbstractC4895e {

        /* renamed from: d */
        public final byte[] f14966d;

        public C4896f(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.f14966d = bArr;
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: a */
        public byte mo278a(int i) {
            return this.f14966d[i];
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: c */
        public byte mo277c(int i) {
            return this.f14966d[i];
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: d */
        public final boolean mo276d() {
            int mo271i = mo271i();
            boolean z = false;
            if (C1879f0.f7072a.mo4317b(0, this.f14966d, mo271i, size() + mo271i) == 0) {
                z = true;
            }
            return z;
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: e */
        public final int mo275e(int i, int i2, int i3) {
            byte[] bArr = this.f14966d;
            int mo271i = mo271i() + i2;
            Charset charset = C1895k.f7092a;
            for (int i4 = mo271i; i4 < mo271i + i3; i4++) {
                i = (i * 31) + bArr[i4];
            }
            return i;
        }

        @Override // p287x6.AbstractC4890c
        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC4890c) || size() != ((AbstractC4890c) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof C4896f)) {
                return obj.equals(this);
            }
            C4896f c4896f = (C4896f) obj;
            int i = this.f14963a;
            int i2 = c4896f.f14963a;
            if (i != 0 && i2 != 0 && i != i2) {
                return false;
            }
            int size = size();
            if (size > c4896f.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            } else if (0 + size > c4896f.size()) {
                throw new IllegalArgumentException("Ran off end of other: 0, " + size + ", " + c4896f.size());
            } else {
                byte[] bArr = this.f14966d;
                byte[] bArr2 = c4896f.f14966d;
                int mo271i = mo271i();
                int mo271i2 = mo271i();
                int mo271i3 = c4896f.mo271i() + 0;
                while (true) {
                    z = true;
                    if (mo271i2 >= mo271i + size) {
                        break;
                    } else if (bArr[mo271i2] != bArr2[mo271i3]) {
                        z = false;
                        break;
                    } else {
                        mo271i2++;
                        mo271i3++;
                    }
                }
                return z;
            }
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: f */
        public final AbstractC4890c mo274f(int i, int i2) {
            int m279b = AbstractC4890c.m279b(i, i2, size());
            return m279b == 0 ? AbstractC4890c.f14961b : new C4893c(this.f14966d, mo271i() + i, m279b);
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: g */
        public final String mo273g(Charset charset) {
            return new String(this.f14966d, mo271i(), size(), charset);
        }

        @Override // p287x6.AbstractC4890c
        /* renamed from: h */
        public final void mo272h(AbstractC0081a abstractC0081a) throws IOException {
            ((CodedOutputStream.C1858b) abstractC0081a).m4410M0(this.f14966d, mo271i(), size());
        }

        /* renamed from: i */
        public int mo271i() {
            return 0;
        }

        @Override // p287x6.AbstractC4890c
        public int size() {
            return this.f14966d.length;
        }
    }

    /* renamed from: x6.c$g */
    /* loaded from: classes-dex2jar.jar:x6/c$g.class */
    public static final class C4897g implements AbstractC4894d {
        public C4897g(C4883b c4883b) {
        }
    }

    static {
        f14962c = C4879a.m318a() ? new C4897g(null) : new C4892b(null);
    }

    /* renamed from: b */
    public static int m279b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
            } else if (i2 < i) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
            }
        }
        return i4;
    }

    /* renamed from: a */
    public abstract byte mo278a(int i);

    /* renamed from: c */
    public abstract byte mo277c(int i);

    /* renamed from: d */
    public abstract boolean mo276d();

    /* renamed from: e */
    public abstract int mo275e(int i, int i2, int i3);

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    public abstract AbstractC4890c mo274f(int i, int i2);

    /* renamed from: g */
    public abstract String mo273g(Charset charset);

    /* renamed from: h */
    public abstract void mo272h(AbstractC0081a abstractC0081a) throws IOException;

    public final int hashCode() {
        int i = this.f14963a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int mo275e = mo275e(size, 0, size);
            i2 = mo275e;
            if (mo275e == 0) {
                i2 = 1;
            }
            this.f14963a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new C4883b(this);
    }

    public abstract int size();

    public final String toString() {
        String str;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            str = C3102d.m2622q(this);
        } else {
            str = C3102d.m2622q(mo274f(0, 47)) + "...";
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, Integer.valueOf(size), str);
    }
}
