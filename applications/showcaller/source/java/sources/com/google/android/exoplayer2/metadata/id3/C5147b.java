package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.AbstractC5121b;
import com.google.android.exoplayer2.metadata.C5124d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* renamed from: com.google.android.exoplayer2.metadata.id3.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/b.class */
public final class C5147b implements AbstractC5121b {

    /* renamed from: a */
    public static final AbstractC5148a f16170a = C5146a.f16169a;

    /* renamed from: b */
    private final AbstractC5148a f16171b;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/b$a.class */
    public interface AbstractC5148a {
        /* renamed from: a */
        boolean mo20318a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: com.google.android.exoplayer2.metadata.id3.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/b$b.class */
    public static final class C5149b {

        /* renamed from: a */
        private final int f16172a;

        /* renamed from: b */
        private final boolean f16173b;

        /* renamed from: c */
        private final int f16174c;

        public C5149b(int i, boolean z, int i2) {
            this.f16172a = i;
            this.f16173b = z;
            this.f16174c = i2;
        }
    }

    public C5147b() {
        this(null);
    }

    public C5147b(AbstractC5148a abstractC5148a) {
        this.f16171b = abstractC5148a;
    }

    /* renamed from: b */
    private static byte[] m20343b(byte[] bArr, int i, int i2) {
        return i2 <= i ? C5515h0.f17881f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: d */
    private static ApicFrame m20341d(C5536v c5536v, int i, int i2) {
        int i3;
        String str;
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        c5536v.m18671h(bArr, 0, i4);
        if (i2 == 2) {
            String str2 = "image/" + C5515h0.m18804u0(new String(bArr, 0, 3, "ISO-8859-1"));
            str = str2;
            if ("image/jpg".equals(str2)) {
                str = "image/jpeg";
            }
            i3 = 2;
        } else {
            i3 = m20322w(bArr, 0);
            str = C5515h0.m18804u0(new String(bArr, 0, i3, "ISO-8859-1"));
            if (str.indexOf(47) == -1) {
                str = "image/" + str;
            }
        }
        byte b = bArr[i3 + 1];
        int i5 = i3 + 2;
        int m20323v = m20323v(bArr, i5, m18653z);
        return new ApicFrame(str, new String(bArr, i5, m20323v - i5, m20325t), b & 255, m20343b(bArr, m20323v + m20326s(m18653z), i4));
    }

    /* renamed from: e */
    private static BinaryFrame m20340e(C5536v c5536v, int i, String str) {
        byte[] bArr = new byte[i];
        c5536v.m18671h(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: f */
    private static ChapterFrame m20339f(C5536v c5536v, int i, int i2, boolean z, int i3, AbstractC5148a abstractC5148a) {
        int m18676c = c5536v.m18676c();
        int m20322w = m20322w(c5536v.f17941a, m18676c);
        String str = new String(c5536v.f17941a, m18676c, m20322w - m18676c, "ISO-8859-1");
        c5536v.m18680M(m20322w + 1);
        int m18668k = c5536v.m18668k();
        int m18668k2 = c5536v.m18668k();
        char m18691B = c5536v.m18691B();
        if (m18691B == 4294967295L) {
            m18691B = 65535;
        }
        char m18691B2 = c5536v.m18691B();
        if (m18691B2 == 4294967295L) {
            m18691B2 = 65535;
        }
        ArrayList arrayList = new ArrayList();
        while (c5536v.m18676c() < m18676c + i) {
            Id3Frame m20336i = m20336i(i2, c5536v, z, i3, abstractC5148a);
            if (m20336i != null) {
                arrayList.add(m20336i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, m18668k, m18668k2, m18691B, m18691B2, id3FrameArr);
    }

    /* renamed from: g */
    private static ChapterTocFrame m20338g(C5536v c5536v, int i, int i2, boolean z, int i3, AbstractC5148a abstractC5148a) {
        int m18676c = c5536v.m18676c();
        int m20322w = m20322w(c5536v.f17941a, m18676c);
        String str = new String(c5536v.f17941a, m18676c, m20322w - m18676c, "ISO-8859-1");
        c5536v.m18680M(m20322w + 1);
        int m18653z = c5536v.m18653z();
        boolean z2 = (m18653z & 2) != 0;
        boolean z3 = (m18653z & 1) != 0;
        int m18653z2 = c5536v.m18653z();
        String[] strArr = new String[m18653z2];
        for (int i4 = 0; i4 < m18653z2; i4++) {
            int m18676c2 = c5536v.m18676c();
            int m20322w2 = m20322w(c5536v.f17941a, m18676c2);
            strArr[i4] = new String(c5536v.f17941a, m18676c2, m20322w2 - m18676c2, "ISO-8859-1");
            c5536v.m18680M(m20322w2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (c5536v.m18676c() < m18676c + i) {
            Id3Frame m20336i = m20336i(i2, c5536v, z, i3, abstractC5148a);
            if (m20336i != null) {
                arrayList.add(m20336i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: h */
    private static CommentFrame m20337h(C5536v c5536v, int i) {
        if (i < 4) {
            return null;
        }
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        byte[] bArr = new byte[3];
        c5536v.m18671h(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        c5536v.m18671h(bArr2, 0, i2);
        int m20323v = m20323v(bArr2, 0, m18653z);
        String str2 = new String(bArr2, 0, m20323v, m20325t);
        int m20326s = m20323v + m20326s(m18653z);
        return new CommentFrame(str, str2, m20331n(bArr2, m20326s, m20323v(bArr2, m20326s, m18653z), m20325t));
    }

    /* renamed from: i */
    private static Id3Frame m20336i(int i, C5536v c5536v, boolean z, int i2, AbstractC5148a abstractC5148a) {
        int m18689D;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int m18653z = c5536v.m18653z();
        int m18653z2 = c5536v.m18653z();
        int m18653z3 = c5536v.m18653z();
        int m18653z4 = i >= 3 ? c5536v.m18653z() : 0;
        if (i == 4) {
            int m18689D2 = c5536v.m18689D();
            m18689D = m18689D2;
            if (!z) {
                m18689D = (((m18689D2 >> 24) & 255) << 21) | (m18689D2 & 255) | (((m18689D2 >> 8) & 255) << 7) | (((m18689D2 >> 16) & 255) << 14);
            }
        } else {
            m18689D = i == 3 ? c5536v.m18689D() : c5536v.m18690C();
        }
        int i3 = m18689D;
        int m18687F = i >= 3 ? c5536v.m18687F() : 0;
        if (m18653z == 0 && m18653z2 == 0 && m18653z3 == 0 && m18653z4 == 0 && i3 == 0 && m18687F == 0) {
            c5536v.m18680M(c5536v.m18675d());
            return null;
        }
        int m18676c = c5536v.m18676c() + i3;
        if (m18676c > c5536v.m18675d()) {
            C5526o.m18742f("Id3Decoder", "Frame size exceeds remaining tag data");
            c5536v.m18680M(c5536v.m18675d());
            return null;
        } else if (abstractC5148a != null && !abstractC5148a.mo20318a(i, m18653z, m18653z2, m18653z3, m18653z4)) {
            c5536v.m18680M(m18676c);
            return null;
        } else {
            int i4 = m18687F;
            if (i == 3) {
                z5 = (i4 & 128) != 0;
                z3 = (i4 & 64) != 0;
                z2 = (i4 & 32) != 0;
                z4 = z5;
                z6 = false;
            } else if (i == 4) {
                z2 = (i4 & 64) != 0;
                boolean z7 = (i4 & 8) != 0;
                z3 = (i4 & 4) != 0;
                z6 = (i4 & 2) != 0;
                z4 = z7;
                z5 = (i4 & 1) != 0;
            } else {
                z2 = false;
                z5 = false;
                z3 = false;
                z6 = false;
                z4 = false;
            }
            if (z4 || z3) {
                C5526o.m18742f("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                c5536v.m18680M(m18676c);
                return null;
            }
            int i5 = i3;
            if (z2) {
                i5 = i3 - 1;
                c5536v.m18679N(1);
            }
            int i6 = i5;
            if (z5) {
                i6 = i5 - 4;
                c5536v.m18679N(4);
            }
            int i7 = i6;
            if (z6) {
                i7 = m20320y(c5536v, i6);
            }
            try {
                try {
                    TextInformationFrame m20329p = (m18653z == 84 && m18653z2 == 88 && m18653z3 == 88 && (i == 2 || m18653z4 == 88)) ? m20329p(c5536v, i7) : m18653z == 84 ? m20330o(c5536v, i7, m20324u(i, m18653z, m18653z2, m18653z3, m18653z4)) : (m18653z == 87 && m18653z2 == 88 && m18653z3 == 88 && (i == 2 || m18653z4 == 88)) ? m20327r(c5536v, i7) : m18653z == 87 ? m20328q(c5536v, i7, m20324u(i, m18653z, m18653z2, m18653z3, m18653z4)) : (m18653z == 80 && m18653z2 == 82 && m18653z3 == 73 && m18653z4 == 86) ? m20332m(c5536v, i7) : (m18653z == 71 && m18653z2 == 69 && m18653z3 == 79 && (m18653z4 == 66 || i == 2)) ? m20335j(c5536v, i7) : (i != 2 ? !(m18653z == 65 && m18653z2 == 80 && m18653z3 == 73 && m18653z4 == 67) : !(m18653z == 80 && m18653z2 == 73 && m18653z3 == 67)) ? (m18653z == 67 && m18653z2 == 79 && m18653z3 == 77 && (m18653z4 == 77 || i == 2)) ? m20337h(c5536v, i7) : (m18653z == 67 && m18653z2 == 72 && m18653z3 == 65 && m18653z4 == 80) ? m20339f(c5536v, i7, i, z, i2, abstractC5148a) : (m18653z == 67 && m18653z2 == 84 && m18653z3 == 79 && m18653z4 == 67) ? m20338g(c5536v, i7, i, z, i2, abstractC5148a) : (m18653z == 77 && m18653z2 == 76 && m18653z3 == 76 && m18653z4 == 84) ? m20333l(c5536v, i7) : m20340e(c5536v, i7, m20324u(i, m18653z, m18653z2, m18653z3, m18653z4)) : m20341d(c5536v, i7, i);
                    if (m20329p == null) {
                        C5526o.m18742f("Id3Decoder", "Failed to decode frame: id=" + m20324u(i, m18653z, m18653z2, m18653z3, m18653z4) + ", frameSize=" + i7);
                    }
                    c5536v.m18680M(m18676c);
                    return m20329p;
                } catch (UnsupportedEncodingException e) {
                    C5526o.m18742f("Id3Decoder", "Unsupported character encoding");
                    c5536v.m18680M(m18676c);
                    return null;
                }
            } catch (Throwable th) {
                c5536v.m18680M(m18676c);
                throw th;
            }
        }
    }

    /* renamed from: j */
    private static GeobFrame m20335j(C5536v c5536v, int i) {
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c5536v.m18671h(bArr, 0, i2);
        int m20322w = m20322w(bArr, 0);
        String str = new String(bArr, 0, m20322w, "ISO-8859-1");
        int i3 = m20322w + 1;
        int m20323v = m20323v(bArr, i3, m18653z);
        String m20331n = m20331n(bArr, i3, m20323v, m20325t);
        int m20326s = m20323v + m20326s(m18653z);
        int m20323v2 = m20323v(bArr, m20326s, m18653z);
        return new GeobFrame(str, m20331n, m20331n(bArr, m20326s, m20323v2, m20325t), m20343b(bArr, m20323v2 + m20326s(m18653z), i2));
    }

    /* renamed from: k */
    private static C5149b m20334k(C5536v c5536v) {
        int m18690C;
        int i;
        if (c5536v.m18678a() < 10) {
            C5526o.m18742f("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (c5536v.m18690C() != 4801587) {
            C5526o.m18742f("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(m18690C)));
            return null;
        }
        int m18653z = c5536v.m18653z();
        c5536v.m18679N(1);
        int m18653z2 = c5536v.m18653z();
        int m18654y = c5536v.m18654y();
        if (m18653z == 2) {
            i = m18654y;
            if ((m18653z2 & 64) != 0) {
                C5526o.m18742f("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (m18653z == 3) {
            i = m18654y;
            if ((m18653z2 & 64) != 0) {
                int m18668k = c5536v.m18668k();
                c5536v.m18679N(m18668k);
                i = m18654y - (m18668k + 4);
            }
        } else if (m18653z != 4) {
            C5526o.m18742f("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + m18653z);
            return null;
        } else {
            int i2 = m18654y;
            if ((m18653z2 & 64) != 0) {
                int m18654y2 = c5536v.m18654y();
                c5536v.m18679N(m18654y2 - 4);
                i2 = m18654y - m18654y2;
            }
            i = i2;
            if ((m18653z2 & 16) != 0) {
                i = i2 - 10;
            }
        }
        boolean z = false;
        if (m18653z < 4) {
            z = false;
            if ((m18653z2 & 128) != 0) {
                z = true;
            }
        }
        return new C5149b(m18653z, z, i);
    }

    /* renamed from: l */
    private static MlltFrame m20333l(C5536v c5536v, int i) {
        int m18687F = c5536v.m18687F();
        int m18690C = c5536v.m18690C();
        int m18690C2 = c5536v.m18690C();
        int m18653z = c5536v.m18653z();
        int m18653z2 = c5536v.m18653z();
        C5535u c5535u = new C5535u();
        c5535u.m18699l(c5536v);
        int i2 = ((i - 10) * 8) / (m18653z + m18653z2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m18703h = c5535u.m18703h(m18653z);
            int m18703h2 = c5535u.m18703h(m18653z2);
            iArr[i3] = m18703h;
            iArr2[i3] = m18703h2;
        }
        return new MlltFrame(m18687F, m18690C, m18690C2, iArr, iArr2);
    }

    /* renamed from: m */
    private static PrivFrame m20332m(C5536v c5536v, int i) {
        byte[] bArr = new byte[i];
        c5536v.m18671h(bArr, 0, i);
        int m20322w = m20322w(bArr, 0);
        return new PrivFrame(new String(bArr, 0, m20322w, "ISO-8859-1"), m20343b(bArr, m20322w + 1, i));
    }

    /* renamed from: n */
    private static String m20331n(byte[] bArr, int i, int i2, String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* renamed from: o */
    private static TextInformationFrame m20330o(C5536v c5536v, int i, String str) {
        if (i < 1) {
            return null;
        }
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c5536v.m18671h(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, m20323v(bArr, 0, m18653z), m20325t));
    }

    /* renamed from: p */
    private static TextInformationFrame m20329p(C5536v c5536v, int i) {
        if (i < 1) {
            return null;
        }
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c5536v.m18671h(bArr, 0, i2);
        int m20323v = m20323v(bArr, 0, m18653z);
        String str = new String(bArr, 0, m20323v, m20325t);
        int m20326s = m20323v + m20326s(m18653z);
        return new TextInformationFrame("TXXX", str, m20331n(bArr, m20326s, m20323v(bArr, m20326s, m18653z), m20325t));
    }

    /* renamed from: q */
    private static UrlLinkFrame m20328q(C5536v c5536v, int i, String str) {
        byte[] bArr = new byte[i];
        c5536v.m18671h(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, m20322w(bArr, 0), "ISO-8859-1"));
    }

    /* renamed from: r */
    private static UrlLinkFrame m20327r(C5536v c5536v, int i) {
        if (i < 1) {
            return null;
        }
        int m18653z = c5536v.m18653z();
        String m20325t = m20325t(m18653z);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c5536v.m18671h(bArr, 0, i2);
        int m20323v = m20323v(bArr, 0, m18653z);
        String str = new String(bArr, 0, m20323v, m20325t);
        int m20326s = m20323v + m20326s(m18653z);
        return new UrlLinkFrame("WXXX", str, m20331n(bArr, m20326s, m20322w(bArr, m20326s), "ISO-8859-1"));
    }

    /* renamed from: s */
    private static int m20326s(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: t */
    private static String m20325t(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: u */
    private static String m20324u(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: v */
    private static int m20323v(byte[] bArr, int i, int i2) {
        int m20322w = m20322w(bArr, i);
        if (i2 != 0) {
            int i3 = m20322w;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m20322w(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return m20322w;
    }

    /* renamed from: w */
    private static int m20322w(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: x */
    public static /* synthetic */ boolean m20321x(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* renamed from: y */
    private static int m20320y(C5536v c5536v, int i) {
        byte[] bArr = c5536v.f17941a;
        int m18676c = c5536v.m18676c();
        int i2 = m18676c;
        while (true) {
            int i3 = i2 + 1;
            if (i3 < m18676c + i) {
                int i4 = i;
                if ((bArr[i2] & 255) == 255) {
                    i4 = i;
                    if (bArr[i3] == 0) {
                        System.arraycopy(bArr, i2 + 2, bArr, i3, (i - (i2 - m18676c)) - 2);
                        i4 = i - 1;
                    }
                }
                i2 = i3;
                i = i4;
            } else {
                return i;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0135 A[Catch: all -> 0x0162, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0162, blocks: (B:3:0x0006, B:8:0x001a, B:9:0x002f, B:55:0x0135, B:61:0x0151), top: B:67:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m20319z(com.google.android.exoplayer2.util.C5536v r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.C5147b.m20319z(com.google.android.exoplayer2.util.v, int, int, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.metadata.AbstractC5121b
    /* renamed from: a */
    public Metadata mo20287a(C5124d c5124d) {
        ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c5124d.f14775e);
        return m20342c(byteBuffer.array(), byteBuffer.limit());
    }

    /* renamed from: c */
    public Metadata m20342c(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C5536v c5536v = new C5536v(bArr, i);
        C5149b m20334k = m20334k(c5536v);
        if (m20334k == null) {
            return null;
        }
        int m18676c = c5536v.m18676c();
        int i2 = m20334k.f16172a == 2 ? 6 : 10;
        int i3 = m20334k.f16174c;
        if (m20334k.f16173b) {
            i3 = m20320y(c5536v, m20334k.f16174c);
        }
        c5536v.m18681L(m18676c + i3);
        boolean z = false;
        if (!m20319z(c5536v, m20334k.f16172a, i2, false)) {
            if (m20334k.f16172a != 4 || !m20319z(c5536v, 4, i2, true)) {
                C5526o.m18742f("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m20334k.f16172a);
                return null;
            }
            z = true;
        }
        while (c5536v.m18678a() >= i2) {
            Id3Frame m20336i = m20336i(m20334k.f16172a, c5536v, z, i2, this.f16171b);
            if (m20336i != null) {
                arrayList.add(m20336i);
            }
        }
        return new Metadata(arrayList);
    }
}
