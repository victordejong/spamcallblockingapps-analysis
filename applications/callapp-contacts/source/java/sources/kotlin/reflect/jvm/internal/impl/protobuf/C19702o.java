package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.o */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/o.class */
public class C19702o extends AbstractC19673d {

    /* renamed from: a */
    private int f65869a = 0;

    /* renamed from: d */
    protected final byte[] f65870d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.o$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/o$a.class */
    public final class C19704a implements AbstractC19673d.AbstractC19674a {

        /* renamed from: b */
        private int f65872b;

        /* renamed from: c */
        private final int f65873c;

        private C19704a() {
            C19702o.this = r4;
            this.f65872b = 0;
            this.f65873c = r4.mo1649a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d.AbstractC19674a
        /* renamed from: a */
        public final byte mo1627a() {
            try {
                byte[] bArr = C19702o.this.f65870d;
                int i = this.f65872b;
                this.f65872b = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new NoSuchElementException(e.getMessage());
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65872b < this.f65873c;
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

    public C19702o(byte[] bArr) {
        this.f65870d = bArr;
    }

    /* renamed from: a */
    private static int m1665a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public byte mo1666a(int i) {
        return this.f65870d[i];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public int mo1649a() {
        return this.f65870d.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final int mo1648a(int i, int i2, int i3) {
        byte b;
        int i4;
        int mo1663b = mo1663b() + i2;
        byte[] bArr = this.f65870d;
        int i5 = i3 + mo1663b;
        int i6 = mo1663b;
        if (i != 0) {
            if (mo1663b >= i5) {
                return i;
            }
            byte b2 = (byte) i;
            if (b2 < -32) {
                if (b2 < -62) {
                    return -1;
                }
                i4 = mo1663b + 1;
                if (bArr[mo1663b] > -65) {
                    return -1;
                }
            } else if (b2 < -16) {
                byte b3 = (byte) ((i >> 8) ^ (-1));
                int i7 = mo1663b;
                byte b4 = b3;
                if (b3 == 0) {
                    i7 = mo1663b + 1;
                    b4 = bArr[mo1663b];
                    if (i7 >= i5) {
                        return C19727w.m1597a(b2, b4);
                    }
                }
                if (b4 > -65) {
                    return -1;
                }
                if (b2 == -32 && b4 < -96) {
                    return -1;
                }
                if (b2 == -19 && b4 >= -96) {
                    return -1;
                }
                i4 = i7 + 1;
                if (bArr[i7] > -65) {
                    return -1;
                }
            } else {
                byte b5 = (byte) ((i >> 8) ^ (-1));
                if (b5 == 0) {
                    int i8 = mo1663b + 1;
                    b5 = bArr[mo1663b];
                    if (i8 >= i5) {
                        return C19727w.m1597a(b2, b5);
                    }
                    mo1663b = i8;
                    b = 0;
                } else {
                    b = (byte) (i >> 16);
                }
                int i9 = mo1663b;
                byte b6 = b;
                if (b == 0) {
                    i9 = mo1663b + 1;
                    b6 = bArr[mo1663b];
                    if (i9 >= i5) {
                        return C19727w.m1596a(b2, b5, b6);
                    }
                }
                if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                    return -1;
                }
                i4 = i9 + 1;
                if (bArr[i9] > -65) {
                    return -1;
                }
            }
            i6 = i4;
        }
        return C19727w.m1594b(bArr, i6, i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public void mo1645a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f65870d, i, bArr, i2, i3);
    }

    /* renamed from: a */
    public final boolean m1664a(C19702o c19702o, int i, int i2) {
        if (i2 > c19702o.mo1649a()) {
            int mo1649a = mo1649a();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(mo1649a);
            throw new IllegalArgumentException(sb.toString());
        } else if (i + i2 > c19702o.mo1649a()) {
            int mo1649a2 = c19702o.mo1649a();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(mo1649a2);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            byte[] bArr = this.f65870d;
            byte[] bArr2 = c19702o.f65870d;
            int mo1663b = mo1663b();
            int mo1663b2 = mo1663b();
            int mo1663b3 = c19702o.mo1663b() + i;
            while (mo1663b2 < mo1663b + i2) {
                if (bArr[mo1663b2] != bArr2[mo1663b3]) {
                    return false;
                }
                mo1663b2++;
                mo1663b3++;
            }
            return true;
        }
    }

    /* renamed from: b */
    public int mo1663b() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final int mo1643b(int i, int i2, int i3) {
        return m1665a(i, this.f65870d, mo1663b() + i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final String mo1641b(String str) throws UnsupportedEncodingException {
        return new String(this.f65870d, mo1663b(), mo1649a(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: b */
    public final void mo1642b(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.f65870d, mo1663b() + i, i2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: c */
    public AbstractC19673d.AbstractC19674a iterator() {
        return new C19704a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC19673d) || mo1649a() != ((AbstractC19673d) obj).mo1649a()) {
            return false;
        }
        if (mo1649a() == 0) {
            return true;
        }
        if (obj instanceof C19702o) {
            return m1664a((C19702o) obj, 0, mo1649a());
        }
        if (obj instanceof C19710t) {
            return obj.equals(this);
        }
        String valueOf = String.valueOf(String.valueOf(obj.getClass()));
        StringBuilder sb = new StringBuilder(valueOf.length() + 49);
        sb.append("Has a new type of ByteString been created? Found ");
        sb.append(valueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: f */
    public final boolean mo1637f() {
        int mo1663b = mo1663b();
        return C19727w.m1595a(this.f65870d, mo1663b, mo1649a() + mo1663b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: g */
    public final C19676e mo1636g() {
        return C19676e.m1754a(this);
    }

    public int hashCode() {
        int i = this.f65869a;
        int i2 = i;
        if (i == 0) {
            int mo1649a = mo1649a();
            int mo1643b = mo1643b(mo1649a, 0, mo1649a);
            i2 = mo1643b;
            if (mo1643b == 0) {
                i2 = 1;
            }
            this.f65869a = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: i */
    public final int mo1635i() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: j */
    public final boolean mo1634j() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: k */
    public final int mo1633k() {
        return this.f65869a;
    }
}
