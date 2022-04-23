package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/o.class */
public class o extends d {

    /* renamed from: a  reason: collision with root package name */
    private int f38165a = 0;

    /* renamed from: d  reason: collision with root package name */
    protected final byte[] f38166d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/o$a.class */
    public final class a implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private int f38168b;

        /* renamed from: c  reason: collision with root package name */
        private final int f38169c;

        private a() {
            this.f38168b = 0;
            this.f38169c = o.this.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public final byte a() {
            try {
                byte[] bArr = o.this.f38166d;
                int i = this.f38168b;
                this.f38168b = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new NoSuchElementException(e.getMessage());
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38168b < this.f38169c;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(byte[] bArr) {
        this.f38166d = bArr;
    }

    private static int a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    public byte a(int i) {
        return this.f38166d[i];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public int a() {
        return this.f38166d.length;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int a(int i, int i2, int i3) {
        int b2 = b() + i2;
        byte[] bArr = this.f38166d;
        int i4 = i3 + b2;
        int i5 = b2;
        if (i != 0) {
            if (b2 >= i4) {
                return i;
            }
            byte b3 = (byte) i;
            if (b3 < -32) {
                if (b3 < -62) {
                    return -1;
                }
                i5 = b2 + 1;
                if (bArr[b2] > -65) {
                    return -1;
                }
            } else if (b3 < -16) {
                byte b4 = (byte) ((i >> 8) ^ (-1));
                int i6 = b2;
                byte b5 = b4;
                if (b4 == 0) {
                    i6 = b2 + 1;
                    b5 = bArr[b2];
                    if (i6 >= i4) {
                        return w.a(b3, b5);
                    }
                }
                if (b5 > -65) {
                    return -1;
                }
                if (b3 == -32 && b5 < -96) {
                    return -1;
                }
                if (b3 == -19 && b5 >= -96) {
                    return -1;
                }
                i5 = i6 + 1;
                if (bArr[i6] > -65) {
                    return -1;
                }
            } else {
                byte b6 = (byte) ((i >> 8) ^ (-1));
                byte b7 = 0;
                if (b6 == 0) {
                    int i7 = b2 + 1;
                    b6 = bArr[b2];
                    if (i7 >= i4) {
                        return w.a(b3, b6);
                    }
                    b2 = i7;
                } else {
                    b7 = (byte) (i >> 16);
                }
                int i8 = b2;
                byte b8 = b7;
                if (b7 == 0) {
                    i8 = b2 + 1;
                    b8 = bArr[b2];
                    if (i8 >= i4) {
                        return w.a(b3, b6, b8);
                    }
                }
                if (b6 > -65 || (((b3 << 28) + (b6 + 112)) >> 30) != 0 || b8 > -65) {
                    return -1;
                }
                i5 = i8 + 1;
                if (bArr[i8] > -65) {
                    return -1;
                }
            }
        }
        return w.b(bArr, i5, i4);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f38166d, i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(o oVar, int i, int i2) {
        if (i2 > oVar.a()) {
            int a2 = a();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(a2);
            throw new IllegalArgumentException(sb.toString());
        } else if (i + i2 <= oVar.a()) {
            byte[] bArr = this.f38166d;
            byte[] bArr2 = oVar.f38166d;
            int b2 = b();
            int b3 = b();
            int b4 = oVar.b() + i;
            while (b3 < b2 + i2) {
                if (bArr[b3] != bArr2[b4]) {
                    return false;
                }
                b3++;
                b4++;
            }
            return true;
        } else {
            int a3 = oVar.a();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(a3);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int b(int i, int i2, int i3) {
        return a(i, this.f38166d, b() + i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final String b(String str) throws UnsupportedEncodingException {
        return new String(this.f38166d, b(), a(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    final void b(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.f38166d, b() + i, i2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    /* renamed from: c */
    public d.a iterator() {
        return new a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d) || a() != ((d) obj).a()) {
            return false;
        }
        if (a() == 0) {
            return true;
        }
        if (obj instanceof o) {
            return a((o) obj, 0, a());
        }
        if (obj instanceof t) {
            return obj.equals(this);
        }
        String valueOf = String.valueOf(String.valueOf(obj.getClass()));
        StringBuilder sb = new StringBuilder(valueOf.length() + 49);
        sb.append("Has a new type of ByteString been created? Found ");
        sb.append(valueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final boolean f() {
        int b2 = b();
        return w.a(this.f38166d, b2, a() + b2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final e g() {
        return e.a(this);
    }

    public int hashCode() {
        int i = this.f38165a;
        int i2 = i;
        if (i == 0) {
            int a2 = a();
            int b2 = b(a2, 0, a2);
            i2 = b2;
            if (b2 == 0) {
                i2 = 1;
            }
            this.f38165a = i2;
        }
        return i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int i() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final boolean j() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int k() {
        return this.f38165a;
    }
}
