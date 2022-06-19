package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2007h;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.d.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/b.class */
public final class C1516b extends AbstractC1524i {

    /* renamed from: a */
    C2007h f5840a;

    /* renamed from: d */
    private C1517a f5841d;

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/b$a.class */
    final class C1517a implements AbstractC1522g, AbstractC1637o {

        /* renamed from: a */
        long[] f5842a;

        /* renamed from: b */
        long[] f5843b;

        /* renamed from: c */
        long f5844c = -1;

        /* renamed from: e */
        private long f5846e = -1;

        public C1517a() {
            C1516b.this = r5;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a */
        public final long mo42747a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
            long j = this.f5846e;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f5846e = -1L;
                return j2;
            }
            return -1L;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: a */
        public final AbstractC1637o.C1638a mo42504a(long j) {
            int m41645a = C1996ac.m41645a(this.f5842a, C1516b.this.m42749b(j), true);
            long a = C1516b.this.m42754a(this.f5842a[m41645a]);
            C1640p c1640p = new C1640p(a, this.f5844c + this.f5843b[m41645a]);
            if (a < j) {
                long[] jArr = this.f5842a;
                if (m41645a != jArr.length - 1) {
                    int i = m41645a + 1;
                    return new AbstractC1637o.C1638a(c1640p, new C1640p(C1516b.this.m42754a(jArr[i]), this.f5844c + this.f5843b[i]));
                }
            }
            return new AbstractC1637o.C1638a(c1640p);
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a */
        public final AbstractC1637o mo42748a() {
            return this;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a_ */
        public final void mo42746a_(long j) {
            this.f5846e = this.f5842a[C1996ac.m41645a(this.f5842a, j, true)];
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: b */
        public final long mo42503b() {
            C2007h c2007h = C1516b.this.f5840a;
            return (c2007h.f8097h * 1000000) / c2007h.f8094e;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: j_ */
        public final boolean mo42502j_() {
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m42764a(C2018p c2018p) {
        return c2018p.m41536b() >= 5 && c2018p.m41534c() == 127 && c2018p.m41526g() == 1179402563;
    }

    /* renamed from: a */
    private static boolean m42763a(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    public final void mo42739a(boolean z) {
        super.mo42739a(z);
        if (z) {
            this.f5840a = null;
            this.f5841d = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    protected final boolean mo42740a(C2018p c2018p, long j, AbstractC1524i.C1526a c1526a) throws IOException, InterruptedException {
        byte[] bArr = c2018p.f8131a;
        if (this.f5840a == null) {
            this.f5840a = new C2007h(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, c2018p.f8133c);
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            C2007h c2007h = this.f5840a;
            c1526a.f5883a = Format.createAudioSampleFormat(null, "audio/flac", null, -1, c2007h.f8096g * c2007h.f8094e, this.f5840a.f8095f, this.f5840a.f8094e, singletonList, null, 0, null);
            return true;
        }
        if ((bArr[0] & Byte.MAX_VALUE) != 3) {
            if (!m42763a(bArr)) {
                return true;
            }
            C1517a c1517a = this.f5841d;
            if (c1517a == null) {
                return false;
            }
            c1517a.f5844c = j;
            c1526a.f5884b = this.f5841d;
            return false;
        }
        C1517a c1517a2 = new C1517a();
        this.f5841d = c1517a2;
        c2018p.m41531d(1);
        int m41528f = c2018p.m41528f() / 18;
        c1517a2.f5842a = new long[m41528f];
        c1517a2.f5843b = new long[m41528f];
        for (int i = 0; i < m41528f; i++) {
            c1517a2.f5842a[i] = c2018p.m41522k();
            c1517a2.f5843b[i] = c2018p.m41522k();
            c2018p.m41531d(2);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: b */
    protected final long mo42738b(C2018p c2018p) {
        int i;
        int i2;
        int i3;
        int i4;
        byte b;
        int i5;
        if (!m42763a(c2018p.f8131a)) {
            return -1L;
        }
        int i6 = (c2018p.f8131a[2] & 255) >> 4;
        switch (i6) {
            case 1:
                i = 192;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i3 = 576;
                i2 = i6 - 2;
                i = i3 << i2;
                break;
            case 6:
            case 7:
                c2018p.m41531d(4);
                char c = c2018p.f8131a[c2018p.f8132b];
                int i7 = 7;
                while (true) {
                    if (i7 >= 0) {
                        if (((1 << i7) & c) != 0) {
                            i7--;
                        } else if (i7 < 6) {
                            c &= i5 - 1;
                            i4 = 7 - i7;
                        } else if (i7 == 7) {
                            i4 = 1;
                        }
                    }
                }
                i4 = 0;
                if (i4 == 0) {
                    StringBuilder sb = new StringBuilder(55);
                    sb.append("Invalid UTF-8 sequence first byte: ");
                    sb.append((long) c);
                    throw new NumberFormatException(sb.toString());
                }
                for (int i8 = 1; i8 < i4; i8++) {
                    if ((c2018p.f8131a[c2018p.f8132b + i8] & 192) != 128) {
                        StringBuilder sb2 = new StringBuilder(62);
                        sb2.append("Invalid UTF-8 sequence continuation byte: ");
                        sb2.append((long) c);
                        throw new NumberFormatException(sb2.toString());
                    }
                    c = (c << 6) | (b & 63);
                }
                c2018p.f8132b += i4;
                int m41534c = i6 == 6 ? c2018p.m41534c() : c2018p.m41532d();
                c2018p.m41533c(0);
                i = m41534c + 1;
                break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i3 = 256;
                i2 = i6 - 8;
                i = i3 << i2;
                break;
            default:
                i = -1;
                break;
        }
        return i;
    }
}
