package p081h.p203i.p401g;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
/* renamed from: h.i.g.g */
/* loaded from: classes2-dex2jar.jar:h/i/g/g.class */
public abstract class AbstractC10253g implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final AbstractC10253g f23087b = new C10263j(C10516z.f23905c);

    /* renamed from: c */
    public static final AbstractC10259f f23088c;

    /* renamed from: a */
    public int f23089a = 0;

    /* renamed from: h.i.g.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$a.class */
    public class C10254a extends AbstractC10256c {

        /* renamed from: a */
        public int f23090a = 0;

        /* renamed from: b */
        public final int f23091b;

        public C10254a() {
            this.f23091b = AbstractC10253g.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f23090a < this.f23091b;
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.AbstractC10260g
        public byte nextByte() {
            int i = this.f23090a;
            if (i < this.f23091b) {
                this.f23090a = i + 1;
                return AbstractC10253g.this.mo12949h(i);
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: h.i.g.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$b.class */
    public static final class C10255b implements Comparator<AbstractC10253g> {
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Iterator, h.i.g.g$g] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Iterator, h.i.g.g$g] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(p081h.p203i.p401g.AbstractC10253g r4, p081h.p203i.p401g.AbstractC10253g r5) {
            /*
                r3 = this;
                r0 = r4
                h.i.g.g$g r0 = r0.iterator2()
                r6 = r0
                r0 = r5
                h.i.g.g$g r0 = r0.iterator2()
                r7 = r0
            L_0x000b:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x003e
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x003e
                r0 = r6
                byte r0 = r0.nextByte()
                int r0 = p081h.p203i.p401g.AbstractC10253g.m12976a(r0)
                r1 = r7
                byte r1 = r1.nextByte()
                int r1 = p081h.p203i.p401g.AbstractC10253g.m12976a(r1)
                int r0 = java.lang.Integer.compare(r0, r1)
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x000b
                r0 = r8
                return r0
            L_0x003e:
                r0 = r4
                int r0 = r0.size()
                r1 = r5
                int r1 = r1.size()
                int r0 = java.lang.Integer.compare(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.AbstractC10253g.C10255b.compare(h.i.g.g, h.i.g.g):int");
        }
    }

    /* renamed from: h.i.g.g$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$c.class */
    public static abstract class AbstractC10256c implements AbstractC10260g {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: h.i.g.g$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$d.class */
    public static final class C10257d implements AbstractC10259f {
        public C10257d() {
        }

        public /* synthetic */ C10257d(C10254a aVar) {
            this();
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.AbstractC10259f
        /* renamed from: a */
        public byte[] mo12947a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* renamed from: h.i.g.g$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$e.class */
    public static final class C10258e extends C10263j {

        /* renamed from: e */
        public final int f23093e;

        /* renamed from: f */
        public final int f23094f;

        public C10258e(byte[] bArr, int i, int i2) {
            super(bArr);
            AbstractC10253g.m12969b(i, i + i2, bArr.length);
            this.f23093e = i;
            this.f23094f = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.C10263j, p081h.p203i.p401g.AbstractC10253g
        /* renamed from: a */
        public void mo12954a(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f23097d, mo12948u() + i, bArr, i2, i3);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.C10263j, p081h.p203i.p401g.AbstractC10253g
        /* renamed from: g */
        public byte mo12950g(int i) {
            AbstractC10253g.m12970b(i, size());
            return this.f23097d[this.f23093e + i];
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.C10263j, p081h.p203i.p401g.AbstractC10253g
        /* renamed from: h */
        public byte mo12949h(int i) {
            return this.f23097d[this.f23093e + i];
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.C10263j, p081h.p203i.p401g.AbstractC10253g
        public int size() {
            return this.f23094f;
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.C10263j
        /* renamed from: u */
        public int mo12948u() {
            return this.f23093e;
        }

        public Object writeReplace() {
            return AbstractC10253g.m12968b(m12964r());
        }
    }

    /* renamed from: h.i.g.g$f */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$f.class */
    public interface AbstractC10259f {
        /* renamed from: a */
        byte[] mo12947a(byte[] bArr, int i, int i2);
    }

    /* renamed from: h.i.g.g$g */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$g.class */
    public interface AbstractC10260g extends Iterator<Byte> {
        byte nextByte();
    }

    /* renamed from: h.i.g.g$h */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$h.class */
    public static final class C10261h {

        /* renamed from: a */
        public final AbstractC10274i f23095a;

        /* renamed from: b */
        public final byte[] f23096b;

        public C10261h(int i) {
            this.f23096b = new byte[i];
            this.f23095a = AbstractC10274i.m12855c(this.f23096b);
        }

        public /* synthetic */ C10261h(int i, C10254a aVar) {
            this(i);
        }

        /* renamed from: a */
        public AbstractC10253g m12960a() {
            this.f23095a.m12884a();
            return new C10263j(this.f23096b);
        }

        /* renamed from: b */
        public AbstractC10274i m12959b() {
            return this.f23095a;
        }
    }

    /* renamed from: h.i.g.g$i */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$i.class */
    public static abstract class AbstractC10262i extends AbstractC10253g {
        @Override // p081h.p203i.p401g.AbstractC10253g, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return AbstractC10253g.super.iterator2();
        }
    }

    /* renamed from: h.i.g.g$j */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$j.class */
    public static class C10263j extends AbstractC10262i {

        /* renamed from: d */
        public final byte[] f23097d;

        public C10263j(byte[] bArr) {
            if (bArr != null) {
                this.f23097d = bArr;
                return;
            }
            throw new NullPointerException();
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: a */
        public final int mo12957a(int i, int i2, int i3) {
            return C10516z.m11548a(i, this.f23097d, mo12948u() + i2, i3);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: a */
        public final AbstractC10253g mo12958a(int i, int i2) {
            int b = AbstractC10253g.m12969b(i, i2, size());
            return b == 0 ? AbstractC10253g.f23087b : new C10258e(this.f23097d, mo12948u() + i, b);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: a */
        public final void mo12956a(AbstractC10245f fVar) throws IOException {
            fVar.mo12813a(this.f23097d, mo12948u(), size());
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: a */
        public void mo12954a(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f23097d, i, bArr, i2, i3);
        }

        /* renamed from: a */
        public final boolean m12955a(AbstractC10253g gVar, int i, int i2) {
            if (i2 <= gVar.size()) {
                int i3 = i + i2;
                if (i3 > gVar.size()) {
                    throw new IllegalArgumentException("Ran off end of other: " + i + UserProfile.CARD_CATE_SEPARATOR + i2 + UserProfile.CARD_CATE_SEPARATOR + gVar.size());
                } else if (!(gVar instanceof C10263j)) {
                    return gVar.mo12958a(i, i3).equals(mo12958a(0, i2));
                } else {
                    C10263j jVar = (C10263j) gVar;
                    byte[] bArr = this.f23097d;
                    byte[] bArr2 = jVar.f23097d;
                    int u = mo12948u();
                    int u2 = mo12948u();
                    int u3 = jVar.mo12948u() + i;
                    while (u2 < u + i2) {
                        if (bArr[u2] != bArr2[u3]) {
                            return false;
                        }
                        u2++;
                        u3++;
                    }
                    return true;
                }
            } else {
                throw new IllegalArgumentException("Length too large: " + i2 + size());
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: b */
        public final String mo12952b(Charset charset) {
            return new String(this.f23097d, mo12948u(), size(), charset);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: b */
        public final boolean mo12953b() {
            int u = mo12948u();
            return C10289j1.m12749d(this.f23097d, u, size() + u);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: c */
        public final AbstractC10267h mo12951c() {
            return AbstractC10267h.m12935a(this.f23097d, mo12948u(), size(), true);
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC10253g) || size() != ((AbstractC10253g) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof C10263j)) {
                return obj.equals(this);
            }
            C10263j jVar = (C10263j) obj;
            int q = m12965q();
            int q2 = jVar.m12965q();
            if (q == 0 || q2 == 0 || q == q2) {
                return m12955a(jVar, 0, size());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: g */
        public byte mo12950g(int i) {
            return this.f23097d[i];
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        /* renamed from: h */
        public byte mo12949h(int i) {
            return this.f23097d[i];
        }

        @Override // p081h.p203i.p401g.AbstractC10253g
        public int size() {
            return this.f23097d.length;
        }

        /* renamed from: u */
        public int mo12948u() {
            return 0;
        }
    }

    /* renamed from: h.i.g.g$k */
    /* loaded from: classes2-dex2jar.jar:h/i/g/g$k.class */
    public static final class C10264k implements AbstractC10259f {
        public C10264k() {
        }

        public /* synthetic */ C10264k(C10254a aVar) {
            this();
        }

        @Override // p081h.p203i.p401g.AbstractC10253g.AbstractC10259f
        /* renamed from: a */
        public byte[] mo12947a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    static {
        f23088c = C10242e.m13029b() ? new C10264k(null) : new C10257d(null);
        new C10255b();
    }

    /* renamed from: a */
    public static AbstractC10253g m12975a(String str) {
        return new C10263j(str.getBytes(C10516z.f23903a));
    }

    /* renamed from: a */
    public static AbstractC10253g m12973a(byte[] bArr) {
        return m12972a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC10253g m12972a(byte[] bArr, int i, int i2) {
        m12969b(i, i + i2, bArr.length);
        return new C10263j(f23088c.mo12947a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m12971b(byte b) {
        return b & 255;
    }

    /* renamed from: b */
    public static int m12969b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        } else if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + UserProfile.CARD_CATE_SEPARATOR + i2);
        } else {
            throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
        }
    }

    /* renamed from: b */
    public static AbstractC10253g m12968b(byte[] bArr) {
        return new C10263j(bArr);
    }

    /* renamed from: b */
    public static AbstractC10253g m12967b(byte[] bArr, int i, int i2) {
        return new C10258e(bArr, i, i2);
    }

    /* renamed from: b */
    public static void m12970b(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + UserProfile.CARD_CATE_SEPARATOR + i2);
    }

    /* renamed from: i */
    public static C10261h m12966i(int i) {
        return new C10261h(i, null);
    }

    /* renamed from: a */
    public abstract int mo12957a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC10253g mo12958a(int i, int i2);

    /* renamed from: a */
    public final String m12974a(Charset charset) {
        return size() == 0 ? "" : mo12952b(charset);
    }

    /* renamed from: a */
    public abstract void mo12956a(AbstractC10245f fVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12954a(byte[] bArr, int i, int i2, int i3);

    /* renamed from: b */
    public abstract String mo12952b(Charset charset);

    /* renamed from: b */
    public abstract boolean mo12953b();

    /* renamed from: c */
    public abstract AbstractC10267h mo12951c();

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract byte mo12950g(int i);

    /* renamed from: h */
    public abstract byte mo12949h(int i);

    public final int hashCode() {
        int i = this.f23089a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int a = mo12957a(size, 0, size);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f23089a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C10254a();
    }

    /* renamed from: q */
    public final int m12965q() {
        return this.f23089a;
    }

    /* renamed from: r */
    public final byte[] m12964r() {
        int size = size();
        if (size == 0) {
            return C10516z.f23905c;
        }
        byte[] bArr = new byte[size];
        mo12954a(bArr, 0, 0, size);
        return bArr;
    }

    /* renamed from: s */
    public final String m12963s() {
        return m12974a(C10516z.f23903a);
    }

    public abstract int size();

    /* renamed from: t */
    public final String m12962t() {
        String str;
        if (size() <= 50) {
            str = C10224a1.m13067a(this);
        } else {
            str = C10224a1.m13067a(mo12958a(0, 47)) + "...";
        }
        return str;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), m12962t());
    }
}
