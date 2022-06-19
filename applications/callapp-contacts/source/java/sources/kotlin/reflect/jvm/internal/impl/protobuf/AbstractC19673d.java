package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d.class */
public abstract class AbstractC19673d implements Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC19673d f65805b = new C19702o(new byte[0]);

    /* renamed from: c */
    static final /* synthetic */ boolean f65806c = true;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d$a.class */
    public interface AbstractC19674a extends Iterator<Byte> {
        /* renamed from: a */
        byte mo1627a();
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.d$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d$b.class */
    public static final class C19675b extends OutputStream {

        /* renamed from: a */
        private static final byte[] f65807a = new byte[0];

        /* renamed from: b */
        private final int f65808b;

        /* renamed from: c */
        private final ArrayList<AbstractC19673d> f65809c;

        /* renamed from: d */
        private int f65810d;

        /* renamed from: e */
        private byte[] f65811e;

        /* renamed from: f */
        private int f65812f;

        C19675b(int i) {
            if (i >= 0) {
                this.f65808b = i;
                this.f65809c = new ArrayList<>();
                this.f65811e = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        /* renamed from: a */
        private void m1761a(int i) {
            this.f65809c.add(new C19702o(this.f65811e));
            int length = this.f65810d + this.f65811e.length;
            this.f65810d = length;
            this.f65811e = new byte[Math.max(this.f65808b, Math.max(i, length >>> 1))];
            this.f65812f = 0;
        }

        /* renamed from: b */
        private int m1760b() {
            int i;
            int i2;
            synchronized (this) {
                i = this.f65810d;
                i2 = this.f65812f;
            }
            return i + i2;
        }

        /* renamed from: a */
        public final AbstractC19673d m1762a() {
            AbstractC19673d m1772a;
            synchronized (this) {
                int i = this.f65812f;
                byte[] bArr = this.f65811e;
                if (i >= bArr.length) {
                    this.f65809c.add(new C19702o(this.f65811e));
                    this.f65811e = f65807a;
                } else if (i > 0) {
                    byte[] bArr2 = new byte[i];
                    System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                    this.f65809c.add(new C19702o(bArr2));
                }
                this.f65810d += this.f65812f;
                this.f65812f = 0;
                m1772a = AbstractC19673d.m1772a(this.f65809c);
            }
            return m1772a;
        }

        public final String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m1760b()));
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            synchronized (this) {
                if (this.f65812f == this.f65811e.length) {
                    m1761a(1);
                }
                byte[] bArr = this.f65811e;
                int i2 = this.f65812f;
                this.f65812f = i2 + 1;
                bArr[i2] = (byte) i;
            }
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            synchronized (this) {
                byte[] bArr2 = this.f65811e;
                int length = bArr2.length;
                int i3 = this.f65812f;
                if (i2 <= length - i3) {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this.f65812f += i2;
                    return;
                }
                int length2 = bArr2.length - i3;
                System.arraycopy(bArr, i, bArr2, i3, length2);
                int i4 = i2 - length2;
                m1761a(i4);
                System.arraycopy(bArr, i + length2, this.f65811e, 0, i4);
                this.f65812f = i4;
            }
        }
    }

    /* renamed from: a */
    public static AbstractC19673d m1772a(Iterable<AbstractC19673d> iterable) {
        ArrayList arrayList;
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<AbstractC19673d> it2 = iterable.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList2.add(it2.next());
            }
        } else {
            arrayList = (Collection) iterable;
        }
        return arrayList.isEmpty() ? f65805b : m1770a(arrayList.iterator(), arrayList.size());
    }

    /* renamed from: a */
    public static AbstractC19673d m1771a(String str) {
        try {
            return new C19702o(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    /* renamed from: a */
    private static AbstractC19673d m1770a(Iterator<AbstractC19673d> it2, int i) {
        AbstractC19673d abstractC19673d;
        if (f65806c || i > 0) {
            if (i == 1) {
                abstractC19673d = it2.next();
            } else {
                int i2 = i >>> 1;
                abstractC19673d = m1770a(it2, i2).m1769a(m1770a(it2, i - i2));
            }
            return abstractC19673d;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public static AbstractC19673d m1768a(byte[] bArr) {
        return m1767a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC19673d m1767a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C19702o(bArr2);
    }

    /* renamed from: h */
    public static C19675b m1763h() {
        return new C19675b(128);
    }

    /* renamed from: a */
    public abstract int mo1649a();

    /* renamed from: a */
    public abstract int mo1648a(int i, int i2, int i3);

    /* renamed from: a */
    public final AbstractC19673d m1769a(AbstractC19673d abstractC19673d) {
        int mo1649a = mo1649a();
        int mo1649a2 = abstractC19673d.mo1649a();
        if (mo1649a + mo1649a2 < 2147483647L) {
            return C19710t.m1647a(this, abstractC19673d);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(mo1649a);
        sb.append("+");
        sb.append(mo1649a2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public final void m1773a(OutputStream outputStream, int i, int i2) throws IOException {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(23);
            sb2.append("Length < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            int i3 = i + i2;
            if (i3 <= mo1649a()) {
                if (i2 <= 0) {
                    return;
                }
                mo1642b(outputStream, i, i2);
                return;
            }
            StringBuilder sb3 = new StringBuilder(39);
            sb3.append("Source end offset exceeded: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    /* renamed from: a */
    public abstract void mo1645a(byte[] bArr, int i, int i2, int i3);

    /* renamed from: b */
    public abstract int mo1643b(int i, int i2, int i3);

    /* renamed from: b */
    public abstract String mo1641b(String str) throws UnsupportedEncodingException;

    /* renamed from: b */
    public abstract void mo1642b(OutputStream outputStream, int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m1766b(byte[] bArr, int i, int i2, int i3) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else if (i3 < 0) {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        } else {
            int i4 = i + i3;
            if (i4 > mo1649a()) {
                StringBuilder sb4 = new StringBuilder(34);
                sb4.append("Source end offset < 0: ");
                sb4.append(i4);
                throw new IndexOutOfBoundsException(sb4.toString());
            }
            int i5 = i2 + i3;
            if (i5 <= bArr.length) {
                if (i3 <= 0) {
                    return;
                }
                mo1645a(bArr, i, i2, i3);
                return;
            }
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Target end offset < 0: ");
            sb5.append(i5);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    /* renamed from: c */
    public abstract AbstractC19674a iterator();

    /* renamed from: d */
    public final byte[] m1765d() {
        int mo1649a = mo1649a();
        if (mo1649a == 0) {
            return C19692j.f65858a;
        }
        byte[] bArr = new byte[mo1649a];
        mo1645a(bArr, 0, 0, mo1649a);
        return bArr;
    }

    /* renamed from: e */
    public final String m1764e() {
        try {
            return mo1641b("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    /* renamed from: f */
    public abstract boolean mo1637f();

    /* renamed from: g */
    public abstract C19676e mo1636g();

    /* renamed from: i */
    public abstract int mo1635i();

    /* renamed from: j */
    public abstract boolean mo1634j();

    /* renamed from: k */
    public abstract int mo1633k();

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo1649a()));
    }
}
