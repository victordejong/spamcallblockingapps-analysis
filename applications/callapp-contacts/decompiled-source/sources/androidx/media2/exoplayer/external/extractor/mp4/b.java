package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.a;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3318a = ac.c("OpusHead");

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3319a;

        /* renamed from: b  reason: collision with root package name */
        public int f3320b;

        /* renamed from: c  reason: collision with root package name */
        public int f3321c;

        /* renamed from: d  reason: collision with root package name */
        public long f3322d;
        private final boolean e;
        private final p f;
        private final p g;
        private int h;
        private int i;

        public a(p pVar, p pVar2, boolean z) {
            this.g = pVar;
            this.f = pVar2;
            this.e = z;
            pVar2.c(12);
            this.f3319a = pVar2.n();
            pVar.c(12);
            this.i = pVar.n();
            androidx.media2.exoplayer.external.util.a.b(pVar.i() != 1 ? false : true, "first_chunk must be 1");
            this.f3320b = -1;
        }

        public final boolean a() {
            int i = this.f3320b + 1;
            this.f3320b = i;
            if (i == this.f3319a) {
                return false;
            }
            this.f3322d = this.e ? this.f.p() : this.f.g();
            if (this.f3320b != this.h) {
                return true;
            }
            this.f3321c = this.g.n();
            this.g.d(4);
            int i2 = this.i - 1;
            this.i = i2;
            this.h = i2 > 0 ? this.g.n() - 1 : -1;
            return true;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$b.class */
    interface AbstractC0082b {
        int a();

        int b();

        boolean c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final m[] f3323a;

        /* renamed from: b  reason: collision with root package name */
        public Format f3324b;

        /* renamed from: c  reason: collision with root package name */
        public int f3325c;

        /* renamed from: d  reason: collision with root package name */
        public int f3326d = 0;

        public c(int i) {
            this.f3323a = new m[i];
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$d.class */
    static final class d implements AbstractC0082b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3327a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3328b;

        /* renamed from: c  reason: collision with root package name */
        private final p f3329c;

        public d(a.b bVar) {
            p pVar = bVar.f3317b;
            this.f3329c = pVar;
            pVar.c(12);
            this.f3327a = pVar.n();
            this.f3328b = pVar.n();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final int a() {
            return this.f3328b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final int b() {
            int i = this.f3327a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f3329c.n();
            }
            return i2;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final boolean c() {
            return this.f3327a != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$e.class */
    static final class e implements AbstractC0082b {

        /* renamed from: a  reason: collision with root package name */
        private final p f3330a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3331b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3332c;

        /* renamed from: d  reason: collision with root package name */
        private int f3333d;
        private int e;

        public e(a.b bVar) {
            p pVar = bVar.f3317b;
            this.f3330a = pVar;
            pVar.c(12);
            this.f3332c = pVar.n() & 255;
            this.f3331b = pVar.n();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final int a() {
            return this.f3331b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final int b() {
            int i = this.f3332c;
            if (i == 8) {
                return this.f3330a.c();
            }
            if (i == 16) {
                return this.f3330a.d();
            }
            int i2 = this.f3333d;
            this.f3333d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.e & 15;
            }
            int c2 = this.f3330a.c();
            this.e = c2;
            return (c2 & 240) >> 4;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.b.AbstractC0082b
        public final boolean c() {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$f.class */
    static final class f {

        /* renamed from: a  reason: collision with root package name */
        final int f3334a;

        /* renamed from: b  reason: collision with root package name */
        final long f3335b;

        /* renamed from: c  reason: collision with root package name */
        final int f3336c;

        public f(int i, long j, int i2) {
            this.f3334a = i;
            this.f3335b = j;
            this.f3336c = i2;
        }
    }

    private b() {
    }

    private static int a(p pVar) {
        pVar.c(16);
        return pVar.i();
    }

    private static Pair<String, byte[]> a(p pVar, int i) {
        pVar.c(i + 8 + 4);
        pVar.d(1);
        b(pVar);
        pVar.d(2);
        int c2 = pVar.c();
        if ((c2 & 128) != 0) {
            pVar.d(2);
        }
        if ((c2 & 64) != 0) {
            pVar.d(pVar.d());
        }
        if ((c2 & 32) != 0) {
            pVar.d(2);
        }
        pVar.d(1);
        b(pVar);
        String a2 = m.a(pVar.c());
        if ("audio/mpeg".equals(a2) || "audio/vnd.dts".equals(a2) || "audio/vnd.dts.hd".equals(a2)) {
            return Pair.create(a2, null);
        }
        pVar.d(12);
        pVar.d(1);
        int b2 = b(pVar);
        byte[] bArr = new byte[b2];
        pVar.a(bArr, 0, b2);
        return Pair.create(a2, bArr);
    }

    private static Pair<Integer, m> a(p pVar, int i, int i2) {
        Pair<Integer, m> b2;
        int i3 = pVar.f4167b;
        while (i3 - i < i2) {
            pVar.c(i3);
            int i4 = pVar.i();
            androidx.media2.exoplayer.external.util.a.a(i4 > 0, "childAtomSize should be positive");
            if (pVar.i() == 1936289382 && (b2 = b(pVar, i3, i4)) != null) {
                return b2;
            }
            i3 += i4;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x075d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.extractor.mp4.b.c a(androidx.media2.exoplayer.external.util.p r17, int r18, int r19, java.lang.String r20, androidx.media2.exoplayer.external.drm.DrmInitData r21, boolean r22) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 1983
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.b.a(androidx.media2.exoplayer.external.util.p, int, int, java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData, boolean):androidx.media2.exoplayer.external.extractor.mp4.b$c");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012d, code lost:
        if (r36 == 0) goto L_0x0107;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r34v0, types: [long] */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r36v1, types: [long] */
    /* JADX WARN: Type inference failed for: r36v4 */
    /* JADX WARN: Type inference failed for: r36v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.l a(androidx.media2.exoplayer.external.extractor.mp4.a.C0081a r17, androidx.media2.exoplayer.external.extractor.mp4.a.b r18, long r19, androidx.media2.exoplayer.external.drm.DrmInitData r21, boolean r22, boolean r23) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.b.a(androidx.media2.exoplayer.external.extractor.mp4.a$a, androidx.media2.exoplayer.external.extractor.mp4.a$b, long, androidx.media2.exoplayer.external.drm.DrmInitData, boolean, boolean):androidx.media2.exoplayer.external.extractor.mp4.l");
    }

    private static m a(p pVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i >= i2) {
                return null;
            }
            pVar.c(i7);
            i6 = pVar.i();
            if (pVar.i() == 1952804451) {
                int a2 = androidx.media2.exoplayer.external.extractor.mp4.a.a(pVar.i());
                pVar.d(1);
                if (a2 == 0) {
                    pVar.d(1);
                    i3 = 0;
                    i4 = 0;
                } else {
                    int c2 = pVar.c();
                    i4 = c2 & 15;
                    i3 = (c2 & 240) >> 4;
                }
                boolean z = pVar.c() == 1;
                int c3 = pVar.c();
                byte[] bArr = new byte[16];
                pVar.a(bArr, 0, 16);
                byte[] bArr2 = null;
                if (z) {
                    bArr2 = null;
                    if (c3 == 0) {
                        int c4 = pVar.c();
                        bArr2 = new byte[c4];
                        pVar.a(bArr2, 0, c4);
                    }
                }
                return new m(z, str, c3, bArr, i3, i4, bArr2);
            }
            i5 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.o a(androidx.media2.exoplayer.external.extractor.mp4.l r15, androidx.media2.exoplayer.external.extractor.mp4.a.C0081a r16, androidx.media2.exoplayer.external.extractor.k r17) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 2338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.b.a(androidx.media2.exoplayer.external.extractor.mp4.l, androidx.media2.exoplayer.external.extractor.mp4.a$a, androidx.media2.exoplayer.external.extractor.k):androidx.media2.exoplayer.external.extractor.mp4.o");
    }

    public static Metadata a(a.C0081a aVar) {
        a.b c2 = aVar.c(1751411826);
        a.b c3 = aVar.c(1801812339);
        a.b c4 = aVar.c(1768715124);
        if (c2 == null || c3 == null || c4 == null || a(c2.f3317b) != 1835299937) {
            return null;
        }
        p pVar = c3.f3317b;
        pVar.c(12);
        int i = pVar.i();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = pVar.i();
            pVar.d(4);
            strArr[i2] = pVar.e(i3 - 8);
        }
        p pVar2 = c4.f3317b;
        pVar2.c(8);
        ArrayList arrayList = new ArrayList();
        while (pVar2.b() > 8) {
            int i4 = pVar2.f4167b;
            int i5 = pVar2.i();
            int i6 = pVar2.i() - 1;
            if (i6 < 0 || i6 >= i) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(i6);
                j.a("AtomParsers", sb.toString());
            } else {
                MdtaMetadataEntry a2 = g.a(pVar2, i4 + i5, strArr[i6]);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            pVar2.c(i4 + i5);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Metadata a(a.b bVar, boolean z) {
        if (z) {
            return null;
        }
        p pVar = bVar.f3317b;
        pVar.c(8);
        while (pVar.b() >= 8) {
            int i = pVar.f4167b;
            int i2 = pVar.i();
            if (pVar.i() == 1835365473) {
                pVar.c(i);
                pVar.d(12);
                while (pVar.f4167b < i + i2) {
                    int i3 = pVar.f4167b;
                    int i4 = pVar.i();
                    if (pVar.i() == 1768715124) {
                        pVar.c(i3);
                        pVar.d(8);
                        ArrayList arrayList = new ArrayList();
                        while (pVar.f4167b < i3 + i4) {
                            Metadata.Entry a2 = g.a(pVar);
                            if (a2 != null) {
                                arrayList.add(a2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new Metadata(arrayList);
                        }
                        return null;
                    }
                    pVar.c(i3 + i4);
                }
                return null;
            }
            pVar.c(i + i2);
        }
        return null;
    }

    private static void a(p pVar, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, c cVar, int i5) throws ParserException {
        int i6;
        int i7;
        int i8;
        int i9;
        pVar.c(i2 + 8 + 8);
        if (z) {
            i6 = pVar.d();
            pVar.d(6);
        } else {
            pVar.d(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i7 = pVar.d();
            pVar.d(6);
            byte[] bArr = pVar.f4166a;
            int i10 = pVar.f4167b;
            pVar.f4167b = i10 + 1;
            byte b2 = bArr[i10];
            byte[] bArr2 = pVar.f4166a;
            int i11 = pVar.f4167b;
            pVar.f4167b = i11 + 1;
            i8 = (bArr2[i11] & 255) | ((b2 & 255) << 8);
            pVar.f4167b += 2;
            if (i6 == 1) {
                pVar.d(16);
            }
        } else if (i6 == 2) {
            pVar.d(16);
            i8 = (int) Math.round(Double.longBitsToDouble(pVar.k()));
            i7 = pVar.n();
            pVar.d(20);
        } else {
            return;
        }
        int i12 = pVar.f4167b;
        List list = null;
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733217) {
            Pair<Integer, m> a2 = a(pVar, i2, i3);
            drmInitData2 = drmInitData;
            if (a2 != null) {
                i = ((Integer) a2.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((m) a2.second).f3375b);
                cVar.f3323a[i5] = (m) a2.second;
            }
            pVar.c(i12);
        }
        String str2 = i == 1633889587 ? "audio/ac3" : i == 1700998451 ? "audio/eac3" : i == 1633889588 ? "audio/ac4" : i == 1685353315 ? "audio/vnd.dts" : (i == 1685353320 || i == 1685353324) ? "audio/vnd.dts.hd" : i == 1685353317 ? "audio/vnd.dts.hd;profile=lbr" : i == 1935764850 ? "audio/3gpp" : i == 1935767394 ? "audio/amr-wb" : (i == 1819304813 || i == 1936684916) ? "audio/raw" : i == 778924083 ? "audio/mpeg" : i == 1634492771 ? "audio/alac" : i == 1634492791 ? "audio/g711-alaw" : i == 1970037111 ? "audio/g711-mlaw" : i == 1332770163 ? "audio/opus" : i == 1716281667 ? "audio/flac" : null;
        byte[] bArr3 = null;
        int i13 = i12;
        while (i13 - i2 < i3) {
            pVar.c(i13);
            int i14 = pVar.i();
            androidx.media2.exoplayer.external.util.a.a(i14 > 0, "childAtomSize should be positive");
            int i15 = pVar.i();
            if (i15 == 1702061171 || (z && i15 == 2002876005)) {
                if (i15 != 1702061171) {
                    i9 = pVar.f4167b;
                    while (true) {
                        if (i9 - i13 >= i14) {
                            i9 = -1;
                            break;
                        }
                        pVar.c(i9);
                        int i16 = pVar.i();
                        androidx.media2.exoplayer.external.util.a.a(i16 > 0, "childAtomSize should be positive");
                        if (pVar.i() == 1702061171) {
                            break;
                        }
                        i9 += i16;
                    }
                } else {
                    i9 = i13;
                }
                if (i9 != -1) {
                    Pair<String, byte[]> a3 = a(pVar, i9);
                    String str3 = (String) a3.first;
                    byte[] bArr4 = (byte[]) a3.second;
                    str2 = str3;
                    bArr3 = bArr4;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair<Integer, Integer> a4 = androidx.media2.exoplayer.external.util.c.a(bArr4);
                        i8 = ((Integer) a4.first).intValue();
                        i7 = ((Integer) a4.second).intValue();
                        bArr3 = bArr4;
                        str2 = str3;
                    }
                }
            } else if (i15 == 1684103987) {
                pVar.c(i13 + 8);
                cVar.f3324b = androidx.media2.exoplayer.external.audio.a.a(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (i15 == 1684366131) {
                pVar.c(i13 + 8);
                cVar.f3324b = androidx.media2.exoplayer.external.audio.a.b(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (i15 == 1684103988) {
                pVar.c(i13 + 8);
                cVar.f3324b = androidx.media2.exoplayer.external.audio.b.a(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (i15 == 1684305011) {
                cVar.f3324b = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, null, drmInitData2, 0, str);
            } else if (i15 == 1682927731) {
                int i17 = i14 - 8;
                byte[] bArr5 = f3318a;
                bArr3 = new byte[bArr5.length + i17];
                System.arraycopy(bArr5, 0, bArr3, 0, bArr5.length);
                pVar.c(i13 + 8);
                pVar.a(bArr3, bArr5.length, i17);
            } else if (i14 == 1684425825 || i15 == 1634492771) {
                int i18 = i14 - 12;
                bArr3 = new byte[i18];
                pVar.c(i13 + 12);
                pVar.a(bArr3, 0, i18);
            }
            i13 += i14;
        }
        if (cVar.f3324b == null && str2 != null) {
            int i19 = "audio/raw".equals(str2) ? 2 : -1;
            String num = Integer.toString(i4);
            if (bArr3 != null) {
                list = Collections.singletonList(bArr3);
            }
            cVar.f3324b = Format.createAudioSampleFormat(num, str2, null, -1, -1, i7, i8, i19, list, drmInitData2, 0, str);
        }
    }

    private static int b(p pVar) {
        int c2 = pVar.c();
        int i = c2 & 127;
        while ((c2 & 128) == 128) {
            c2 = pVar.c();
            i = (i << 7) | (c2 & 127);
        }
        return i;
    }

    private static Pair<long[], long[]> b(a.C0081a aVar) {
        a.b c2;
        if (aVar == null || (c2 = aVar.c(1701606260)) == null) {
            return Pair.create(null, null);
        }
        p pVar = c2.f3317b;
        pVar.c(8);
        int a2 = androidx.media2.exoplayer.external.extractor.mp4.a.a(pVar.i());
        int n = pVar.n();
        long[] jArr = new long[n];
        long[] jArr2 = new long[n];
        for (int i = 0; i < n; i++) {
            jArr[i] = a2 == 1 ? pVar.p() : pVar.g();
            jArr2[i] = a2 == 1 ? pVar.k() : pVar.i();
            byte[] bArr = pVar.f4166a;
            int i2 = pVar.f4167b;
            pVar.f4167b = i2 + 1;
            byte b2 = bArr[i2];
            byte[] bArr2 = pVar.f4166a;
            int i3 = pVar.f4167b;
            pVar.f4167b = i3 + 1;
            if (((short) (((b2 & 255) << 8) | (bArr2[i3] & 255))) == 1) {
                pVar.d(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<Integer, m> b(p pVar, int i, int i2) {
        int i3 = i + 8;
        boolean z = false;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            pVar.c(i3);
            int i6 = pVar.i();
            int i7 = pVar.i();
            if (i7 == 1718775137) {
                num = Integer.valueOf(pVar.i());
                str = str;
            } else if (i7 == 1935894637) {
                pVar.d(4);
                str = pVar.e(4);
                num = num;
            } else {
                str = str;
                num = num;
                if (i7 == 1935894633) {
                    i4 = i3;
                    i5 = i6;
                    num = num;
                    str = str;
                }
            }
            i3 += i6;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        androidx.media2.exoplayer.external.util.a.a(num != null, "frma atom is mandatory");
        androidx.media2.exoplayer.external.util.a.a(i4 != -1, "schi atom is mandatory");
        m a2 = a(pVar, i4, i5, str);
        if (a2 != null) {
            z = true;
        }
        androidx.media2.exoplayer.external.util.a.a(z, "tenc atom is mandatory");
        return Pair.create(num, a2);
    }

    private static byte[] c(p pVar, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i >= i2) {
                return null;
            }
            pVar.c(i5);
            int i6 = pVar.i();
            if (pVar.i() == 1886547818) {
                return Arrays.copyOfRange(pVar.f4166a, i5, i6 + i5);
            }
            i3 = i5;
            i4 = i6;
        }
    }
}
