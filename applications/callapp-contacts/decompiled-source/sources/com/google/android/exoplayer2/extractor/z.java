package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z.class */
public final class z {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21344a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21345b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f21346c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21347d;
        public final boolean e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f21344a = i;
            this.f21345b = i2;
            this.f21346c = jArr;
            this.f21347d = i3;
            this.e = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f21348a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f21349b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21350c;

        public b(String str, String[] strArr, int i) {
            this.f21348a = str;
            this.f21349b = strArr;
            this.f21350c = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f21351a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21352b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21353c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21354d;

        public c(boolean z, int i, int i2, int i3) {
            this.f21351a = z;
            this.f21352b = i;
            this.f21353c = i2;
            this.f21354d = i3;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f21355a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21356b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21357c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21358d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final byte[] j;

        public d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.f21355a = i;
            this.f21356b = i2;
            this.f21357c = i3;
            this.f21358d = i4;
            this.e = i5;
            this.f = i6;
            this.g = i7;
            this.h = i8;
            this.i = z;
            this.j = bArr;
        }
    }

    private z() {
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static b a(u uVar, boolean z, boolean z2) throws ParserException {
        if (z) {
            a(3, uVar, false);
        }
        String f = uVar.f((int) uVar.i());
        int length = f.length();
        long i = uVar.i();
        String[] strArr = new String[(int) i];
        int i2 = length + 11 + 4;
        for (int i3 = 0; i3 < i; i3++) {
            strArr[i3] = uVar.f((int) uVar.i());
            i2 = i2 + 4 + strArr[i3].length();
        }
        if (!z2 || (uVar.c() & 1) != 0) {
            return new b(f, strArr, i2 + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    public static void a(int i, y yVar) throws ParserException {
        int a2 = yVar.a(6);
        for (int i2 = 0; i2 < a2 + 1; i2++) {
            int a3 = yVar.a(16);
            if (a3 != 0) {
                n.b("VorbisUtil", "mapping type other than 0 not supported: ".concat(String.valueOf(a3)));
            } else {
                int a4 = yVar.a() ? yVar.a(4) + 1 : 1;
                if (yVar.a()) {
                    int a5 = yVar.a(8);
                    for (int i3 = 0; i3 < a5 + 1; i3++) {
                        int i4 = i - 1;
                        yVar.b(a(i4));
                        yVar.b(a(i4));
                    }
                }
                if (yVar.a(2) == 0) {
                    if (a4 > 1) {
                        for (int i5 = 0; i5 < i; i5++) {
                            yVar.b(4);
                        }
                    }
                    for (int i6 = 0; i6 < a4; i6++) {
                        yVar.b(8);
                        yVar.b(8);
                        yVar.b(8);
                    }
                } else {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
            }
        }
    }

    public static boolean a(int i, u uVar, boolean z) throws ParserException {
        if (uVar.a() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + uVar.a());
        } else if (uVar.c() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (uVar.c() == 118 && uVar.c() == 111 && uVar.c() == 114 && uVar.c() == 98 && uVar.c() == 105 && uVar.c() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }

    public static c[] a(y yVar) {
        int a2 = yVar.a(6) + 1;
        c[] cVarArr = new c[a2];
        for (int i = 0; i < a2; i++) {
            cVarArr[i] = new c(yVar.a(), yVar.a(16), yVar.a(16), yVar.a(8));
        }
        return cVarArr;
    }

    public static void b(y yVar) throws ParserException {
        int a2 = yVar.a(6);
        for (int i = 0; i < a2 + 1; i++) {
            if (yVar.a(16) <= 2) {
                yVar.b(24);
                yVar.b(24);
                yVar.b(24);
                int a3 = yVar.a(6) + 1;
                yVar.b(8);
                int[] iArr = new int[a3];
                for (int i2 = 0; i2 < a3; i2++) {
                    iArr[i2] = ((yVar.a() ? yVar.a(5) : 0) * 8) + yVar.a(3);
                }
                for (int i3 = 0; i3 < a3; i3++) {
                    for (int i4 = 0; i4 < 8; i4++) {
                        if ((iArr[i3] & (1 << i4)) != 0) {
                            yVar.b(8);
                        }
                    }
                }
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }

    public static void c(y yVar) throws ParserException {
        int a2 = yVar.a(6);
        for (int i = 0; i < a2 + 1; i++) {
            int a3 = yVar.a(16);
            if (a3 == 0) {
                yVar.b(8);
                yVar.b(16);
                yVar.b(16);
                yVar.b(6);
                yVar.b(8);
                int a4 = yVar.a(4);
                for (int i2 = 0; i2 < a4 + 1; i2++) {
                    yVar.b(8);
                }
            } else if (a3 == 1) {
                int a5 = yVar.a(5);
                int i3 = -1;
                int[] iArr = new int[a5];
                for (int i4 = 0; i4 < a5; i4++) {
                    iArr[i4] = yVar.a(4);
                    i3 = i3;
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = yVar.a(3) + 1;
                    int a6 = yVar.a(2);
                    if (a6 > 0) {
                        yVar.b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a6); i7++) {
                        yVar.b(8);
                    }
                }
                yVar.b(2);
                int a7 = yVar.a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a5; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        yVar.b(a7);
                        i9++;
                    }
                }
            } else {
                throw new ParserException("floor type greater than 1 not decodable: ".concat(String.valueOf(a3)));
            }
        }
    }
}
