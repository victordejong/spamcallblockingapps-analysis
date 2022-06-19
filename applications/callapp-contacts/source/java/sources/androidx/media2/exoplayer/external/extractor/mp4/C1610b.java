package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.C1394a;
import androidx.media2.exoplayer.external.audio.C1398b;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.C1603k;
import androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a;
import androidx.media2.exoplayer.external.extractor.mp4.C1618d;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2000c;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b.class */
public final class C1610b {

    /* renamed from: a */
    private static final byte[] f6338a = C1996ac.m41623c("OpusHead");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$a.class */
    public static final class C1611a {

        /* renamed from: a */
        public final int f6339a;

        /* renamed from: b */
        public int f6340b;

        /* renamed from: c */
        public int f6341c;

        /* renamed from: d */
        public long f6342d;

        /* renamed from: e */
        private final boolean f6343e;

        /* renamed from: f */
        private final C2018p f6344f;

        /* renamed from: g */
        private final C2018p f6345g;

        /* renamed from: h */
        private int f6346h;

        /* renamed from: i */
        private int f6347i;

        public C1611a(C2018p c2018p, C2018p c2018p2, boolean z) {
            this.f6345g = c2018p;
            this.f6344f = c2018p2;
            this.f6343e = z;
            c2018p2.m41533c(12);
            this.f6339a = c2018p2.m41519n();
            c2018p.m41533c(12);
            this.f6347i = c2018p.m41519n();
            C1993a.m41685b(c2018p.m41524i() != 1 ? false : true, "first_chunk must be 1");
            this.f6340b = -1;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* renamed from: a */
        public final boolean m42573a() {
            int i = this.f6340b + 1;
            this.f6340b = i;
            if (i == this.f6339a) {
                return false;
            }
            this.f6342d = this.f6343e ? this.f6344f.m41517p() : this.f6344f.m41526g();
            if (this.f6340b != this.f6346h) {
                return true;
            }
            this.f6341c = this.f6345g.m41519n();
            this.f6345g.m41531d(4);
            int i2 = this.f6347i - 1;
            this.f6347i = i2;
            this.f6346h = i2 > 0 ? this.f6345g.m41519n() - 1 : -1;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$b.class */
    public interface AbstractC1612b {
        /* renamed from: a */
        int mo42572a();

        /* renamed from: b */
        int mo42571b();

        /* renamed from: c */
        boolean mo42570c();
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$c.class */
    public static final class C1613c {

        /* renamed from: a */
        public final C1633m[] f6348a;

        /* renamed from: b */
        public Format f6349b;

        /* renamed from: c */
        public int f6350c;

        /* renamed from: d */
        public int f6351d = 0;

        public C1613c(int i) {
            this.f6348a = new C1633m[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$d.class */
    public static final class C1614d implements AbstractC1612b {

        /* renamed from: a */
        private final int f6352a;

        /* renamed from: b */
        private final int f6353b;

        /* renamed from: c */
        private final C2018p f6354c;

        public C1614d(AbstractC1607a.C1609b c1609b) {
            C2018p c2018p = c1609b.f6337b;
            this.f6354c = c2018p;
            c2018p.m41533c(12);
            this.f6352a = c2018p.m41519n();
            this.f6353b = c2018p.m41519n();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: a */
        public final int mo42572a() {
            return this.f6353b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: b */
        public final int mo42571b() {
            int i = this.f6352a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f6354c.m41519n();
            }
            return i2;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: c */
        public final boolean mo42570c() {
            return this.f6352a != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$e.class */
    public static final class C1615e implements AbstractC1612b {

        /* renamed from: a */
        private final C2018p f6355a;

        /* renamed from: b */
        private final int f6356b;

        /* renamed from: c */
        private final int f6357c;

        /* renamed from: d */
        private int f6358d;

        /* renamed from: e */
        private int f6359e;

        public C1615e(AbstractC1607a.C1609b c1609b) {
            C2018p c2018p = c1609b.f6337b;
            this.f6355a = c2018p;
            c2018p.m41533c(12);
            this.f6357c = c2018p.m41519n() & 255;
            this.f6356b = c2018p.m41519n();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: a */
        public final int mo42572a() {
            return this.f6356b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: b */
        public final int mo42571b() {
            int i = this.f6357c;
            if (i == 8) {
                return this.f6355a.m41534c();
            }
            if (i == 16) {
                return this.f6355a.m41532d();
            }
            int i2 = this.f6358d;
            this.f6358d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f6359e & 15;
            }
            int m41534c = this.f6355a.m41534c();
            this.f6359e = m41534c;
            return (m41534c & 240) >> 4;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.C1610b.AbstractC1612b
        /* renamed from: c */
        public final boolean mo42570c() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/b$f.class */
    public static final class C1616f {

        /* renamed from: a */
        final int f6360a;

        /* renamed from: b */
        final long f6361b;

        /* renamed from: c */
        final int f6362c;

        public C1616f(int i, long j, int i2) {
            this.f6360a = i;
            this.f6361b = j;
            this.f6362c = i2;
        }
    }

    private C1610b() {
    }

    /* renamed from: a */
    private static int m42583a(C2018p c2018p) {
        c2018p.m41533c(16);
        return c2018p.m41524i();
    }

    /* renamed from: a */
    private static Pair<String, byte[]> m42582a(C2018p c2018p, int i) {
        c2018p.m41533c(i + 8 + 4);
        c2018p.m41531d(1);
        m42576b(c2018p);
        c2018p.m41531d(2);
        int m41534c = c2018p.m41534c();
        if ((m41534c & 128) != 0) {
            c2018p.m41531d(2);
        }
        if ((m41534c & 64) != 0) {
            c2018p.m41531d(c2018p.m41532d());
        }
        if ((m41534c & 32) != 0) {
            c2018p.m41531d(2);
        }
        c2018p.m41531d(1);
        m42576b(c2018p);
        String m41575a = C2012m.m41575a(c2018p.m41534c());
        if ("audio/mpeg".equals(m41575a) || "audio/vnd.dts".equals(m41575a) || "audio/vnd.dts.hd".equals(m41575a)) {
            return Pair.create(m41575a, null);
        }
        c2018p.m41531d(12);
        c2018p.m41531d(1);
        int m42576b = m42576b(c2018p);
        byte[] bArr = new byte[m42576b];
        c2018p.m41537a(bArr, 0, m42576b);
        return Pair.create(m41575a, bArr);
    }

    /* renamed from: a */
    private static Pair<Integer, C1633m> m42581a(C2018p c2018p, int i, int i2) {
        Pair<Integer, C1633m> m42575b;
        int i3 = c2018p.f8132b;
        while (true) {
            int i4 = i3;
            if (i4 - i < i2) {
                c2018p.m41533c(i4);
                int m41524i = c2018p.m41524i();
                C1993a.m41687a(m41524i > 0, "childAtomSize should be positive");
                if (c2018p.m41524i() == 1936289382 && (m42575b = m42575b(c2018p, i4, m41524i)) != null) {
                    return m42575b;
                }
                i3 = i4 + m41524i;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x075d A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.extractor.mp4.C1610b.C1613c m42578a(androidx.media2.exoplayer.external.util.C2018p r17, int r18, int r19, java.lang.String r20, androidx.media2.exoplayer.external.drm.DrmInitData r21, boolean r22) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 1983
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.C1610b.m42578a(androidx.media2.exoplayer.external.util.p, int, int, java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData, boolean):androidx.media2.exoplayer.external.extractor.mp4.b$c");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012d, code lost:
        if ((r36 ? 1 : 0) == 0) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.C1632l m42586a(androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a.C1608a r17, androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a.C1609b r18, long r19, androidx.media2.exoplayer.external.drm.DrmInitData r21, boolean r22, boolean r23) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.C1610b.m42586a(androidx.media2.exoplayer.external.extractor.mp4.a$a, androidx.media2.exoplayer.external.extractor.mp4.a$b, long, androidx.media2.exoplayer.external.drm.DrmInitData, boolean, boolean):androidx.media2.exoplayer.external.extractor.mp4.l");
    }

    /* renamed from: a */
    private static C1633m m42579a(C2018p c2018p, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i < i2) {
                c2018p.m41533c(i7);
                int m41524i = c2018p.m41524i();
                if (c2018p.m41524i() == 1952804451) {
                    int m42593a = AbstractC1607a.m42593a(c2018p.m41524i());
                    c2018p.m41531d(1);
                    if (m42593a == 0) {
                        c2018p.m41531d(1);
                        i3 = 0;
                        i4 = 0;
                    } else {
                        int m41534c = c2018p.m41534c();
                        i4 = m41534c & 15;
                        i3 = (m41534c & 240) >> 4;
                    }
                    boolean z = c2018p.m41534c() == 1;
                    int m41534c2 = c2018p.m41534c();
                    byte[] bArr = new byte[16];
                    c2018p.m41537a(bArr, 0, 16);
                    byte[] bArr2 = null;
                    if (z) {
                        bArr2 = null;
                        if (m41534c2 == 0) {
                            int m41534c3 = c2018p.m41534c();
                            bArr2 = new byte[m41534c3];
                            c2018p.m41537a(bArr2, 0, m41534c3);
                        }
                    }
                    return new C1633m(z, str, m41534c2, bArr, i3, i4, bArr2);
                }
                i5 = i7;
                i6 = m41524i;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v243, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [long] */
    /* JADX WARN: Type inference failed for: r0v365, types: [long] */
    /* JADX WARN: Type inference failed for: r0v375, types: [long] */
    /* JADX WARN: Type inference failed for: r0v421, types: [long] */
    /* renamed from: a */
    public static C1635o m42584a(C1632l c1632l, AbstractC1607a.C1608a c1608a, C1603k c1603k) throws ParserException {
        C1614d c1614d;
        boolean z;
        int i;
        int i2;
        C2018p c2018p;
        char c;
        int i3;
        int i4;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int[] iArr3;
        int i5;
        int i6;
        long[] jArr3;
        long[] jArr4;
        boolean z2;
        boolean z3;
        int i7;
        AbstractC1607a.C1609b m42589c = c1608a.m42589c(1937011578);
        if (m42589c != null) {
            c1614d = new C1614d(m42589c);
        } else {
            AbstractC1607a.C1609b m42589c2 = c1608a.m42589c(1937013298);
            if (m42589c2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            c1614d = new C1615e(m42589c2);
        }
        int mo42572a = c1614d.mo42572a();
        if (mo42572a == 0) {
            return new C1635o(c1632l, new long[0], new int[0], 0, new long[0], new int[0], -9223372036854775807L);
        }
        AbstractC1607a.C1609b m42589c3 = c1608a.m42589c(1937007471);
        if (m42589c3 == null) {
            m42589c3 = c1608a.m42589c(1668232756);
            z = true;
        } else {
            z = false;
        }
        C2018p c2018p2 = m42589c3.f6337b;
        C2018p c2018p3 = c1608a.m42589c(1937011555).f6337b;
        C2018p c2018p4 = c1608a.m42589c(1937011827).f6337b;
        AbstractC1607a.C1609b m42589c4 = c1608a.m42589c(1937011571);
        C2018p c2018p5 = m42589c4 != null ? m42589c4.f6337b : null;
        AbstractC1607a.C1609b m42589c5 = c1608a.m42589c(1668576371);
        C2018p c2018p6 = m42589c5 != null ? m42589c5.f6337b : null;
        C1611a c1611a = new C1611a(c2018p3, c2018p2, z);
        c2018p4.m41533c(12);
        int m41519n = c2018p4.m41519n() - 1;
        int m41519n2 = c2018p4.m41519n();
        int m41519n3 = c2018p4.m41519n();
        if (c2018p6 != null) {
            c2018p6.m41533c(12);
            i = c2018p6.m41519n();
        } else {
            i = 0;
        }
        int i8 = -1;
        if (c2018p5 != null) {
            c2018p5.m41533c(12);
            int m41519n4 = c2018p5.m41519n();
            i2 = m41519n4;
            c2018p = null;
            if (m41519n4 > 0) {
                i8 = c2018p5.m41519n() - 1;
                c2018p = c2018p5;
                i2 = m41519n4;
            }
        } else {
            c2018p = c2018p5;
            i2 = 0;
        }
        if (!(c1614d.mo42570c() && "audio/raw".equals(c1632l.f6462f.sampleMimeType) && m41519n == 0 && i == 0 && i2 == 0)) {
            long[] jArr5 = new long[mo42572a];
            int[] iArr4 = new int[mo42572a];
            long[] jArr6 = new long[mo42572a];
            int[] iArr5 = new int[mo42572a];
            int i9 = i8;
            char c2 = 0;
            char c3 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = i;
            int i13 = m41519n2;
            int i14 = i2;
            int i15 = 0;
            int i16 = 0;
            int i17 = i12;
            int i18 = mo42572a;
            int i19 = 0;
            while (true) {
                if (i19 >= i18) {
                    i5 = i13;
                    i6 = i15;
                    jArr3 = jArr6;
                    iArr2 = iArr5;
                    jArr4 = jArr5;
                    break;
                }
                boolean z4 = true;
                char c4 = c3;
                while (true) {
                    z3 = z4;
                    if (i15 != 0) {
                        break;
                    }
                    boolean m42573a = c1611a.m42573a();
                    z3 = m42573a;
                    if (!m42573a) {
                        break;
                    }
                    c4 = c1611a.f6342d;
                    i15 = c1611a.f6341c;
                    z4 = m42573a;
                }
                i5 = i13;
                if (!z3) {
                    C2009j.m41584a("AtomParsers", "Unexpected end of chunk data");
                    long[] copyOf = Arrays.copyOf(jArr5, i19);
                    iArr4 = Arrays.copyOf(iArr4, i19);
                    jArr3 = Arrays.copyOf(jArr6, i19);
                    i18 = i19;
                    i6 = i15;
                    jArr4 = copyOf;
                    iArr2 = Arrays.copyOf(iArr5, i19);
                    break;
                }
                int i20 = i17;
                int i21 = i16;
                int i22 = i11;
                if (c2018p6 != null) {
                    while (i11 == 0 && i17 > 0) {
                        i11 = c2018p6.m41519n();
                        i16 = c2018p6.m41524i();
                        i17--;
                    }
                    i22 = i11 - 1;
                    i21 = i16;
                    i20 = i17;
                }
                jArr5[i19] = c4 == 1 ? 1 : 0;
                iArr4[i19] = c1614d.mo42571b();
                int i23 = i10;
                if (iArr4[i19] > i10) {
                    i23 = iArr4[i19];
                }
                jArr6[i19] = c2 + i21;
                iArr5[i19] = c2018p == null ? 1 : 0;
                int i24 = i9;
                int i25 = i14;
                if (i19 == i9) {
                    iArr5[i19] = 1;
                    int i26 = i14 - 1;
                    i24 = i9;
                    i25 = i26;
                    if (i26 > 0) {
                        i24 = c2018p.m41519n() - 1;
                        i25 = i26;
                    }
                }
                c2 += m41519n3;
                int i27 = i5 - 1;
                if (i27 != 0 || m41519n <= 0) {
                    i7 = m41519n3;
                } else {
                    i27 = c2018p4.m41519n();
                    i7 = c2018p4.m41524i();
                    m41519n--;
                }
                long j = iArr4[i19];
                i19++;
                c3 = c4 + j;
                m41519n3 = i7;
                int i28 = i21;
                i9 = i24;
                i14 = i25;
                i10 = i23;
                i13 = i27;
                i17 = i20;
                i16 = i28;
                i15--;
                i11 = i22;
            }
            c = c2 + i16;
            while (true) {
                if (i17 <= 0) {
                    z2 = true;
                    break;
                } else if (c2018p6.m41519n() != 0) {
                    z2 = false;
                    break;
                } else {
                    c2018p6.m41524i();
                    i17--;
                }
            }
            if (i14 != 0 || i5 != 0 || i6 != 0 || m41519n != 0 || i11 != 0 || !z2) {
                int i29 = c1632l.f6457a;
                String str = !z2 ? ", ctts invalid" : "";
                StringBuilder sb = new StringBuilder(str.length() + 262);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i29);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i14);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i5);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i6);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(m41519n);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i11);
                sb.append(str);
                C2009j.m41584a("AtomParsers", sb.toString());
            }
            i4 = i18;
            long[] jArr7 = jArr4;
            jArr = jArr3;
            iArr = iArr4;
            jArr2 = jArr7;
            i3 = i10;
        } else {
            long[] jArr8 = new long[c1611a.f6339a];
            int[] iArr6 = new int[c1611a.f6339a];
            while (c1611a.m42573a()) {
                jArr8[c1611a.f6340b] = c1611a.f6342d;
                iArr6[c1611a.f6340b] = c1611a.f6341c;
            }
            C1618d.C1620a m42569a = C1618d.m42569a(C1996ac.m41637b(c1632l.f6462f.pcmEncoding, c1632l.f6462f.channelCount), jArr8, iArr6, m41519n3);
            jArr2 = m42569a.f6367a;
            iArr = m42569a.f6368b;
            i3 = m42569a.f6369c;
            jArr = m42569a.f6370d;
            iArr2 = m42569a.f6371e;
            c = m42569a.f6372f;
            i4 = mo42572a;
        }
        long m41634b = C1996ac.m41634b(c, 1000000L, c1632l.f6459c);
        if (c1632l.f6464h == null || c1603k.m42599a()) {
            C1996ac.m41646a(jArr, c1632l.f6459c);
            return new C1635o(c1632l, jArr2, iArr, i3, jArr, iArr2, m41634b);
        }
        if (c1632l.f6464h.length == 1 && c1632l.f6458b == 1 && jArr.length >= 2) {
            long j2 = c1632l.f6465i[0];
            long m41634b2 = j2 + C1996ac.m41634b(c1632l.f6464h[0], c1632l.f6459c, c1632l.f6460d);
            int length = jArr.length - 1;
            if (jArr[0] <= j2 && j2 < jArr[C1996ac.m41674a(4, 0, length)] && jArr[C1996ac.m41674a(jArr.length - 4, 0, length)] < m41634b2 && m41634b2 <= c) {
                long m41634b3 = C1996ac.m41634b(j2 - jArr[0], c1632l.f6462f.sampleRate, c1632l.f6459c);
                long m41634b4 = C1996ac.m41634b(c - m41634b2, c1632l.f6462f.sampleRate, c1632l.f6459c);
                if ((m41634b3 != 0 || m41634b4 != 0) && m41634b3 <= 2147483647L && m41634b4 <= 2147483647L) {
                    c1603k.f6316a = (int) m41634b3;
                    c1603k.f6317b = (int) m41634b4;
                    C1996ac.m41646a(jArr, c1632l.f6459c);
                    return new C1635o(c1632l, jArr2, iArr, i3, jArr, iArr2, C1996ac.m41634b(c1632l.f6464h[0], 1000000L, c1632l.f6460d));
                }
            }
        }
        if (c1632l.f6464h.length == 1 && c1632l.f6464h[0] == 0) {
            long j3 = c1632l.f6465i[0];
            for (int i30 = 0; i30 < jArr.length; i30++) {
                jArr[i30] = C1996ac.m41634b(jArr[i30] - j3, 1000000L, c1632l.f6459c);
            }
            return new C1635o(c1632l, jArr2, iArr, i3, jArr, iArr2, C1996ac.m41634b(c - j3, 1000000L, c1632l.f6459c));
        }
        boolean z5 = c1632l.f6458b == 1;
        int[] iArr7 = new int[c1632l.f6464h.length];
        int[] iArr8 = new int[c1632l.f6464h.length];
        int i31 = 0;
        boolean z6 = false;
        int i32 = 0;
        int i33 = 0;
        long[] jArr9 = jArr2;
        while (i31 < c1632l.f6464h.length) {
            long j4 = c1632l.f6465i[i31];
            if (j4 != -1) {
                long m41634b5 = C1996ac.m41634b(c1632l.f6464h[i31], c1632l.f6459c, c1632l.f6460d);
                iArr7[i31] = C1996ac.m41644a(jArr, j4, true, true);
                iArr8[i31] = C1996ac.m41644a(jArr, j4 + m41634b5, z5, false);
                while (iArr7[i31] < iArr8[i31] && (iArr2[iArr7[i31]] & 1) == 0) {
                    iArr7[i31] = iArr7[i31] + 1;
                }
                int i34 = i32 + (iArr8[i31] - iArr7[i31]);
                boolean z7 = i33 != iArr7[i31];
                i33 = iArr8[i31];
                z6 = z7 | z6;
                i32 = i34;
            }
            i31++;
            z6 = z6;
        }
        int[] iArr9 = iArr;
        boolean z8 = z6 | (i32 != i4);
        long[] jArr10 = z8 ? new long[i32] : jArr9;
        int[] iArr10 = z8 ? new int[i32] : iArr9;
        if (z8) {
            i3 = 0;
        }
        int[] iArr11 = z8 ? new int[i32] : iArr2;
        long[] jArr11 = new long[i32];
        char c5 = 0;
        int i35 = 0;
        int i36 = i3;
        int i37 = 0;
        long[] jArr12 = jArr10;
        while (i37 < c1632l.f6464h.length) {
            long j5 = c1632l.f6465i[i37];
            int i38 = iArr7[i37];
            int i39 = iArr8[i37];
            if (z8) {
                int i40 = i39 - i38;
                System.arraycopy(jArr9, i38, jArr12, i35, i40);
                System.arraycopy(iArr9, i38, iArr10, i35, i40);
                System.arraycopy(iArr2, i38, iArr11, i35, i40);
            }
            while (true) {
                iArr3 = iArr9;
                if (i38 < i39) {
                    jArr11[i35] = C1996ac.m41634b(c5, 1000000L, c1632l.f6460d) + C1996ac.m41634b(jArr[i38] - j5, 1000000L, c1632l.f6459c);
                    int i41 = i36;
                    if (z8) {
                        i41 = i36;
                        if (iArr10[i35] > i36) {
                            i41 = iArr3[i38];
                        }
                    }
                    i35++;
                    i38++;
                    i36 = i41;
                }
            }
            c5 += c1632l.f6464h[i37];
            i37++;
            iArr9 = iArr3;
        }
        return new C1635o(c1632l, jArr12, iArr10, i36, jArr11, iArr11, C1996ac.m41634b(c5, 1000000L, c1632l.f6460d));
    }

    /* renamed from: a */
    public static Metadata m42587a(AbstractC1607a.C1608a c1608a) {
        AbstractC1607a.C1609b m42589c = c1608a.m42589c(1751411826);
        AbstractC1607a.C1609b m42589c2 = c1608a.m42589c(1801812339);
        AbstractC1607a.C1609b m42589c3 = c1608a.m42589c(1768715124);
        if (m42589c == null || m42589c2 == null || m42589c3 == null || m42583a(m42589c.f6337b) != 1835299937) {
            return null;
        }
        C2018p c2018p = m42589c2.f6337b;
        c2018p.m41533c(12);
        int m41524i = c2018p.m41524i();
        String[] strArr = new String[m41524i];
        for (int i = 0; i < m41524i; i++) {
            int m41524i2 = c2018p.m41524i();
            c2018p.m41531d(4);
            strArr[i] = c2018p.m41529e(m41524i2 - 8);
        }
        C2018p c2018p2 = m42589c3.f6337b;
        c2018p2.m41533c(8);
        ArrayList arrayList = new ArrayList();
        while (c2018p2.m41536b() > 8) {
            int i2 = c2018p2.f8132b;
            int m41524i3 = c2018p2.m41524i();
            int m41524i4 = c2018p2.m41524i() - 1;
            if (m41524i4 < 0 || m41524i4 >= m41524i) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(m41524i4);
                C2009j.m41584a("AtomParsers", sb.toString());
            } else {
                MdtaMetadataEntry m42532a = C1625g.m42532a(c2018p2, i2 + m41524i3, strArr[m41524i4]);
                if (m42532a != null) {
                    arrayList.add(m42532a);
                }
            }
            c2018p2.m41533c(i2 + m41524i3);
        }
        if (!arrayList.isEmpty()) {
            return new Metadata(arrayList);
        }
        return null;
    }

    /* renamed from: a */
    public static Metadata m42585a(AbstractC1607a.C1609b c1609b, boolean z) {
        if (z) {
            return null;
        }
        C2018p c2018p = c1609b.f6337b;
        c2018p.m41533c(8);
        while (c2018p.m41536b() >= 8) {
            int i = c2018p.f8132b;
            int m41524i = c2018p.m41524i();
            if (c2018p.m41524i() == 1835365473) {
                c2018p.m41533c(i);
                c2018p.m41531d(12);
                while (c2018p.f8132b < i + m41524i) {
                    int i2 = c2018p.f8132b;
                    int m41524i2 = c2018p.m41524i();
                    if (c2018p.m41524i() == 1768715124) {
                        c2018p.m41533c(i2);
                        c2018p.m41531d(8);
                        ArrayList arrayList = new ArrayList();
                        while (c2018p.f8132b < i2 + m41524i2) {
                            Metadata.Entry m42534a = C1625g.m42534a(c2018p);
                            if (m42534a != null) {
                                arrayList.add(m42534a);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return new Metadata(arrayList);
                    }
                    c2018p.m41533c(i2 + m41524i2);
                }
                return null;
            }
            c2018p.m41533c(i + m41524i);
        }
        return null;
    }

    /* renamed from: a */
    private static void m42580a(C2018p c2018p, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, C1613c c1613c, int i5) throws ParserException {
        int i6;
        int i7;
        int i8;
        int i9;
        c2018p.m41533c(i2 + 8 + 8);
        if (z) {
            i6 = c2018p.m41532d();
            c2018p.m41531d(6);
        } else {
            c2018p.m41531d(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i7 = c2018p.m41532d();
            c2018p.m41531d(6);
            byte[] bArr = c2018p.f8131a;
            int i10 = c2018p.f8132b;
            c2018p.f8132b = i10 + 1;
            byte b = bArr[i10];
            byte[] bArr2 = c2018p.f8131a;
            int i11 = c2018p.f8132b;
            c2018p.f8132b = i11 + 1;
            int i12 = (bArr2[i11] & 255) | ((b & 255) << 8);
            c2018p.f8132b += 2;
            if (i6 == 1) {
                c2018p.m41531d(16);
            }
            i8 = i12;
        } else if (i6 != 2) {
            return;
        } else {
            c2018p.m41531d(16);
            i8 = (int) Math.round(Double.longBitsToDouble(c2018p.m41522k()));
            i7 = c2018p.m41519n();
            c2018p.m41531d(20);
        }
        int i13 = c2018p.f8132b;
        DrmInitData drmInitData2 = drmInitData;
        int i14 = i;
        if (i == 1701733217) {
            Pair<Integer, C1633m> m42581a = m42581a(c2018p, i2, i3);
            drmInitData2 = drmInitData;
            if (m42581a != null) {
                i = ((Integer) m42581a.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((C1633m) m42581a.second).f6469b);
                c1613c.f6348a[i5] = (C1633m) m42581a.second;
            }
            c2018p.m41533c(i13);
            i14 = i;
        }
        DrmInitData drmInitData3 = drmInitData2;
        String str2 = i14 == 1633889587 ? "audio/ac3" : i14 == 1700998451 ? "audio/eac3" : i14 == 1633889588 ? "audio/ac4" : i14 == 1685353315 ? "audio/vnd.dts" : (i14 == 1685353320 || i14 == 1685353324) ? "audio/vnd.dts.hd" : i14 == 1685353317 ? "audio/vnd.dts.hd;profile=lbr" : i14 == 1935764850 ? "audio/3gpp" : i14 == 1935767394 ? "audio/amr-wb" : (i14 == 1819304813 || i14 == 1936684916) ? "audio/raw" : i14 == 778924083 ? "audio/mpeg" : i14 == 1634492771 ? "audio/alac" : i14 == 1634492791 ? "audio/g711-alaw" : i14 == 1970037111 ? "audio/g711-mlaw" : i14 == 1332770163 ? "audio/opus" : i14 == 1716281667 ? "audio/flac" : null;
        byte[] bArr3 = null;
        int i15 = i13;
        while (true) {
            int i16 = i15;
            if (i16 - i2 >= i3) {
                break;
            }
            c2018p.m41533c(i16);
            int m41524i = c2018p.m41524i();
            C1993a.m41687a(m41524i > 0, "childAtomSize should be positive");
            int m41524i2 = c2018p.m41524i();
            if (m41524i2 == 1702061171 || (z && m41524i2 == 2002876005)) {
                if (m41524i2 != 1702061171) {
                    int i17 = c2018p.f8132b;
                    while (true) {
                        i9 = i17;
                        if (i9 - i16 >= m41524i) {
                            i9 = -1;
                            break;
                        }
                        c2018p.m41533c(i9);
                        int m41524i3 = c2018p.m41524i();
                        C1993a.m41687a(m41524i3 > 0, "childAtomSize should be positive");
                        if (c2018p.m41524i() == 1702061171) {
                            break;
                        }
                        i17 = i9 + m41524i3;
                    }
                } else {
                    i9 = i16;
                }
                if (i9 != -1) {
                    Pair<String, byte[]> m42582a = m42582a(c2018p, i9);
                    String str3 = (String) m42582a.first;
                    byte[] bArr4 = (byte[]) m42582a.second;
                    str2 = str3;
                    bArr3 = bArr4;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair<Integer, Integer> m41603a = C2000c.m41603a(bArr4);
                        i8 = ((Integer) m41603a.first).intValue();
                        i7 = ((Integer) m41603a.second).intValue();
                        bArr3 = bArr4;
                        str2 = str3;
                    }
                }
            } else if (m41524i2 == 1684103987) {
                c2018p.m41533c(i16 + 8);
                c1613c.f6349b = C1394a.m43032a(c2018p, Integer.toString(i4), str, drmInitData3);
            } else if (m41524i2 == 1684366131) {
                c2018p.m41533c(i16 + 8);
                c1613c.f6349b = C1394a.m43028b(c2018p, Integer.toString(i4), str, drmInitData3);
            } else if (m41524i2 == 1684103988) {
                c2018p.m41533c(i16 + 8);
                c1613c.f6349b = C1398b.m43022a(c2018p, Integer.toString(i4), str, drmInitData3);
            } else if (m41524i2 == 1684305011) {
                c1613c.f6349b = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, null, drmInitData3, 0, str);
            } else if (m41524i2 == 1682927731) {
                int i18 = m41524i - 8;
                byte[] bArr5 = f6338a;
                bArr3 = new byte[bArr5.length + i18];
                System.arraycopy(bArr5, 0, bArr3, 0, bArr5.length);
                c2018p.m41533c(i16 + 8);
                c2018p.m41537a(bArr3, bArr5.length, i18);
            } else if (m41524i == 1684425825 || m41524i2 == 1634492771) {
                int i19 = m41524i - 12;
                bArr3 = new byte[i19];
                c2018p.m41533c(i16 + 12);
                c2018p.m41537a(bArr3, 0, i19);
            }
            i15 = i16 + m41524i;
        }
        if (c1613c.f6349b != null || str2 == null) {
            return;
        }
        c1613c.f6349b = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, "audio/raw".equals(str2) ? 2 : -1, bArr3 == null ? null : Collections.singletonList(bArr3), drmInitData3, 0, str);
    }

    /* renamed from: b */
    private static int m42576b(C2018p c2018p) {
        int m41534c = c2018p.m41534c();
        int i = m41534c & 127;
        while (true) {
            int i2 = i;
            if ((m41534c & 128) == 128) {
                m41534c = c2018p.m41534c();
                i = (i2 << 7) | (m41534c & 127);
            } else {
                return i2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: b */
    private static Pair<long[], long[]> m42577b(AbstractC1607a.C1608a c1608a) {
        AbstractC1607a.C1609b m42589c;
        if (c1608a == null || (m42589c = c1608a.m42589c(1701606260)) == null) {
            return Pair.create(null, null);
        }
        C2018p c2018p = m42589c.f6337b;
        c2018p.m41533c(8);
        int m42593a = AbstractC1607a.m42593a(c2018p.m41524i());
        int m41519n = c2018p.m41519n();
        long[] jArr = new long[m41519n];
        long[] jArr2 = new long[m41519n];
        for (int i = 0; i < m41519n; i++) {
            jArr[i] = (m42593a == 1 ? c2018p.m41517p() : c2018p.m41526g()) == true ? 1 : 0;
            jArr2[i] = (m42593a == 1 ? c2018p.m41522k() : (long) c2018p.m41524i()) == true ? 1 : 0;
            byte[] bArr = c2018p.f8131a;
            int i2 = c2018p.f8132b;
            c2018p.f8132b = i2 + 1;
            byte b = bArr[i2];
            byte[] bArr2 = c2018p.f8131a;
            int i3 = c2018p.f8132b;
            c2018p.f8132b = i3 + 1;
            if (((short) (((b & 255) << 8) | (bArr2[i3] & 255))) != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            c2018p.m41531d(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: b */
    private static Pair<Integer, C1633m> m42575b(C2018p c2018p, int i, int i2) {
        String str;
        Integer num;
        int i3 = i + 8;
        String str2 = null;
        Integer num2 = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            c2018p.m41533c(i3);
            int m41524i = c2018p.m41524i();
            int m41524i2 = c2018p.m41524i();
            if (m41524i2 == 1718775137) {
                num = Integer.valueOf(c2018p.m41524i());
                str = str2;
            } else if (m41524i2 == 1935894637) {
                c2018p.m41531d(4);
                str = c2018p.m41529e(4);
                num = num2;
            } else {
                str = str2;
                num = num2;
                if (m41524i2 == 1935894633) {
                    i4 = i3;
                    i5 = m41524i;
                    num = num2;
                    str = str2;
                }
            }
            i3 += m41524i;
            str2 = str;
            num2 = num;
        }
        if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
            C1993a.m41687a(num2 != null, "frma atom is mandatory");
            C1993a.m41687a(i4 != -1, "schi atom is mandatory");
            C1633m m42579a = m42579a(c2018p, i4, i5, str2);
            boolean z = false;
            if (m42579a != null) {
                z = true;
            }
            C1993a.m41687a(z, "tenc atom is mandatory");
            return Pair.create(num2, m42579a);
        }
        return null;
    }

    /* renamed from: c */
    private static byte[] m42574c(C2018p c2018p, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i < i2) {
                c2018p.m41533c(i5);
                int m41524i = c2018p.m41524i();
                if (c2018p.m41524i() == 1886547818) {
                    return Arrays.copyOfRange(c2018p.f8131a, i5, m41524i + i5);
                }
                i3 = i5;
                i4 = m41524i;
            } else {
                return null;
            }
        }
    }
}
