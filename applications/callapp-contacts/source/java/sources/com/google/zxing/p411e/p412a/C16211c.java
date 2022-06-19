package com.google.zxing.p411e.p412a;

import com.mopub.mobileads.resource.DrawableConstants;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.zxing.e.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/c.class */
public final class C16211c {

    /* renamed from: c */
    private static final int[] f57211c = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* renamed from: d */
    private static final C16211c[] f57212d = m7641a();

    /* renamed from: a */
    public final int f57213a;

    /* renamed from: b */
    public final int f57214b;

    /* renamed from: e */
    private final int[] f57215e;

    /* renamed from: f */
    private final C16213b[] f57216f;

    /* renamed from: com.google.zxing.e.a.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/c$a.class */
    public static final class C16212a {

        /* renamed from: a */
        final int f57217a;

        /* renamed from: b */
        final int f57218b;

        C16212a(int i, int i2) {
            this.f57217a = i;
            this.f57218b = i2;
        }
    }

    /* renamed from: com.google.zxing.e.a.c$b */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/c$b.class */
    public static final class C16213b {

        /* renamed from: a */
        final int f57219a;

        /* renamed from: b */
        final C16212a[] f57220b;

        C16213b(int i, C16212a... c16212aArr) {
            this.f57219a = i;
            this.f57220b = c16212aArr;
        }

        /* renamed from: a */
        public final int m7638a() {
            int i = 0;
            for (C16212a c16212a : this.f57220b) {
                i += c16212a.f57217a;
            }
            return i;
        }

        /* renamed from: b */
        public final int m7637b() {
            return this.f57219a * m7638a();
        }
    }

    private C16211c(int i, int[] iArr, C16213b... c16213bArr) {
        C16212a[] c16212aArr;
        this.f57213a = i;
        this.f57215e = iArr;
        this.f57216f = c16213bArr;
        int i2 = c16213bArr[0].f57219a;
        int i3 = 0;
        for (C16212a c16212a : c16213bArr[0].f57220b) {
            i3 += c16212a.f57217a * (c16212a.f57218b + i2);
        }
        this.f57214b = i3;
    }

    /* renamed from: a */
    public static C16211c m7640a(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f57212d[i - 1];
    }

    /* renamed from: a */
    private static C16211c[] m7641a() {
        return new C16211c[]{new C16211c(1, new int[0], new C16213b(7, new C16212a(1, 19)), new C16213b(10, new C16212a(1, 16)), new C16213b(13, new C16212a(1, 13)), new C16213b(17, new C16212a(1, 9))), new C16211c(2, new int[]{6, 18}, new C16213b(10, new C16212a(1, 34)), new C16213b(16, new C16212a(1, 28)), new C16213b(22, new C16212a(1, 22)), new C16213b(28, new C16212a(1, 16))), new C16211c(3, new int[]{6, 22}, new C16213b(15, new C16212a(1, 55)), new C16213b(26, new C16212a(1, 44)), new C16213b(18, new C16212a(2, 17)), new C16213b(22, new C16212a(2, 13))), new C16211c(4, new int[]{6, 26}, new C16213b(20, new C16212a(1, 80)), new C16213b(18, new C16212a(2, 32)), new C16213b(26, new C16212a(2, 24)), new C16213b(16, new C16212a(4, 9))), new C16211c(5, new int[]{6, 30}, new C16213b(26, new C16212a(1, 108)), new C16213b(24, new C16212a(2, 43)), new C16213b(18, new C16212a(2, 15), new C16212a(2, 16)), new C16213b(22, new C16212a(2, 11), new C16212a(2, 12))), new C16211c(6, new int[]{6, 34}, new C16213b(18, new C16212a(2, 68)), new C16213b(16, new C16212a(4, 27)), new C16213b(24, new C16212a(4, 19)), new C16213b(28, new C16212a(4, 15))), new C16211c(7, new int[]{6, 22, 38}, new C16213b(20, new C16212a(2, 78)), new C16213b(18, new C16212a(4, 31)), new C16213b(18, new C16212a(2, 14), new C16212a(4, 15)), new C16213b(26, new C16212a(4, 13), new C16212a(1, 14))), new C16211c(8, new int[]{6, 24, 42}, new C16213b(24, new C16212a(2, 97)), new C16213b(22, new C16212a(2, 38), new C16212a(2, 39)), new C16213b(22, new C16212a(4, 18), new C16212a(2, 19)), new C16213b(26, new C16212a(4, 14), new C16212a(2, 15))), new C16211c(9, new int[]{6, 26, 46}, new C16213b(30, new C16212a(2, 116)), new C16213b(22, new C16212a(3, 36), new C16212a(2, 37)), new C16213b(20, new C16212a(4, 16), new C16212a(4, 17)), new C16213b(24, new C16212a(4, 12), new C16212a(4, 13))), new C16211c(10, new int[]{6, 28, 50}, new C16213b(18, new C16212a(2, 68), new C16212a(2, 69)), new C16213b(26, new C16212a(4, 43), new C16212a(1, 44)), new C16213b(24, new C16212a(6, 19), new C16212a(2, 20)), new C16213b(28, new C16212a(6, 15), new C16212a(2, 16))), new C16211c(11, new int[]{6, 30, 54}, new C16213b(20, new C16212a(4, 81)), new C16213b(30, new C16212a(1, 50), new C16212a(4, 51)), new C16213b(28, new C16212a(4, 22), new C16212a(4, 23)), new C16213b(24, new C16212a(3, 12), new C16212a(8, 13))), new C16211c(12, new int[]{6, 32, 58}, new C16213b(24, new C16212a(2, 92), new C16212a(2, 93)), new C16213b(22, new C16212a(6, 36), new C16212a(2, 37)), new C16213b(26, new C16212a(4, 20), new C16212a(6, 21)), new C16213b(28, new C16212a(7, 14), new C16212a(4, 15))), new C16211c(13, new int[]{6, 34, 62}, new C16213b(26, new C16212a(4, 107)), new C16213b(22, new C16212a(8, 37), new C16212a(1, 38)), new C16213b(24, new C16212a(8, 20), new C16212a(4, 21)), new C16213b(22, new C16212a(12, 11), new C16212a(4, 12))), new C16211c(14, new int[]{6, 26, 46, 66}, new C16213b(30, new C16212a(3, 115), new C16212a(1, 116)), new C16213b(24, new C16212a(4, 40), new C16212a(5, 41)), new C16213b(20, new C16212a(11, 16), new C16212a(5, 17)), new C16213b(24, new C16212a(11, 12), new C16212a(5, 13))), new C16211c(15, new int[]{6, 26, 48, 70}, new C16213b(22, new C16212a(5, 87), new C16212a(1, 88)), new C16213b(24, new C16212a(5, 41), new C16212a(5, 42)), new C16213b(30, new C16212a(5, 24), new C16212a(7, 25)), new C16213b(24, new C16212a(11, 12), new C16212a(7, 13))), new C16211c(16, new int[]{6, 26, 50, 74}, new C16213b(24, new C16212a(5, 98), new C16212a(1, 99)), new C16213b(28, new C16212a(7, 45), new C16212a(3, 46)), new C16213b(24, new C16212a(15, 19), new C16212a(2, 20)), new C16213b(30, new C16212a(3, 15), new C16212a(13, 16))), new C16211c(17, new int[]{6, 30, 54, 78}, new C16213b(28, new C16212a(1, 107), new C16212a(5, 108)), new C16213b(28, new C16212a(10, 46), new C16212a(1, 47)), new C16213b(28, new C16212a(1, 22), new C16212a(15, 23)), new C16213b(28, new C16212a(2, 14), new C16212a(17, 15))), new C16211c(18, new int[]{6, 30, 56, 82}, new C16213b(30, new C16212a(5, 120), new C16212a(1, 121)), new C16213b(26, new C16212a(9, 43), new C16212a(4, 44)), new C16213b(28, new C16212a(17, 22), new C16212a(1, 23)), new C16213b(28, new C16212a(2, 14), new C16212a(19, 15))), new C16211c(19, new int[]{6, 30, 58, 86}, new C16213b(28, new C16212a(3, 113), new C16212a(4, 114)), new C16213b(26, new C16212a(3, 44), new C16212a(11, 45)), new C16213b(26, new C16212a(17, 21), new C16212a(4, 22)), new C16213b(26, new C16212a(9, 13), new C16212a(16, 14))), new C16211c(20, new int[]{6, 34, 62, 90}, new C16213b(28, new C16212a(3, 107), new C16212a(5, 108)), new C16213b(26, new C16212a(3, 41), new C16212a(13, 42)), new C16213b(30, new C16212a(15, 24), new C16212a(5, 25)), new C16213b(28, new C16212a(15, 15), new C16212a(10, 16))), new C16211c(21, new int[]{6, 28, 50, 72, 94}, new C16213b(28, new C16212a(4, 116), new C16212a(4, 117)), new C16213b(26, new C16212a(17, 42)), new C16213b(28, new C16212a(17, 22), new C16212a(6, 23)), new C16213b(30, new C16212a(19, 16), new C16212a(6, 17))), new C16211c(22, new int[]{6, 26, 50, 74, 98}, new C16213b(28, new C16212a(2, 111), new C16212a(7, 112)), new C16213b(28, new C16212a(17, 46)), new C16213b(30, new C16212a(7, 24), new C16212a(16, 25)), new C16213b(24, new C16212a(34, 13))), new C16211c(23, new int[]{6, 30, 54, 78, 102}, new C16213b(30, new C16212a(4, 121), new C16212a(5, 122)), new C16213b(28, new C16212a(4, 47), new C16212a(14, 48)), new C16213b(30, new C16212a(11, 24), new C16212a(14, 25)), new C16213b(30, new C16212a(16, 15), new C16212a(14, 16))), new C16211c(24, new int[]{6, 28, 54, 80, 106}, new C16213b(30, new C16212a(6, 117), new C16212a(4, 118)), new C16213b(28, new C16212a(6, 45), new C16212a(14, 46)), new C16213b(30, new C16212a(11, 24), new C16212a(16, 25)), new C16213b(30, new C16212a(30, 16), new C16212a(2, 17))), new C16211c(25, new int[]{6, 32, 58, 84, 110}, new C16213b(26, new C16212a(8, 106), new C16212a(4, 107)), new C16213b(28, new C16212a(8, 47), new C16212a(13, 48)), new C16213b(30, new C16212a(7, 24), new C16212a(22, 25)), new C16213b(30, new C16212a(22, 15), new C16212a(13, 16))), new C16211c(26, new int[]{6, 30, 58, 86, 114}, new C16213b(28, new C16212a(10, 114), new C16212a(2, 115)), new C16213b(28, new C16212a(19, 46), new C16212a(4, 47)), new C16213b(28, new C16212a(28, 22), new C16212a(6, 23)), new C16213b(30, new C16212a(33, 16), new C16212a(4, 17))), new C16211c(27, new int[]{6, 34, 62, 90, 118}, new C16213b(30, new C16212a(8, 122), new C16212a(4, 123)), new C16213b(28, new C16212a(22, 45), new C16212a(3, 46)), new C16213b(30, new C16212a(8, 23), new C16212a(26, 24)), new C16213b(30, new C16212a(12, 15), new C16212a(28, 16))), new C16211c(28, new int[]{6, 26, 50, 74, 98, 122}, new C16213b(30, new C16212a(3, 117), new C16212a(10, 118)), new C16213b(28, new C16212a(3, 45), new C16212a(23, 46)), new C16213b(30, new C16212a(4, 24), new C16212a(31, 25)), new C16213b(30, new C16212a(11, 15), new C16212a(31, 16))), new C16211c(29, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT}, new C16213b(30, new C16212a(7, 116), new C16212a(7, 117)), new C16213b(28, new C16212a(21, 45), new C16212a(7, 46)), new C16213b(30, new C16212a(1, 23), new C16212a(37, 24)), new C16213b(30, new C16212a(19, 15), new C16212a(26, 16))), new C16211c(30, new int[]{6, 26, 52, 78, 104, 130}, new C16213b(30, new C16212a(5, 115), new C16212a(10, 116)), new C16213b(28, new C16212a(19, 47), new C16212a(10, 48)), new C16213b(30, new C16212a(15, 24), new C16212a(25, 25)), new C16213b(30, new C16212a(23, 15), new C16212a(25, 16))), new C16211c(31, new int[]{6, 30, 56, 82, 108, 134}, new C16213b(30, new C16212a(13, 115), new C16212a(3, 116)), new C16213b(28, new C16212a(2, 46), new C16212a(29, 47)), new C16213b(30, new C16212a(42, 24), new C16212a(1, 25)), new C16213b(30, new C16212a(23, 15), new C16212a(28, 16))), new C16211c(32, new int[]{6, 34, 60, 86, 112, 138}, new C16213b(30, new C16212a(17, 115)), new C16213b(28, new C16212a(10, 46), new C16212a(23, 47)), new C16213b(30, new C16212a(10, 24), new C16212a(35, 25)), new C16213b(30, new C16212a(19, 15), new C16212a(35, 16))), new C16211c(33, new int[]{6, 30, 58, 86, 114, 142}, new C16213b(30, new C16212a(17, 115), new C16212a(1, 116)), new C16213b(28, new C16212a(14, 46), new C16212a(21, 47)), new C16213b(30, new C16212a(29, 24), new C16212a(19, 25)), new C16213b(30, new C16212a(11, 15), new C16212a(46, 16))), new C16211c(34, new int[]{6, 34, 62, 90, 118, 146}, new C16213b(30, new C16212a(13, 115), new C16212a(6, 116)), new C16213b(28, new C16212a(14, 46), new C16212a(23, 47)), new C16213b(30, new C16212a(44, 24), new C16212a(7, 25)), new C16213b(30, new C16212a(59, 16), new C16212a(1, 17))), new C16211c(35, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, DrawableConstants.CtaButton.WIDTH_DIPS}, new C16213b(30, new C16212a(12, 121), new C16212a(7, 122)), new C16213b(28, new C16212a(12, 47), new C16212a(26, 48)), new C16213b(30, new C16212a(39, 24), new C16212a(14, 25)), new C16213b(30, new C16212a(22, 15), new C16212a(41, 16))), new C16211c(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new C16213b(30, new C16212a(6, 121), new C16212a(14, 122)), new C16213b(28, new C16212a(6, 47), new C16212a(34, 48)), new C16213b(30, new C16212a(46, 24), new C16212a(10, 25)), new C16213b(30, new C16212a(2, 15), new C16212a(64, 16))), new C16211c(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new C16213b(30, new C16212a(17, 122), new C16212a(4, 123)), new C16213b(28, new C16212a(29, 46), new C16212a(14, 47)), new C16213b(30, new C16212a(49, 24), new C16212a(10, 25)), new C16213b(30, new C16212a(24, 15), new C16212a(46, 16))), new C16211c(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new C16213b(30, new C16212a(4, 122), new C16212a(18, 123)), new C16213b(28, new C16212a(13, 46), new C16212a(32, 47)), new C16213b(30, new C16212a(48, 24), new C16212a(14, 25)), new C16213b(30, new C16212a(42, 15), new C16212a(32, 16))), new C16211c(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new C16213b(30, new C16212a(20, 117), new C16212a(4, 118)), new C16213b(28, new C16212a(40, 47), new C16212a(7, 48)), new C16213b(30, new C16212a(43, 24), new C16212a(22, 25)), new C16213b(30, new C16212a(10, 15), new C16212a(67, 16))), new C16211c(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new C16213b(30, new C16212a(19, 118), new C16212a(6, 119)), new C16213b(28, new C16212a(18, 47), new C16212a(31, 48)), new C16213b(30, new C16212a(34, 24), new C16212a(34, 25)), new C16213b(30, new C16212a(20, 15), new C16212a(61, 16)))};
    }

    /* renamed from: a */
    public final C16213b m7639a(EnumC16209a enumC16209a) {
        return this.f57216f[enumC16209a.ordinal()];
    }

    public final String toString() {
        return String.valueOf(this.f57213a);
    }
}
