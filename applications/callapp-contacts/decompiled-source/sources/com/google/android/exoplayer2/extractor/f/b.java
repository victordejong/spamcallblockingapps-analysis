package com.google.android.exoplayer2.extractor.f;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f21018a = af.c("OpusHead");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21019a;

        /* renamed from: b  reason: collision with root package name */
        public int f21020b;

        /* renamed from: c  reason: collision with root package name */
        public int f21021c;

        /* renamed from: d  reason: collision with root package name */
        public long f21022d;
        private final boolean e;
        private final u f;
        private final u g;
        private int h;
        private int i;

        public a(u uVar, u uVar2, boolean z) {
            this.g = uVar;
            this.f = uVar2;
            this.e = z;
            uVar2.d(12);
            this.f21019a = uVar2.o();
            uVar.d(12);
            this.i = uVar.o();
            com.google.android.exoplayer2.util.a.b(uVar.j() != 1 ? false : true, "first_chunk must be 1");
            this.f21020b = -1;
        }

        public final boolean a() {
            int i = this.f21020b + 1;
            this.f21020b = i;
            if (i == this.f21019a) {
                return false;
            }
            this.f21022d = this.e ? this.f.q() : this.f.h();
            if (this.f21020b != this.h) {
                return true;
            }
            this.f21021c = this.g.o();
            this.g.e(4);
            int i2 = this.i - 1;
            this.i = i2;
            this.h = i2 > 0 ? this.g.o() - 1 : -1;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.f.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$b.class */
    public interface AbstractC0428b {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final l[] f21023a;

        /* renamed from: b  reason: collision with root package name */
        public Format f21024b;

        /* renamed from: c  reason: collision with root package name */
        public int f21025c;

        /* renamed from: d  reason: collision with root package name */
        public int f21026d = 0;

        public c(int i) {
            this.f21023a = new l[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$d.class */
    public static final class d implements AbstractC0428b {

        /* renamed from: a  reason: collision with root package name */
        private final int f21027a;

        /* renamed from: b  reason: collision with root package name */
        private final int f21028b;

        /* renamed from: c  reason: collision with root package name */
        private final u f21029c;

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
            if ((r0 % r0) != 0) goto L_0x0043;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public d(com.google.android.exoplayer2.extractor.f.a.b r5, com.google.android.exoplayer2.Format r6) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r5
                com.google.android.exoplayer2.util.u r0 = r0.f21017b
                r5 = r0
                r0 = r4
                r1 = r5
                r0.f21029c = r1
                r0 = r5
                r1 = 12
                r0.d(r1)
                r0 = r5
                int r0 = r0.o()
                r7 = r0
                r0 = r7
                r8 = r0
                java.lang.String r0 = "audio/raw"
                r1 = r6
                java.lang.String r1 = r1.sampleMimeType
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006e
                r0 = r6
                int r0 = r0.pcmEncoding
                r1 = r6
                int r1 = r1.channelCount
                int r0 = com.google.android.exoplayer2.util.af.c(r0, r1)
                r9 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0043
                r0 = r7
                r8 = r0
                r0 = r7
                r1 = r9
                int r0 = r0 % r1
                if (r0 == 0) goto L_0x006e
            L_0x0043:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "Audio sample size mismatch. stsd sample size: "
                r1.<init>(r2)
                r6 = r0
                r0 = r6
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                java.lang.String r1 = ", stsz sample size: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = "AtomParsers"
                r1 = r6
                java.lang.String r1 = r1.toString()
                com.google.android.exoplayer2.util.n.a(r0, r1)
                r0 = r9
                r8 = r0
            L_0x006e:
                r0 = r8
                r7 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0078
                r0 = -1
                r7 = r0
            L_0x0078:
                r0 = r4
                r1 = r7
                r0.f21027a = r1
                r0 = r4
                r1 = r5
                int r1 = r1.o()
                r0.f21028b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.d.<init>(com.google.android.exoplayer2.extractor.f.a$b, com.google.android.exoplayer2.Format):void");
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int a() {
            return this.f21028b;
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int b() {
            return this.f21027a;
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int c() {
            int i = this.f21027a;
            int i2 = i;
            if (i == -1) {
                i2 = this.f21029c.o();
            }
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$e.class */
    public static final class e implements AbstractC0428b {

        /* renamed from: a  reason: collision with root package name */
        private final u f21030a;

        /* renamed from: b  reason: collision with root package name */
        private final int f21031b;

        /* renamed from: c  reason: collision with root package name */
        private final int f21032c;

        /* renamed from: d  reason: collision with root package name */
        private int f21033d;
        private int e;

        public e(a.b bVar) {
            u uVar = bVar.f21017b;
            this.f21030a = uVar;
            uVar.d(12);
            this.f21032c = uVar.o() & 255;
            this.f21031b = uVar.o();
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int a() {
            return this.f21031b;
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int b() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.f.b.AbstractC0428b
        public final int c() {
            int i = this.f21032c;
            if (i == 8) {
                return this.f21030a.c();
            }
            if (i == 16) {
                return this.f21030a.d();
            }
            int i2 = this.f21033d;
            this.f21033d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.e & 15;
            }
            int c2 = this.f21030a.c();
            this.e = c2;
            return (c2 & 240) >> 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        final int f21034a;

        /* renamed from: b  reason: collision with root package name */
        final long f21035b;

        /* renamed from: c  reason: collision with root package name */
        final int f21036c;

        public f(int i, long j, int i2) {
            this.f21034a = i;
            this.f21035b = j;
            this.f21036c = i2;
        }
    }

    private b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b3, code lost:
        r4 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata> a(com.google.android.exoplayer2.extractor.f.a.b r4) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.a(com.google.android.exoplayer2.extractor.f.a$b):android.util.Pair");
    }

    private static Pair<Integer, l> a(u uVar, int i, int i2) {
        Pair<Integer, l> b2;
        int i3 = uVar.f22336b;
        while (i3 - i < i2) {
            uVar.d(i3);
            int j = uVar.j();
            com.google.android.exoplayer2.util.a.b(j > 0, "childAtomSize should be positive");
            if (uVar.j() == 1936289382 && (b2 = b(uVar, i3, j)) != null) {
                return b2;
            }
            i3 += j;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x0534  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.extractor.f.b.c a(com.google.android.exoplayer2.util.u r6, int r7, int r8, java.lang.String r9, com.google.android.exoplayer2.drm.DrmInitData r10, boolean r11) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 3574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.a(com.google.android.exoplayer2.util.u, int, int, java.lang.String, com.google.android.exoplayer2.drm.DrmInitData, boolean):com.google.android.exoplayer2.extractor.f.b$c");
    }

    private static l a(u uVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i >= i2) {
                return null;
            }
            uVar.d(i7);
            i6 = uVar.j();
            if (uVar.j() == 1952804451) {
                int a2 = com.google.android.exoplayer2.extractor.f.a.a(uVar.j());
                uVar.e(1);
                if (a2 == 0) {
                    uVar.e(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int c2 = uVar.c();
                    i3 = c2 & 15;
                    i4 = (c2 & 240) >> 4;
                }
                boolean z = uVar.c() == 1;
                int c3 = uVar.c();
                byte[] bArr = new byte[16];
                uVar.a(bArr, 0, 16);
                byte[] bArr2 = null;
                if (z) {
                    bArr2 = null;
                    if (c3 == 0) {
                        int c4 = uVar.c();
                        bArr2 = new byte[c4];
                        uVar.a(bArr2, 0, c4);
                    }
                }
                return new l(z, str, c3, bArr, i4, i3, bArr2);
            }
            i5 = i7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.extractor.f.n a(com.google.android.exoplayer2.extractor.f.k r15, com.google.android.exoplayer2.extractor.f.a.C0427a r16, com.google.android.exoplayer2.extractor.r r17) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 2565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.a(com.google.android.exoplayer2.extractor.f.k, com.google.android.exoplayer2.extractor.f.a$a, com.google.android.exoplayer2.extractor.r):com.google.android.exoplayer2.extractor.f.n");
    }

    public static Metadata a(a.C0427a aVar) {
        a.b c2 = aVar.c(1751411826);
        a.b c3 = aVar.c(1801812339);
        a.b c4 = aVar.c(1768715124);
        if (c2 == null || c3 == null || c4 == null || c(c2.f21017b) != 1835299937) {
            return null;
        }
        u uVar = c3.f21017b;
        uVar.d(12);
        int j = uVar.j();
        String[] strArr = new String[j];
        for (int i = 0; i < j; i++) {
            int j2 = uVar.j();
            uVar.e(4);
            strArr[i] = uVar.f(j2 - 8);
        }
        u uVar2 = c4.f21017b;
        uVar2.d(8);
        ArrayList arrayList = new ArrayList();
        while (uVar2.a() > 8) {
            int i2 = uVar2.f22336b;
            int j3 = uVar2.j();
            int j4 = uVar2.j() - 1;
            if (j4 < 0 || j4 >= j) {
                n.a("AtomParsers", "Skipped metadata with unknown key index: ".concat(String.valueOf(j4)));
            } else {
                MdtaMetadataEntry a2 = com.google.android.exoplayer2.extractor.f.f.a(uVar2, i2 + j3, strArr[j4]);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            uVar2.d(i2 + j3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Metadata a(u uVar, int i) {
        uVar.e(12);
        while (uVar.f22336b < i) {
            int i2 = uVar.f22336b;
            int j = uVar.j();
            if (uVar.j() != 1935766900) {
                uVar.d(i2 + j);
            } else if (j < 14) {
                return null;
            } else {
                uVar.e(5);
                int c2 = uVar.c();
                if (c2 != 12 && c2 != 13) {
                    return null;
                }
                float f2 = c2 == 12 ? 240.0f : 120.0f;
                uVar.e(1);
                return new Metadata(new SmtaMetadataEntry(f2, uVar.c()));
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r34v0, types: [long] */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.google.android.exoplayer2.extractor.f.n> a(com.google.android.exoplayer2.extractor.f.a.C0427a r17, com.google.android.exoplayer2.extractor.r r18, long r19, com.google.android.exoplayer2.drm.DrmInitData r21, boolean r22, boolean r23, com.google.common.base.Function<com.google.android.exoplayer2.extractor.f.k, com.google.android.exoplayer2.extractor.f.k> r24) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.a(com.google.android.exoplayer2.extractor.f.a$a, com.google.android.exoplayer2.extractor.r, long, com.google.android.exoplayer2.drm.DrmInitData, boolean, boolean, com.google.common.base.Function):java.util.List");
    }

    public static void a(u uVar) {
        int i = uVar.f22336b;
        uVar.e(4);
        int i2 = i;
        if (uVar.j() != 1751411826) {
            i2 = i + 4;
        }
        uVar.d(i2);
    }

    private static Pair<long[], long[]> b(a.C0427a aVar) {
        a.b c2 = aVar.c(1701606260);
        if (c2 == null) {
            return null;
        }
        u uVar = c2.f21017b;
        uVar.d(8);
        int a2 = com.google.android.exoplayer2.extractor.f.a.a(uVar.j());
        int o = uVar.o();
        long[] jArr = new long[o];
        long[] jArr2 = new long[o];
        for (int i = 0; i < o; i++) {
            jArr[i] = a2 == 1 ? uVar.q() : uVar.h();
            jArr2[i] = a2 == 1 ? uVar.l() : uVar.j();
            byte[] bArr = uVar.f22335a;
            int i2 = uVar.f22336b;
            uVar.f22336b = i2 + 1;
            byte b2 = bArr[i2];
            byte[] bArr2 = uVar.f22335a;
            int i3 = uVar.f22336b;
            uVar.f22336b = i3 + 1;
            if (((short) (((b2 & 255) << 8) | (bArr2[i3] & 255))) == 1) {
                uVar.e(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> b(u uVar, int i) {
        uVar.d(i + 8 + 4);
        uVar.e(1);
        d(uVar);
        uVar.e(2);
        int c2 = uVar.c();
        if ((c2 & 128) != 0) {
            uVar.e(2);
        }
        if ((c2 & 64) != 0) {
            uVar.e(uVar.d());
        }
        if ((c2 & 32) != 0) {
            uVar.e(2);
        }
        uVar.e(1);
        d(uVar);
        String a2 = q.a(uVar.c());
        if ("audio/mpeg".equals(a2) || "audio/vnd.dts".equals(a2) || "audio/vnd.dts.hd".equals(a2)) {
            return Pair.create(a2, null);
        }
        uVar.e(12);
        uVar.e(1);
        int d2 = d(uVar);
        byte[] bArr = new byte[d2];
        uVar.a(bArr, 0, d2);
        return Pair.create(a2, bArr);
    }

    private static Pair<Integer, l> b(u uVar, int i, int i2) {
        int i3 = i + 8;
        boolean z = false;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            uVar.d(i3);
            int j = uVar.j();
            int j2 = uVar.j();
            if (j2 == 1718775137) {
                num = Integer.valueOf(uVar.j());
                str = str;
            } else if (j2 == 1935894637) {
                uVar.e(4);
                str = uVar.f(4);
                num = num;
            } else {
                str = str;
                num = num;
                if (j2 == 1935894633) {
                    i4 = i3;
                    i5 = j;
                    num = num;
                    str = str;
                }
            }
            i3 += j;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        com.google.android.exoplayer2.util.a.a(num, "frma atom is mandatory");
        if (i4 != -1) {
            z = true;
        }
        com.google.android.exoplayer2.util.a.b(z, "schi atom is mandatory");
        return Pair.create(num, (l) com.google.android.exoplayer2.util.a.a(a(uVar, i4, i5, str), "tenc atom is mandatory"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.extractor.f.b.f b(com.google.android.exoplayer2.util.u r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.b.b(com.google.android.exoplayer2.util.u):com.google.android.exoplayer2.extractor.f.b$f");
    }

    private static int c(u uVar) {
        uVar.d(16);
        return uVar.j();
    }

    private static int d(u uVar) {
        int c2 = uVar.c();
        int i = c2 & 127;
        while ((c2 & 128) == 128) {
            c2 = uVar.c();
            i = (i << 7) | (c2 & 127);
        }
        return i;
    }
}
