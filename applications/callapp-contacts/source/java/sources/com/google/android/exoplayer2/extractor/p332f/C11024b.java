package com.google.android.exoplayer2.extractor.p332f;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.p332f.AbstractC11021a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.f.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b.class */
public final class C11024b {

    /* renamed from: a */
    private static final byte[] f35799a = C11599af.m19931c("OpusHead");

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$a.class */
    public static final class C11025a {

        /* renamed from: a */
        public final int f35800a;

        /* renamed from: b */
        public int f35801b;

        /* renamed from: c */
        public int f35802c;

        /* renamed from: d */
        public long f35803d;

        /* renamed from: e */
        private final boolean f35804e;

        /* renamed from: f */
        private final C11628u f35805f;

        /* renamed from: g */
        private final C11628u f35806g;

        /* renamed from: h */
        private int f35807h;

        /* renamed from: i */
        private int f35808i;

        public C11025a(C11628u c11628u, C11628u c11628u2, boolean z) {
            this.f35806g = c11628u;
            this.f35805f = c11628u2;
            this.f35804e = z;
            c11628u2.m19801d(12);
            this.f35800a = c11628u2.m19787o();
            c11628u.m19801d(12);
            this.f35808i = c11628u.m19787o();
            C11593a.m20018b(c11628u.m19792j() != 1 ? false : true, "first_chunk must be 1");
            this.f35801b = -1;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* renamed from: a */
        public final boolean m21664a() {
            int i = this.f35801b + 1;
            this.f35801b = i;
            if (i == this.f35800a) {
                return false;
            }
            this.f35803d = this.f35804e ? this.f35805f.m19785q() : this.f35805f.m19794h();
            if (this.f35801b != this.f35807h) {
                return true;
            }
            this.f35802c = this.f35806g.m19787o();
            this.f35806g.m19799e(4);
            int i2 = this.f35808i - 1;
            this.f35808i = i2;
            this.f35807h = i2 > 0 ? this.f35806g.m19787o() - 1 : -1;
            return true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$b.class */
    public interface AbstractC11026b {
        /* renamed from: a */
        int mo21663a();

        /* renamed from: b */
        int mo21662b();

        /* renamed from: c */
        int mo21661c();
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$c.class */
    public static final class C11027c {

        /* renamed from: a */
        public final C11047l[] f35809a;

        /* renamed from: b */
        public Format f35810b;

        /* renamed from: c */
        public int f35811c;

        /* renamed from: d */
        public int f35812d = 0;

        public C11027c(int i) {
            this.f35809a = new C11047l[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$d.class */
    public static final class C11028d implements AbstractC11026b {

        /* renamed from: a */
        private final int f35813a;

        /* renamed from: b */
        private final int f35814b;

        /* renamed from: c */
        private final C11628u f35815c;

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
            if ((r0 % r0) != 0) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C11028d(com.google.android.exoplayer2.extractor.p332f.AbstractC11021a.C11023b r5, com.google.android.exoplayer2.Format r6) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r5
                com.google.android.exoplayer2.util.u r0 = r0.f35798b
                r5 = r0
                r0 = r4
                r1 = r5
                r0.f35815c = r1
                r0 = r5
                r1 = 12
                r0.m19801d(r1)
                r0 = r5
                int r0 = r0.m19787o()
                r7 = r0
                r0 = r7
                r8 = r0
                java.lang.String r0 = "audio/raw"
                r1 = r6
                java.lang.String r1 = r1.sampleMimeType
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L6e
                r0 = r6
                int r0 = r0.pcmEncoding
                r1 = r6
                int r1 = r1.channelCount
                int r0 = com.google.android.exoplayer2.util.C11599af.m19934c(r0, r1)
                r9 = r0
                r0 = r7
                if (r0 == 0) goto L43
                r0 = r7
                r8 = r0
                r0 = r7
                r1 = r9
                int r0 = r0 % r1
                if (r0 == 0) goto L6e
            L43:
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
                com.google.android.exoplayer2.util.C11617n.m19863a(r0, r1)
                r0 = r9
                r8 = r0
            L6e:
                r0 = r8
                r7 = r0
                r0 = r8
                if (r0 != 0) goto L78
                r0 = -1
                r7 = r0
            L78:
                r0 = r4
                r1 = r7
                r0.f35813a = r1
                r0 = r4
                r1 = r5
                int r1 = r1.m19787o()
                r0.f35814b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11024b.C11028d.<init>(com.google.android.exoplayer2.extractor.f.a$b, com.google.android.exoplayer2.Format):void");
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: a */
        public final int mo21663a() {
            return this.f35814b;
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: b */
        public final int mo21662b() {
            return this.f35813a;
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: c */
        public final int mo21661c() {
            int i = this.f35813a;
            int i2 = i;
            if (i == -1) {
                i2 = this.f35815c.m19787o();
            }
            return i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$e.class */
    public static final class C11029e implements AbstractC11026b {

        /* renamed from: a */
        private final C11628u f35816a;

        /* renamed from: b */
        private final int f35817b;

        /* renamed from: c */
        private final int f35818c;

        /* renamed from: d */
        private int f35819d;

        /* renamed from: e */
        private int f35820e;

        public C11029e(AbstractC11021a.C11023b c11023b) {
            C11628u c11628u = c11023b.f35798b;
            this.f35816a = c11628u;
            c11628u.m19801d(12);
            this.f35818c = c11628u.m19787o() & 255;
            this.f35817b = c11628u.m19787o();
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: a */
        public final int mo21663a() {
            return this.f35817b;
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: b */
        public final int mo21662b() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.C11024b.AbstractC11026b
        /* renamed from: c */
        public final int mo21661c() {
            int i = this.f35818c;
            if (i == 8) {
                return this.f35816a.m19804c();
            }
            if (i == 16) {
                return this.f35816a.m19802d();
            }
            int i2 = this.f35819d;
            this.f35819d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f35820e & 15;
            }
            int m19804c = this.f35816a.m19804c();
            this.f35820e = m19804c;
            return (m19804c & 240) >> 4;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.b$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/b$f.class */
    public static final class C11030f {

        /* renamed from: a */
        final int f35821a;

        /* renamed from: b */
        final long f35822b;

        /* renamed from: c */
        final int f35823c;

        public C11030f(int i, long j, int i2) {
            this.f35821a = i;
            this.f35822b = j;
            this.f35823c = i2;
        }
    }

    private C11024b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b3, code lost:
        r4 = null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata> m21677a(com.google.android.exoplayer2.extractor.p332f.AbstractC11021a.C11023b r4) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11024b.m21677a(com.google.android.exoplayer2.extractor.f.a$b):android.util.Pair");
    }

    /* renamed from: a */
    private static Pair<Integer, C11047l> m21673a(C11628u c11628u, int i, int i2) {
        Pair<Integer, C11047l> m21667b;
        int i3 = c11628u.f38734b;
        while (true) {
            int i4 = i3;
            if (i4 - i < i2) {
                c11628u.m19801d(i4);
                int m19792j = c11628u.m19792j();
                C11593a.m20018b(m19792j > 0, "childAtomSize should be positive");
                if (c11628u.m19792j() == 1936289382 && (m21667b = m21667b(c11628u, i4, m19792j)) != null) {
                    return m21667b;
                }
                i3 = i4 + m19792j;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x0534  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.extractor.p332f.C11024b.C11027c m21671a(com.google.android.exoplayer2.util.C11628u r6, int r7, int r8, java.lang.String r9, com.google.android.exoplayer2.drm.DrmInitData r10, boolean r11) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 3574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11024b.m21671a(com.google.android.exoplayer2.util.u, int, int, java.lang.String, com.google.android.exoplayer2.drm.DrmInitData, boolean):com.google.android.exoplayer2.extractor.f.b$c");
    }

    /* renamed from: a */
    private static C11047l m21672a(C11628u c11628u, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i < i2) {
                c11628u.m19801d(i7);
                int m19792j = c11628u.m19792j();
                if (c11628u.m19792j() == 1952804451) {
                    int m21685a = AbstractC11021a.m21685a(c11628u.m19792j());
                    c11628u.m19799e(1);
                    if (m21685a == 0) {
                        c11628u.m19799e(1);
                        i4 = 0;
                        i3 = 0;
                    } else {
                        int m19804c = c11628u.m19804c();
                        i3 = m19804c & 15;
                        i4 = (m19804c & 240) >> 4;
                    }
                    boolean z = c11628u.m19804c() == 1;
                    int m19804c2 = c11628u.m19804c();
                    byte[] bArr = new byte[16];
                    c11628u.m19807a(bArr, 0, 16);
                    byte[] bArr2 = null;
                    if (z) {
                        bArr2 = null;
                        if (m19804c2 == 0) {
                            int m19804c3 = c11628u.m19804c();
                            bArr2 = new byte[m19804c3];
                            c11628u.m19807a(bArr2, 0, m19804c3);
                        }
                    }
                    return new C11047l(z, str, m19804c2, bArr, i4, i3, bArr2);
                }
                i5 = i7;
                i6 = m19792j;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02dc  */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v273, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    /* JADX WARN: Type inference failed for: r0v361, types: [long] */
    /* JADX WARN: Type inference failed for: r0v406, types: [long] */
    /* JADX WARN: Type inference failed for: r0v450, types: [long] */
    /* JADX WARN: Type inference failed for: r0v455 */
    /* JADX WARN: Type inference failed for: r0v466, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.extractor.p332f.C11049n m21676a(com.google.android.exoplayer2.extractor.p332f.C11046k r15, com.google.android.exoplayer2.extractor.p332f.AbstractC11021a.C11022a r16, com.google.android.exoplayer2.extractor.C11142r r17) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 2565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11024b.m21676a(com.google.android.exoplayer2.extractor.f.k, com.google.android.exoplayer2.extractor.f.a$a, com.google.android.exoplayer2.extractor.r):com.google.android.exoplayer2.extractor.f.n");
    }

    /* renamed from: a */
    public static Metadata m21679a(AbstractC11021a.C11022a c11022a) {
        AbstractC11021a.C11023b m21681c = c11022a.m21681c(1751411826);
        AbstractC11021a.C11023b m21681c2 = c11022a.m21681c(1801812339);
        AbstractC11021a.C11023b m21681c3 = c11022a.m21681c(1768715124);
        if (m21681c == null || m21681c2 == null || m21681c3 == null || m21666c(m21681c.f35798b) != 1835299937) {
            return null;
        }
        C11628u c11628u = m21681c2.f35798b;
        c11628u.m19801d(12);
        int m19792j = c11628u.m19792j();
        String[] strArr = new String[m19792j];
        for (int i = 0; i < m19792j; i++) {
            int m19792j2 = c11628u.m19792j();
            c11628u.m19799e(4);
            strArr[i] = c11628u.m19797f(m19792j2 - 8);
        }
        C11628u c11628u2 = m21681c3.f35798b;
        c11628u2.m19801d(8);
        ArrayList arrayList = new ArrayList();
        while (c11628u2.m19812a() > 8) {
            int i2 = c11628u2.f38734b;
            int m19792j3 = c11628u2.m19792j();
            int m19792j4 = c11628u2.m19792j() - 1;
            if (m19792j4 < 0 || m19792j4 >= m19792j) {
                C11617n.m19863a("AtomParsers", "Skipped metadata with unknown key index: ".concat(String.valueOf(m19792j4)));
            } else {
                MdtaMetadataEntry m21620a = C11038f.m21620a(c11628u2, i2 + m19792j3, strArr[m19792j4]);
                if (m21620a != null) {
                    arrayList.add(m21620a);
                }
            }
            c11628u2.m19801d(i2 + m19792j3);
        }
        if (!arrayList.isEmpty()) {
            return new Metadata(arrayList);
        }
        return null;
    }

    /* renamed from: a */
    private static Metadata m21674a(C11628u c11628u, int i) {
        c11628u.m19799e(12);
        while (c11628u.f38734b < i) {
            int i2 = c11628u.f38734b;
            int m19792j = c11628u.m19792j();
            if (c11628u.m19792j() == 1935766900) {
                if (m19792j < 14) {
                    return null;
                }
                c11628u.m19799e(5);
                int m19804c = c11628u.m19804c();
                if (m19804c != 12 && m19804c != 13) {
                    return null;
                }
                float f = m19804c == 12 ? 240.0f : 120.0f;
                c11628u.m19799e(1);
                return new Metadata(new SmtaMetadataEntry(f, c11628u.m19804c()));
            }
            c11628u.m19801d(i2 + m19792j);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.google.android.exoplayer2.extractor.p332f.C11049n> m21678a(com.google.android.exoplayer2.extractor.p332f.AbstractC11021a.C11022a r17, com.google.android.exoplayer2.extractor.C11142r r18, long r19, com.google.android.exoplayer2.drm.DrmInitData r21, boolean r22, boolean r23, com.google.common.base.Function<com.google.android.exoplayer2.extractor.p332f.C11046k, com.google.android.exoplayer2.extractor.p332f.C11046k> r24) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11024b.m21678a(com.google.android.exoplayer2.extractor.f.a$a, com.google.android.exoplayer2.extractor.r, long, com.google.android.exoplayer2.drm.DrmInitData, boolean, boolean, com.google.common.base.Function):java.util.List");
    }

    /* renamed from: a */
    public static void m21675a(C11628u c11628u) {
        int i = c11628u.f38734b;
        c11628u.m19799e(4);
        int i2 = i;
        if (c11628u.m19792j() != 1751411826) {
            i2 = i + 4;
        }
        c11628u.m19801d(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: b */
    private static Pair<long[], long[]> m21670b(AbstractC11021a.C11022a c11022a) {
        AbstractC11021a.C11023b m21681c = c11022a.m21681c(1701606260);
        if (m21681c == null) {
            return null;
        }
        C11628u c11628u = m21681c.f35798b;
        c11628u.m19801d(8);
        int m21685a = AbstractC11021a.m21685a(c11628u.m19792j());
        int m19787o = c11628u.m19787o();
        long[] jArr = new long[m19787o];
        long[] jArr2 = new long[m19787o];
        for (int i = 0; i < m19787o; i++) {
            jArr[i] = (m21685a == 1 ? c11628u.m19785q() : c11628u.m19794h()) == true ? 1 : 0;
            jArr2[i] = (m21685a == 1 ? c11628u.m19790l() : (long) c11628u.m19792j()) == true ? 1 : 0;
            byte[] bArr = c11628u.f38733a;
            int i2 = c11628u.f38734b;
            c11628u.f38734b = i2 + 1;
            byte b = bArr[i2];
            byte[] bArr2 = c11628u.f38733a;
            int i3 = c11628u.f38734b;
            c11628u.f38734b = i3 + 1;
            if (((short) (((b & 255) << 8) | (bArr2[i3] & 255))) != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            c11628u.m19799e(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: b */
    private static Pair<String, byte[]> m21668b(C11628u c11628u, int i) {
        c11628u.m19801d(i + 8 + 4);
        c11628u.m19799e(1);
        m21665d(c11628u);
        c11628u.m19799e(2);
        int m19804c = c11628u.m19804c();
        if ((m19804c & 128) != 0) {
            c11628u.m19799e(2);
        }
        if ((m19804c & 64) != 0) {
            c11628u.m19799e(c11628u.m19802d());
        }
        if ((m19804c & 32) != 0) {
            c11628u.m19799e(2);
        }
        c11628u.m19799e(1);
        m21665d(c11628u);
        String m19854a = C11620q.m19854a(c11628u.m19804c());
        if ("audio/mpeg".equals(m19854a) || "audio/vnd.dts".equals(m19854a) || "audio/vnd.dts.hd".equals(m19854a)) {
            return Pair.create(m19854a, null);
        }
        c11628u.m19799e(12);
        c11628u.m19799e(1);
        int m21665d = m21665d(c11628u);
        byte[] bArr = new byte[m21665d];
        c11628u.m19807a(bArr, 0, m21665d);
        return Pair.create(m19854a, bArr);
    }

    /* renamed from: b */
    private static Pair<Integer, C11047l> m21667b(C11628u c11628u, int i, int i2) {
        String str;
        Integer num;
        int i3 = i + 8;
        boolean z = false;
        String str2 = null;
        Integer num2 = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            c11628u.m19801d(i3);
            int m19792j = c11628u.m19792j();
            int m19792j2 = c11628u.m19792j();
            if (m19792j2 == 1718775137) {
                num = Integer.valueOf(c11628u.m19792j());
                str = str2;
            } else if (m19792j2 == 1935894637) {
                c11628u.m19799e(4);
                str = c11628u.m19797f(4);
                num = num2;
            } else {
                str = str2;
                num = num2;
                if (m19792j2 == 1935894633) {
                    i4 = i3;
                    i5 = m19792j;
                    num = num2;
                    str = str2;
                }
            }
            i3 += m19792j;
            str2 = str;
            num2 = num;
        }
        if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
            C11593a.m20023a(num2, "frma atom is mandatory");
            if (i4 != -1) {
                z = true;
            }
            C11593a.m20018b(z, "schi atom is mandatory");
            return Pair.create(num2, (C11047l) C11593a.m20023a(m21672a(c11628u, i4, i5, str2), "tenc atom is mandatory"));
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: b */
    private static C11030f m21669b(C11628u c11628u) {
        boolean z;
        char c;
        int i;
        c11628u.m19801d(8);
        int m21685a = AbstractC11021a.m21685a(c11628u.m19792j());
        c11628u.m19799e(m21685a == 0 ? 8 : 16);
        int m19792j = c11628u.m19792j();
        c11628u.m19799e(4);
        int i2 = c11628u.f38734b;
        int i3 = 8;
        if (m21685a == 0) {
            i3 = 4;
        }
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z = true;
                break;
            } else if (c11628u.f38733a[i2 + i4] != -1) {
                z = false;
                break;
            } else {
                i4++;
            }
        }
        if (z) {
            c11628u.m19799e(i3);
            c = 1;
        } else {
            c = m21685a == 0 ? c11628u.m19794h() : c11628u.m19785q();
            if (c == 0) {
                c = 1;
            }
        }
        c11628u.m19799e(16);
        int m19792j2 = c11628u.m19792j();
        int m19792j3 = c11628u.m19792j();
        c11628u.m19799e(4);
        int m19792j4 = c11628u.m19792j();
        int m19792j5 = c11628u.m19792j();
        if (m19792j2 == 0 && m19792j3 == 65536 && m19792j4 == -65536 && m19792j5 == 0) {
            i = 90;
        } else if (m19792j2 == 0 && m19792j3 == -65536 && m19792j4 == 65536 && m19792j5 == 0) {
            i = 270;
        } else {
            i = 0;
            if (m19792j2 == -65536) {
                i = 0;
                if (m19792j3 == 0) {
                    i = 0;
                    if (m19792j4 == 0) {
                        i = 0;
                        if (m19792j5 == -65536) {
                            i = 180;
                        }
                    }
                }
            }
        }
        return new C11030f(m19792j, c, i);
    }

    /* renamed from: c */
    private static int m21666c(C11628u c11628u) {
        c11628u.m19801d(16);
        return c11628u.m19792j();
    }

    /* renamed from: d */
    private static int m21665d(C11628u c11628u) {
        int m19804c = c11628u.m19804c();
        int i = m19804c & 127;
        while (true) {
            int i2 = i;
            if ((m19804c & 128) == 128) {
                m19804c = c11628u.m19804c();
                i = (i2 << 7) | (m19804c & 127);
            } else {
                return i2;
            }
        }
    }
}
