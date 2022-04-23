package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f38122a;

    /* renamed from: b  reason: collision with root package name */
    int f38123b;

    /* renamed from: c  reason: collision with root package name */
    int f38124c;

    /* renamed from: d  reason: collision with root package name */
    int f38125d;
    int e;
    private final boolean f;
    private int g;
    private final InputStream h;
    private int i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private a n;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/e$a.class */
    interface a {
    }

    private e(InputStream inputStream) {
        this.j = false;
        this.l = Integer.MAX_VALUE;
        this.e = 64;
        this.m = 67108864;
        this.n = null;
        this.f38122a = new byte[4096];
        this.f38123b = 0;
        this.f38124c = 0;
        this.k = 0;
        this.h = inputStream;
        this.f = false;
    }

    private e(o oVar) {
        this.j = false;
        this.l = Integer.MAX_VALUE;
        this.e = 64;
        this.m = 67108864;
        this.n = null;
        this.f38122a = oVar.f38166d;
        int b2 = oVar.b();
        this.f38124c = b2;
        this.f38123b = b2 + oVar.a();
        this.k = -this.f38124c;
        this.h = null;
        this.f = true;
    }

    public static long a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static e a(InputStream inputStream) {
        return new e(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e a(o oVar) {
        e eVar = new e(oVar);
        try {
            eVar.b(oVar.a());
            return eVar;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private void e(int i) throws IOException {
        if (!f(i)) {
            throw InvalidProtocolBufferException.a();
        }
    }

    private boolean f(int i) throws IOException {
        do {
            int i2 = this.f38124c;
            int i3 = this.f38123b;
            if (i2 + i <= i3) {
                StringBuilder sb = new StringBuilder(77);
                sb.append("refillBuffer() called when ");
                sb.append(i);
                sb.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb.toString());
            } else if (this.k + i2 + i > this.l || this.h == null) {
                return false;
            } else {
                if (i2 > 0) {
                    if (i3 > i2) {
                        byte[] bArr = this.f38122a;
                        System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
                    }
                    this.k += i2;
                    this.f38123b -= i2;
                    this.f38124c = 0;
                }
                InputStream inputStream = this.h;
                byte[] bArr2 = this.f38122a;
                int i4 = this.f38123b;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                if (read == 0 || read < -1 || read > this.f38122a.length) {
                    StringBuilder sb2 = new StringBuilder(102);
                    sb2.append("InputStream#read(byte[]) returned invalid result: ");
                    sb2.append(read);
                    sb2.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb2.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.f38123b += read;
                    if ((this.k + i) - this.m <= 0) {
                        j();
                    } else {
                        throw InvalidProtocolBufferException.h();
                    }
                }
            }
        } while (this.f38123b < i);
        return true;
    }

    private void g(int i) throws IOException {
        int i2 = this.f38123b;
        int i3 = this.f38124c;
        if (i > i2 - i3 || i < 0) {
            h(i);
        } else {
            this.f38124c = i3 + i;
        }
    }

    private void h(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.k;
            int i3 = this.f38124c;
            int i4 = this.l;
            if (i2 + i3 + i <= i4) {
                int i5 = this.f38123b;
                int i6 = i5 - i3;
                this.f38124c = i5;
                e(1);
                while (true) {
                    int i7 = i - i6;
                    int i8 = this.f38123b;
                    if (i7 > i8) {
                        i6 += i8;
                        this.f38124c = i8;
                        e(1);
                    } else {
                        this.f38124c = i7;
                        return;
                    }
                }
            } else {
                g((i4 - i2) - i3);
                throw InvalidProtocolBufferException.a();
            }
        } else {
            throw InvalidProtocolBufferException.b();
        }
    }

    private long i() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte l = l();
            j |= (l & Byte.MAX_VALUE) << i;
            if ((l & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.c();
    }

    private void j() {
        int i = this.f38123b + this.g;
        this.f38123b = i;
        int i2 = this.k + i;
        int i3 = this.l;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.g = i4;
            this.f38123b = i - i4;
            return;
        }
        this.g = 0;
    }

    private boolean k() throws IOException {
        return this.f38124c == this.f38123b && !f(1);
    }

    private byte l() throws IOException {
        if (this.f38124c == this.f38123b) {
            e(1);
        }
        byte[] bArr = this.f38122a;
        int i = this.f38124c;
        this.f38124c = i + 1;
        return bArr[i];
    }

    public final int a() throws IOException {
        if (k()) {
            this.i = 0;
            return 0;
        }
        int d2 = d();
        this.i = d2;
        if (x.b(d2) != 0) {
            return this.i;
        }
        throw InvalidProtocolBufferException.d();
    }

    public final <T extends p> T a(r<T> rVar, f fVar) throws IOException {
        int d2 = d();
        if (this.f38125d < this.e) {
            int b2 = b(d2);
            this.f38125d++;
            T a2 = rVar.a(this, fVar);
            a(0);
            this.f38125d--;
            c(b2);
            return a2;
        }
        throw InvalidProtocolBufferException.g();
    }

    public final void a(int i) throws InvalidProtocolBufferException {
        if (this.i != i) {
            throw InvalidProtocolBufferException.e();
        }
    }

    public final boolean a(int i, CodedOutputStream codedOutputStream) throws IOException {
        int a2;
        int a3 = x.a(i);
        if (a3 == 0) {
            long e = e();
            codedOutputStream.e(i);
            codedOutputStream.c(e);
            return true;
        } else if (a3 == 1) {
            long g = g();
            codedOutputStream.e(i);
            codedOutputStream.e(g);
            return true;
        } else if (a3 == 2) {
            d c2 = c();
            codedOutputStream.e(i);
            codedOutputStream.a(c2);
            return true;
        } else if (a3 == 3) {
            codedOutputStream.e(i);
            do {
                a2 = a();
                if (a2 == 0) {
                    break;
                }
            } while (a(a2, codedOutputStream));
            int a4 = x.a(x.b(i), 4);
            a(a4);
            codedOutputStream.e(a4);
            return true;
        } else if (a3 == 4) {
            return false;
        } else {
            if (a3 == 5) {
                int f = f();
                codedOutputStream.e(i);
                codedOutputStream.g(f);
                return true;
            }
            throw InvalidProtocolBufferException.f();
        }
    }

    public final int b(int i) throws InvalidProtocolBufferException {
        if (i >= 0) {
            int i2 = i + this.k + this.f38124c;
            int i3 = this.l;
            if (i2 <= i3) {
                this.l = i2;
                j();
                return i3;
            }
            throw InvalidProtocolBufferException.a();
        }
        throw InvalidProtocolBufferException.b();
    }

    public final boolean b() throws IOException {
        return e() != 0;
    }

    public final d c() throws IOException {
        int d2 = d();
        int i = this.f38123b;
        int i2 = this.f38124c;
        if (d2 > i - i2 || d2 <= 0) {
            return d2 == 0 ? d.f38116b : new o(d(d2));
        }
        d a2 = (!this.f || !this.j) ? d.a(this.f38122a, i2, d2) : new c(this.f38122a, i2, d2);
        this.f38124c += d2;
        return a2;
    }

    public final void c(int i) {
        this.l = i;
        j();
    }

    public final int d() throws IOException {
        int i;
        int i2;
        int i3;
        long j;
        int i4 = this.f38124c;
        int i5 = this.f38123b;
        if (i5 != i4) {
            byte[] bArr = this.f38122a;
            int i6 = i4 + 1;
            byte b2 = bArr[i4];
            if (b2 >= 0) {
                this.f38124c = i6;
                return b2;
            } else if (i5 - i6 >= 9) {
                int i7 = i6 + 1;
                int i8 = b2 ^ (bArr[i6] << 7);
                long j2 = i8;
                if (j2 < 0) {
                    j = -128;
                    i = i7;
                } else {
                    i = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << 14);
                    long j3 = i9;
                    if (j3 >= 0) {
                        i2 = (int) (16256 ^ j3);
                    } else {
                        int i10 = i + 1;
                        j2 = i9 ^ (bArr[i] << 21);
                        if (j2 < 0) {
                            j = -2080896;
                            i = i10;
                        } else {
                            int i11 = i10 + 1;
                            byte b3 = bArr[i10];
                            int i12 = (int) ((i3 ^ (b3 << 28)) ^ 266354560);
                            i2 = i12;
                            i = i11;
                            if (b3 < 0) {
                                int i13 = i11 + 1;
                                i2 = i12;
                                i = i13;
                                if (bArr[i11] < 0) {
                                    int i14 = i13 + 1;
                                    i2 = i12;
                                    i = i14;
                                    if (bArr[i13] < 0) {
                                        int i15 = i14 + 1;
                                        i2 = i12;
                                        i = i15;
                                        if (bArr[i14] < 0) {
                                            int i16 = i15 + 1;
                                            i2 = i12;
                                            i = i16;
                                            if (bArr[i15] < 0) {
                                                i = i16 + 1;
                                                if (bArr[i16] >= 0) {
                                                    i2 = i12;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.f38124c = i;
                    return i2;
                }
                i2 = (int) (j2 ^ j);
                this.f38124c = i;
                return i2;
            }
        }
        return (int) i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] d(int i) throws IOException {
        if (i > 0) {
            int i2 = this.k;
            int i3 = this.f38124c;
            int i4 = this.l;
            if (i2 + i3 + i > i4) {
                g((i4 - i2) - i3);
                throw InvalidProtocolBufferException.a();
            } else if (i < 4096) {
                byte[] bArr = new byte[i];
                int i5 = this.f38123b - i3;
                System.arraycopy(this.f38122a, i3, bArr, 0, i5);
                int i6 = this.f38123b;
                this.f38124c = i6;
                int i7 = i - i5;
                if (i6 - i6 < i7) {
                    e(i7);
                }
                System.arraycopy(this.f38122a, 0, bArr, i5, i7);
                this.f38124c = i7;
                return bArr;
            } else {
                int i8 = this.f38123b;
                this.k = i2 + i8;
                this.f38124c = 0;
                this.f38123b = 0;
                int i9 = i8 - i3;
                int i10 = i - i9;
                ArrayList<byte[]> arrayList = new ArrayList();
                while (i10 > 0) {
                    int min = Math.min(i10, 4096);
                    byte[] bArr2 = new byte[min];
                    int i11 = 0;
                    while (i11 < min) {
                        InputStream inputStream = this.h;
                        int read = inputStream == null ? -1 : inputStream.read(bArr2, i11, min - i11);
                        if (read != -1) {
                            this.k += read;
                            i11 += read;
                        } else {
                            throw InvalidProtocolBufferException.a();
                        }
                    }
                    i10 -= min;
                    arrayList.add(bArr2);
                }
                byte[] bArr3 = new byte[i];
                System.arraycopy(this.f38122a, i3, bArr3, 0, i9);
                int i12 = i9;
                for (byte[] bArr4 : arrayList) {
                    System.arraycopy(bArr4, 0, bArr3, i12, bArr4.length);
                    i12 += bArr4.length;
                }
                return bArr3;
            }
        } else if (i == 0) {
            return j.f38154a;
        } else {
            throw InvalidProtocolBufferException.b();
        }
    }

    public final long e() throws IOException {
        long j;
        long j2;
        long j3;
        int i = this.f38124c;
        int i2 = this.f38123b;
        if (i2 != i) {
            byte[] bArr = this.f38122a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.f38124c = i3;
                return b2;
            } else if (i2 - i3 >= 9) {
                int i4 = i3 + 1;
                long j4 = b2 ^ (bArr[i3] << 7);
                if (j4 < 0) {
                    j2 = -128;
                } else {
                    int i5 = i4 + 1;
                    long j5 = j4 ^ (bArr[i4] << 14);
                    if (j5 >= 0) {
                        j3 = 16256;
                        i4 = i5;
                    } else {
                        int i6 = i5 + 1;
                        j4 = j5 ^ (bArr[i5] << 21);
                        if (j4 < 0) {
                            j2 = -2080896;
                            i4 = i6;
                        } else {
                            i4 = i6 + 1;
                            j5 = j4 ^ (bArr[i6] << 28);
                            if (j5 >= 0) {
                                j3 = 266354560;
                            } else {
                                int i7 = i4 + 1;
                                j4 = j5 ^ (bArr[i4] << 35);
                                if (j4 < 0) {
                                    j2 = -34093383808L;
                                    i4 = i7;
                                } else {
                                    i4 = i7 + 1;
                                    j5 = j4 ^ (bArr[i7] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        int i8 = i4 + 1;
                                        j4 = j5 ^ (bArr[i4] << 49);
                                        if (j4 < 0) {
                                            j2 = -558586000294016L;
                                            i4 = i8;
                                        } else {
                                            i4 = i8 + 1;
                                            j = (j4 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i4++;
                                                if (bArr[i4] >= 0) {
                                                }
                                            }
                                            this.f38124c = i4;
                                            return j;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    j = j5 ^ j3;
                    this.f38124c = i4;
                    return j;
                }
                j = j4 ^ j2;
                this.f38124c = i4;
                return j;
            }
        }
        return i();
    }

    public final int f() throws IOException {
        int i = this.f38124c;
        int i2 = i;
        if (this.f38123b - i < 4) {
            e(4);
            i2 = this.f38124c;
        }
        byte[] bArr = this.f38122a;
        this.f38124c = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public final long g() throws IOException {
        int i = this.f38124c;
        int i2 = i;
        if (this.f38123b - i < 8) {
            e(8);
            i2 = this.f38124c;
        }
        byte[] bArr = this.f38122a;
        this.f38124c = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public final int h() {
        int i = this.l;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.k + this.f38124c);
    }
}
