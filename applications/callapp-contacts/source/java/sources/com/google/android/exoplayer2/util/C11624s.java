package com.google.android.exoplayer2.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s.class */
public final class C11624s {

    /* renamed from: a */
    public static final byte[] f38709a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f38710b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    private static final Object f38711c = new Object();

    /* renamed from: d */
    private static int[] f38712d = new int[10];

    /* renamed from: com.google.android.exoplayer2.util.s$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s$a.class */
    public static final class C11625a {

        /* renamed from: a */
        public final int f38713a;

        /* renamed from: b */
        public final int f38714b;

        /* renamed from: c */
        public final boolean f38715c;

        public C11625a(int i, int i2, boolean z) {
            this.f38713a = i;
            this.f38714b = i2;
            this.f38715c = z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.s$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/s$b.class */
    public static final class C11626b {

        /* renamed from: a */
        public final int f38716a;

        /* renamed from: b */
        public final int f38717b;

        /* renamed from: c */
        public final int f38718c;

        /* renamed from: d */
        public final int f38719d;

        /* renamed from: e */
        public final int f38720e;

        /* renamed from: f */
        public final int f38721f;

        /* renamed from: g */
        public final float f38722g;

        /* renamed from: h */
        public final boolean f38723h;

        /* renamed from: i */
        public final boolean f38724i;

        /* renamed from: j */
        public final int f38725j;

        /* renamed from: k */
        public final int f38726k;

        /* renamed from: l */
        public final int f38727l;

        /* renamed from: m */
        public final boolean f38728m;

        public C11626b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f38716a = i;
            this.f38717b = i2;
            this.f38718c = i3;
            this.f38719d = i4;
            this.f38720e = i5;
            this.f38721f = i6;
            this.f38722g = f;
            this.f38723h = z;
            this.f38724i = z2;
            this.f38725j = i7;
            this.f38726k = i8;
            this.f38727l = i9;
            this.f38728m = z3;
        }
    }

    private C11624s() {
    }

    /* renamed from: a */
    public static int m19834a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f38711c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    } else if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f38712d;
                    if (iArr.length <= i5) {
                        f38712d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f38712d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f38712d[i8] - i7;
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

    /* renamed from: a */
    public static int m19832a(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        C11593a.m20019b(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            m19831a(zArr);
            return i - 3;
        } else if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            m19831a(zArr);
            return i - 2;
        } else if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            m19831a(zArr);
            return i - 1;
        } else {
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                int i6 = i5;
                if ((bArr[i5] & 254) == 0) {
                    int i7 = i5 - 2;
                    if (bArr[i7] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                        m19831a(zArr);
                        return i7;
                    }
                    i6 = i5 - 2;
                }
                i5 = i6 + 3;
            }
            zArr[0] = i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !(zArr[2] && bArr[i2 - 2] == 0 && bArr[i4] == 1)) : bArr[i2 - 3] == 0 && bArr[i2 - 2] == 0 && bArr[i4] == 1;
            zArr[1] = i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : bArr[i2 - 2] == 0 && bArr[i4] == 0;
            boolean z = false;
            if (bArr[i4] == 0) {
                z = true;
            }
            zArr[2] = z;
            return i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x028d  */
    /* JADX WARN: Type inference failed for: r0v26, types: [boolean, int] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.util.C11624s.C11626b m19833a(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C11624s.m19833a(byte[], int, int):com.google.android.exoplayer2.util.s$b");
    }

    /* renamed from: a */
    public static void m19835a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= position) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                i = i3;
                if (i5 == 1) {
                    i = i3;
                    if ((byteBuffer.get(i4) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                }
            } else {
                i = i3;
                if (i5 == 0) {
                    i = i3 + 1;
                }
            }
            i3 = i;
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }

    /* renamed from: a */
    public static void m19831a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* renamed from: a */
    public static boolean m19836a(String str, byte b) {
        if (!"video/avc".equals(str) || (b & 31) != 6) {
            return "video/hevc".equals(str) && ((b & 126) >> 1) == 39;
        }
        return true;
    }

    /* renamed from: b */
    public static int m19830b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    /* renamed from: c */
    public static int m19829c(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    /* renamed from: d */
    public static C11625a m19828d(byte[] bArr, int i) {
        C11629v c11629v = new C11629v(bArr, 3, i);
        c11629v.m19779a(8);
        int m19770f = c11629v.m19770f();
        int m19770f2 = c11629v.m19770f();
        c11629v.m19780a();
        return new C11625a(m19770f, m19770f2, c11629v.m19777b());
    }
}
