package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l.class */
final class l {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3122a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3123b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f3124c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3125d;
        public final boolean e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f3122a = i;
            this.f3123b = i2;
            this.f3124c = jArr;
            this.f3125d = i3;
            this.e = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f3126a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f3127b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3128c;

        public b(String str, String[] strArr, int i) {
            this.f3126a = str;
            this.f3127b = strArr;
            this.f3128c = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3129a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3130b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3131c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3132d;

        public c(boolean z, int i, int i2, int i3) {
            this.f3129a = z;
            this.f3130b = i;
            this.f3131c = i2;
            this.f3132d = i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f3133a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3134b;

        /* renamed from: c  reason: collision with root package name */
        public final long f3135c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3136d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final byte[] j;

        public d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f3133a = j;
            this.f3134b = i;
            this.f3135c = j2;
            this.f3136d = i2;
            this.e = i3;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = z;
            this.j = bArr;
        }
    }

    private l() {
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, j jVar) throws ParserException {
        int a2 = jVar.a(6);
        for (int i2 = 0; i2 < a2 + 1; i2++) {
            int a3 = jVar.a(16);
            if (a3 != 0) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("mapping type other than 0 not supported: ");
                sb.append(a3);
                j.b("VorbisUtil", sb.toString());
            } else {
                int a4 = jVar.a() ? jVar.a(4) + 1 : 1;
                if (jVar.a()) {
                    int a5 = jVar.a(8);
                    for (int i3 = 0; i3 < a5 + 1; i3++) {
                        int i4 = i - 1;
                        jVar.b(a(i4));
                        jVar.b(a(i4));
                    }
                }
                if (jVar.a(2) == 0) {
                    if (a4 > 1) {
                        for (int i5 = 0; i5 < i; i5++) {
                            jVar.b(4);
                        }
                    }
                    for (int i6 = 0; i6 < a4; i6++) {
                        jVar.b(8);
                        jVar.b(8);
                        jVar.b(8);
                    }
                } else {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
            }
        }
    }

    public static boolean a(int i, p pVar, boolean z) throws ParserException {
        if (pVar.b() < 7) {
            if (z) {
                return false;
            }
            int b2 = pVar.b();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(b2);
            throw new ParserException(sb.toString());
        } else if (pVar.c() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw new ParserException(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "));
        } else if (pVar.c() == 118 && pVar.c() == 111 && pVar.c() == 114 && pVar.c() == 98 && pVar.c() == 105 && pVar.c() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c[] a(j jVar) {
        int a2 = jVar.a(6) + 1;
        c[] cVarArr = new c[a2];
        for (int i = 0; i < a2; i++) {
            cVarArr[i] = new c(jVar.a(), jVar.a(16), jVar.a(16), jVar.a(8));
        }
        return cVarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(j jVar) throws ParserException {
        int a2 = jVar.a(6);
        for (int i = 0; i < a2 + 1; i++) {
            if (jVar.a(16) <= 2) {
                jVar.b(24);
                jVar.b(24);
                jVar.b(24);
                int a3 = jVar.a(6) + 1;
                jVar.b(8);
                int[] iArr = new int[a3];
                for (int i2 = 0; i2 < a3; i2++) {
                    iArr[i2] = ((jVar.a() ? jVar.a(5) : 0) * 8) + jVar.a(3);
                }
                for (int i3 = 0; i3 < a3; i3++) {
                    for (int i4 = 0; i4 < 8; i4++) {
                        if ((iArr[i3] & (1 << i4)) != 0) {
                            jVar.b(8);
                        }
                    }
                }
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(j jVar) throws ParserException {
        int a2 = jVar.a(6);
        for (int i = 0; i < a2 + 1; i++) {
            int a3 = jVar.a(16);
            if (a3 == 0) {
                jVar.b(8);
                jVar.b(16);
                jVar.b(16);
                jVar.b(6);
                jVar.b(8);
                int a4 = jVar.a(4);
                for (int i2 = 0; i2 < a4 + 1; i2++) {
                    jVar.b(8);
                }
            } else if (a3 == 1) {
                int a5 = jVar.a(5);
                int i3 = -1;
                int[] iArr = new int[a5];
                for (int i4 = 0; i4 < a5; i4++) {
                    iArr[i4] = jVar.a(4);
                    i3 = i3;
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = jVar.a(3) + 1;
                    int a6 = jVar.a(2);
                    if (a6 > 0) {
                        jVar.b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a6); i7++) {
                        jVar.b(8);
                    }
                }
                jVar.b(2);
                int a7 = jVar.a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a5; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        jVar.b(a7);
                        i9++;
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder(52);
                sb.append("floor type greater than 1 not decodable: ");
                sb.append(a3);
                throw new ParserException(sb.toString());
            }
        }
    }
}
