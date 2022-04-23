package androidx.media2.exoplayer.external.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f4151a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f4152b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f4153c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f4154d = new int[10];

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f4155a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4156b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f4157c;

        public a(int i, int i2, boolean z) {
            this.f4155a = i;
            this.f4156b = i2;
            this.f4157c = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f4158a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4159b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4160c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4161d;
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
            this.f4158a = i;
            this.f4159b = i2;
            this.f4160c = i3;
            this.f4161d = i4;
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

    private n() {
    }

    public static int a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f4153c) {
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
                    int[] iArr = f4154d;
                    if (iArr.length <= i5) {
                        f4154d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f4154d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f4154d[i8] - i7;
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

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0118, code lost:
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.n.a(byte[], int, int, boolean[]):int");
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
    public static androidx.media2.exoplayer.external.util.n.b a(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.n.a(byte[], int, int):androidx.media2.exoplayer.external.util.n$b");
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
        q qVar = new q(bArr, 3, i);
        qVar.a(8);
        int e = qVar.e();
        int e2 = qVar.e();
        qVar.a();
        return new a(e, e2, qVar.b());
    }
}
