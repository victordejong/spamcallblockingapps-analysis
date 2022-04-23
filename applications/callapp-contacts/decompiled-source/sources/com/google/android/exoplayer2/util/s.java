package com.google.android.exoplayer2.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f22320a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f22321b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f22322c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f22323d = new int[10];

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22324a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22325b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f22326c;

        public a(int i, int i2, boolean z) {
            this.f22324a = i;
            this.f22325b = i2;
            this.f22326c = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f22327a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22328b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22329c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22330d;
        public final int e;
        public final int f;
        public final float g;
        public final boolean h;
        public final boolean i;
        public final int j;
        public final int k;
        public final int l;
        public final boolean m;

        public b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f22327a = i;
            this.f22328b = i2;
            this.f22329c = i3;
            this.f22330d = i4;
            this.e = i5;
            this.f = i6;
            this.g = f;
            this.h = z;
            this.i = z2;
            this.j = i7;
            this.k = i8;
            this.l = i9;
            this.m = z3;
        }
    }

    private s() {
    }

    public static int a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f22322c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    }
                    i4++;
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f22323d;
                    if (iArr.length <= i5) {
                        f22323d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f22323d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f22323d[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = (byte) 0;
                i6 = i11 + 1;
                bArr[i11] = (byte) 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i2 - i6);
        }
        return i2;
    }

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        boolean z = false;
        com.google.android.exoplayer2.util.a.b(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            a(zArr);
            return i - 3;
        } else if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            a(zArr);
            return i - 2;
        } else if (i3 <= 2 || !zArr[2] || bArr[i] != 0 || bArr[i + 1] != 1) {
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                int i6 = i5;
                if ((bArr[i5] & 254) == 0) {
                    int i7 = i5 - 2;
                    if (bArr[i7] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                        a(zArr);
                        return i7;
                    }
                    i6 = i5 - 2;
                }
                i5 = i6 + 3;
            }
            zArr[0] = i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !(zArr[2] && bArr[i2 - 2] == 0 && bArr[i4] == 1)) : bArr[i2 - 3] == 0 && bArr[i2 - 2] == 0 && bArr[i4] == 1;
            zArr[1] = i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : bArr[i2 - 2] == 0 && bArr[i4] == 0;
            if (bArr[i4] == 0) {
                z = true;
            }
            zArr[2] = z;
            return i2;
        } else {
            a(zArr);
            return i - 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x028d  */
    /* JADX WARN: Type inference failed for: r0v26, types: [int, boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.util.s.b a(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.s.a(byte[], int, int):com.google.android.exoplayer2.util.s$b");
    }

    public static void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i3 < position) {
                int i4 = byteBuffer.get(i) & 255;
                if (i2 == 3) {
                    i2 = i2;
                    if (i4 == 1) {
                        i2 = i2;
                        if ((byteBuffer.get(i3) & 31) == 7) {
                            ByteBuffer duplicate = byteBuffer.duplicate();
                            duplicate.position(i - 3);
                            duplicate.limit(position);
                            byteBuffer.position(0);
                            byteBuffer.put(duplicate);
                            return;
                        }
                    }
                } else {
                    i2 = i2;
                    if (i4 == 0) {
                        i2++;
                    }
                }
                if (i4 != 0) {
                    i2 = 0;
                }
                i = i3;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean a(String str, byte b2) {
        if (!"video/avc".equals(str) || (b2 & 31) != 6) {
            return "video/hevc".equals(str) && ((b2 & 126) >> 1) == 39;
        }
        return true;
    }

    public static int b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    public static int c(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static a d(byte[] bArr, int i) {
        v vVar = new v(bArr, 3, i);
        vVar.a(8);
        int f = vVar.f();
        int f2 = vVar.f();
        vVar.a();
        return new a(f, f2, vVar.b());
    }
}
