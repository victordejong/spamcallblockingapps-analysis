package p193e.p1577m.p1578a.p1596c.p1613i1.p1616i;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24465d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.i1.i.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/i/b.class */
public final class C24472b implements AbstractC24462b {

    /* renamed from: b */
    public static final /* synthetic */ int f68320b = 0;

    /* renamed from: a */
    public final AbstractC24473a f68321a;

    /* renamed from: e.m.a.c.i1.i.b$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/i/b$a.class */
    public interface AbstractC24473a {
        /* renamed from: a */
        boolean mo5045a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: e.m.a.c.i1.i.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/i/b$b.class */
    public static final class C24474b {

        /* renamed from: a */
        public final int f68322a;

        /* renamed from: b */
        public final boolean f68323b;

        /* renamed from: c */
        public final int f68324c;

        public C24474b(int i, boolean z, int i2) {
            this.f68322a = i;
            this.f68323b = z;
            this.f68324c = i2;
        }
    }

    public C24472b() {
        this.f68321a = null;
    }

    public C24472b(AbstractC24473a abstractC24473a) {
        this.f68321a = abstractC24473a;
    }

    /* renamed from: b */
    public static byte[] m5068b(byte[] bArr, int i, int i2) {
        return i2 <= i ? C24773d0.f69432f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: d */
    public static ApicFrame m5066d(C24798t c24798t, int i, int i2) throws UnsupportedEncodingException {
        int i3;
        String str;
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i4);
        c24798t.f69505b += i4;
        if (i2 == 2) {
            StringBuilder m8728C = C22128a.m8728C("image/");
            m8728C.append(C24773d0.m4626D(new String(bArr, 0, 3, "ISO-8859-1")));
            String sb = m8728C.toString();
            str = sb;
            if ("image/jpg".equals(sb)) {
                str = ContentFormat.IMAGE_JPEG;
            }
            i3 = 2;
        } else {
            i3 = m5048v(bArr, 0);
            str = C24773d0.m4626D(new String(bArr, 0, i3, "ISO-8859-1"));
            if (str.indexOf(47) == -1) {
                str = C22128a.m8543z2("image/", str);
            }
        }
        byte b = bArr[i3 + 1];
        int i5 = i3 + 2;
        int m5049u = m5049u(bArr, i5, m4529q);
        return new ApicFrame(str, new String(bArr, i5, m5049u - i5, m5051s), b & 255, m5068b(bArr, m5052r(m4529q) + m5049u, i4));
    }

    /* renamed from: e */
    public static BinaryFrame m5065e(C24798t c24798t, int i, String str) {
        byte[] bArr = new byte[i];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i);
        c24798t.f69505b += i;
        return new BinaryFrame(str, bArr);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: f */
    public static ChapterFrame m5064f(C24798t c24798t, int i, int i2, boolean z, int i3, AbstractC24473a abstractC24473a) throws UnsupportedEncodingException {
        int i4 = c24798t.f69505b;
        int m5048v = m5048v(c24798t.f69504a, i4);
        String str = new String(c24798t.f69504a, i4, m5048v - i4, "ISO-8859-1");
        c24798t.m4547C(m5048v + 1);
        int m4541e = c24798t.m4541e();
        int m4541e2 = c24798t.m4541e();
        char m4528r = c24798t.m4528r();
        if (m4528r == 4294967295L) {
            m4528r = 65535;
        }
        char m4528r2 = c24798t.m4528r();
        if (m4528r2 == 4294967295L) {
            m4528r2 = 65535;
        }
        ArrayList arrayList = new ArrayList();
        while (c24798t.f69505b < i4 + i) {
            Id3Frame m5061i = m5061i(i2, c24798t, z, i3, abstractC24473a);
            if (m5061i != null) {
                arrayList.add(m5061i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, m4541e, m4541e2, m4528r, m4528r2, id3FrameArr);
    }

    /* renamed from: g */
    public static ChapterTocFrame m5063g(C24798t c24798t, int i, int i2, boolean z, int i3, AbstractC24473a abstractC24473a) throws UnsupportedEncodingException {
        int i4 = c24798t.f69505b;
        int m5048v = m5048v(c24798t.f69504a, i4);
        String str = new String(c24798t.f69504a, i4, m5048v - i4, "ISO-8859-1");
        c24798t.m4547C(m5048v + 1);
        int m4529q = c24798t.m4529q();
        boolean z2 = (m4529q & 2) != 0;
        boolean z3 = (m4529q & 1) != 0;
        int m4529q2 = c24798t.m4529q();
        String[] strArr = new String[m4529q2];
        for (int i5 = 0; i5 < m4529q2; i5++) {
            int i6 = c24798t.f69505b;
            int m5048v2 = m5048v(c24798t.f69504a, i6);
            strArr[i5] = new String(c24798t.f69504a, i6, m5048v2 - i6, "ISO-8859-1");
            c24798t.m4547C(m5048v2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (c24798t.f69505b < i4 + i) {
            Id3Frame m5061i = m5061i(i2, c24798t, z, i3, abstractC24473a);
            if (m5061i != null) {
                arrayList.add(m5061i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: h */
    public static CommentFrame m5062h(C24798t c24798t, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        byte[] bArr = new byte[3];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, 3);
        c24798t.f69505b += 3;
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr2, 0, i2);
        c24798t.f69505b += i2;
        int m5049u = m5049u(bArr2, 0, m4529q);
        String str2 = new String(bArr2, 0, m5049u, m5051s);
        int m5052r = m5052r(m4529q) + m5049u;
        return new CommentFrame(str, str2, m5057m(bArr2, m5052r, m5049u(bArr2, m5052r, m4529q), m5051s));
    }

    /* renamed from: i */
    public static Id3Frame m5061i(int i, C24798t c24798t, boolean z, int i2, AbstractC24473a abstractC24473a) {
        int m4526t;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int m4529q = c24798t.m4529q();
        int m4529q2 = c24798t.m4529q();
        int m4529q3 = c24798t.m4529q();
        int m4529q4 = i >= 3 ? c24798t.m4529q() : 0;
        if (i == 4) {
            int m4526t2 = c24798t.m4526t();
            m4526t = m4526t2;
            if (!z) {
                m4526t = (((m4526t2 >> 24) & 255) << 21) | (m4526t2 & 255) | (((m4526t2 >> 8) & 255) << 7) | (((m4526t2 >> 16) & 255) << 14);
            }
        } else {
            m4526t = i == 3 ? c24798t.m4526t() : c24798t.m4527s();
        }
        int i3 = m4526t;
        int m4524v = i >= 3 ? c24798t.m4524v() : 0;
        if (m4529q == 0 && m4529q2 == 0 && m4529q3 == 0 && m4529q4 == 0 && i3 == 0 && m4524v == 0) {
            c24798t.m4547C(c24798t.f69506c);
            return null;
        }
        int i4 = c24798t.f69505b + i3;
        int i5 = c24798t.f69506c;
        if (i4 > i5) {
            c24798t.m4547C(i5);
            return null;
        } else if (abstractC24473a != null && !abstractC24473a.mo5045a(i, m4529q, m4529q2, m4529q3, m4529q4)) {
            c24798t.m4547C(i4);
            return null;
        } else {
            int i6 = m4524v;
            if (i == 3) {
                z4 = (i6 & 128) != 0;
                z3 = (i6 & 64) != 0;
                z6 = false;
                z2 = (i6 & 32) != 0;
                z5 = z4;
            } else if (i == 4) {
                boolean z7 = (i6 & 64) != 0;
                boolean z8 = (i6 & 8) != 0;
                z3 = (i6 & 4) != 0;
                z6 = (i6 & 2) != 0;
                boolean z9 = (i6 & 1) != 0;
                boolean z10 = z8;
                z2 = z7;
                z5 = z9;
                z4 = z10;
            } else {
                z2 = false;
                z3 = false;
                z5 = false;
                z6 = false;
                z4 = false;
            }
            if (z4 || z3) {
                c24798t.m4547C(i4);
                return null;
            }
            int i7 = i3;
            if (z2) {
                i7 = i3 - 1;
                c24798t.m4546D(1);
            }
            int i8 = i7;
            if (z5) {
                i8 = i7 - 4;
                c24798t.m4546D(4);
            }
            if (z6) {
                i8 = m5047w(c24798t, i8);
            }
            try {
                TextInformationFrame m5055o = (m4529q == 84 && m4529q2 == 88 && m4529q3 == 88 && (i == 2 || m4529q4 == 88)) ? m5055o(c24798t, i8) : m4529q == 84 ? m5056n(c24798t, i8, m5050t(i, m4529q, m4529q2, m4529q3, m4529q4)) : (m4529q == 87 && m4529q2 == 88 && m4529q3 == 88 && (i == 2 || m4529q4 == 88)) ? m5053q(c24798t, i8) : m4529q == 87 ? m5054p(c24798t, i8, m5050t(i, m4529q, m4529q2, m4529q3, m4529q4)) : (m4529q == 80 && m4529q2 == 82 && m4529q3 == 73 && m4529q4 == 86) ? m5058l(c24798t, i8) : (m4529q == 71 && m4529q2 == 69 && m4529q3 == 79 && (m4529q4 == 66 || i == 2)) ? m5060j(c24798t, i8) : (i != 2 ? !(m4529q == 65 && m4529q2 == 80 && m4529q3 == 73 && m4529q4 == 67) : !(m4529q == 80 && m4529q2 == 73 && m4529q3 == 67)) ? (m4529q == 67 && m4529q2 == 79 && m4529q3 == 77 && (m4529q4 == 77 || i == 2)) ? m5062h(c24798t, i8) : (m4529q == 67 && m4529q2 == 72 && m4529q3 == 65 && m4529q4 == 80) ? m5064f(c24798t, i8, i, z, i2, abstractC24473a) : (m4529q == 67 && m4529q2 == 84 && m4529q3 == 79 && m4529q4 == 67) ? m5063g(c24798t, i8, i, z, i2, abstractC24473a) : (m4529q == 77 && m4529q2 == 76 && m4529q3 == 76 && m4529q4 == 84) ? m5059k(c24798t, i8) : m5065e(c24798t, i8, m5050t(i, m4529q, m4529q2, m4529q3, m4529q4)) : m5066d(c24798t, i8, i);
                if (m5055o == null) {
                    m5050t(i, m4529q, m4529q2, m4529q3, m4529q4);
                }
                c24798t.m4547C(i4);
                return m5055o;
            } catch (UnsupportedEncodingException e) {
                c24798t.m4547C(i4);
                return null;
            } catch (Throwable th) {
                c24798t.m4547C(i4);
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static GeobFrame m5060j(C24798t c24798t, int i) throws UnsupportedEncodingException {
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i2);
        c24798t.f69505b += i2;
        int m5048v = m5048v(bArr, 0);
        String str = new String(bArr, 0, m5048v, "ISO-8859-1");
        int i3 = m5048v + 1;
        int m5049u = m5049u(bArr, i3, m4529q);
        String m5057m = m5057m(bArr, i3, m5049u, m5051s);
        int m5052r = m5052r(m4529q) + m5049u;
        int m5049u2 = m5049u(bArr, m5052r, m4529q);
        return new GeobFrame(str, m5057m, m5057m(bArr, m5052r, m5049u2, m5051s), m5068b(bArr, m5052r(m4529q) + m5049u2, i2));
    }

    /* renamed from: k */
    public static MlltFrame m5059k(C24798t c24798t, int i) {
        int m4524v = c24798t.m4524v();
        int m4527s = c24798t.m4527s();
        int m4527s2 = c24798t.m4527s();
        int m4529q = c24798t.m4529q();
        int m4529q2 = c24798t.m4529q();
        C24797s c24797s = new C24797s();
        c24797s.m4553i(c24798t.f69504a, c24798t.f69506c);
        c24797s.m4552j(c24798t.f69505b * 8);
        int i2 = ((i - 10) * 8) / (m4529q + m4529q2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m4556f = c24797s.m4556f(m4529q);
            int m4556f2 = c24797s.m4556f(m4529q2);
            iArr[i3] = m4556f;
            iArr2[i3] = m4556f2;
        }
        return new MlltFrame(m4524v, m4527s, m4527s2, iArr, iArr2);
    }

    /* renamed from: l */
    public static PrivFrame m5058l(C24798t c24798t, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i);
        c24798t.f69505b += i;
        int m5048v = m5048v(bArr, 0);
        return new PrivFrame(new String(bArr, 0, m5048v, "ISO-8859-1"), m5068b(bArr, m5048v + 1, i));
    }

    /* renamed from: m */
    public static String m5057m(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* renamed from: n */
    public static TextInformationFrame m5056n(C24798t c24798t, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i2);
        c24798t.f69505b += i2;
        return new TextInformationFrame(str, null, new String(bArr, 0, m5049u(bArr, 0, m4529q), m5051s));
    }

    /* renamed from: o */
    public static TextInformationFrame m5055o(C24798t c24798t, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i2);
        c24798t.f69505b += i2;
        int m5049u = m5049u(bArr, 0, m4529q);
        String str = new String(bArr, 0, m5049u, m5051s);
        int m5052r = m5052r(m4529q) + m5049u;
        return new TextInformationFrame("TXXX", str, m5057m(bArr, m5052r, m5049u(bArr, m5052r, m4529q), m5051s));
    }

    /* renamed from: p */
    public static UrlLinkFrame m5054p(C24798t c24798t, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i);
        c24798t.f69505b += i;
        return new UrlLinkFrame(str, null, new String(bArr, 0, m5048v(bArr, 0), "ISO-8859-1"));
    }

    /* renamed from: q */
    public static UrlLinkFrame m5053q(C24798t c24798t, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m4529q = c24798t.m4529q();
        String m5051s = m5051s(m4529q);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i2);
        c24798t.f69505b += i2;
        int m5049u = m5049u(bArr, 0, m4529q);
        String str = new String(bArr, 0, m5049u, m5051s);
        int m5052r = m5052r(m4529q) + m5049u;
        return new UrlLinkFrame("WXXX", str, m5057m(bArr, m5052r, m5048v(bArr, m5052r), "ISO-8859-1"));
    }

    /* renamed from: r */
    public static int m5052r(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: s */
    public static String m5051s(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : StringConstant.UTF8 : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: t */
    public static String m5050t(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: u */
    public static int m5049u(byte[] bArr, int i, int i2) {
        int m5048v = m5048v(bArr, i);
        if (i2 != 0) {
            int i3 = m5048v;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m5048v(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return m5048v;
    }

    /* renamed from: v */
    public static int m5048v(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: w */
    public static int m5047w(C24798t c24798t, int i) {
        byte[] bArr = c24798t.f69504a;
        int i2 = c24798t.f69505b;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 < i2 + i) {
                int i5 = i;
                if ((bArr[i3] & 255) == 255) {
                    i5 = i;
                    if (bArr[i4] == 0) {
                        System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                        i5 = i - 1;
                    }
                }
                i3 = i4;
                i = i5;
            } else {
                return i;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0136 A[Catch: all -> 0x0163, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0163, blocks: (B:3:0x0006, B:8:0x001a, B:9:0x002f, B:55:0x0136, B:61:0x0152), top: B:67:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5046x(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24472b.m5046x(e.m.a.c.q1.t, int, int, boolean):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b
    /* renamed from: a */
    public Metadata mo5044a(C24465d c24465d) {
        ByteBuffer byteBuffer = c24465d.f67301b;
        Objects.requireNonNull(byteBuffer);
        return m5067c(byteBuffer.array(), byteBuffer.limit());
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0082, code lost:
        if (((r0 & 64) != 0) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013d  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.metadata.Metadata m5067c(byte[] r7, int r8) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24472b.m5067c(byte[], int):com.google.android.exoplayer2.metadata.Metadata");
    }
}
