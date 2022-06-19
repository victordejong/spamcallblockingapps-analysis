package p1727n3.p1874y.p1876b.p1877a.p1892s0.p1894g;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.ApicFrame;
import androidx.media2.exoplayer.external.metadata.id3.BinaryFrame;
import androidx.media2.exoplayer.external.metadata.id3.ChapterFrame;
import androidx.media2.exoplayer.external.metadata.id3.ChapterTocFrame;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.GeobFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.MlltFrame;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import androidx.media2.exoplayer.external.metadata.id3.UrlLinkFrame;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27318a;
import p1727n3.p1874y.p1876b.p1877a.p1892s0.C27320c;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.s0.g.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/s0/g/a.class */
public final class C27323a implements AbstractC27318a {

    /* renamed from: a */
    public final AbstractC27324a f76846a;

    /* renamed from: n3.y.b.a.s0.g.a$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/s0/g/a$a.class */
    public interface AbstractC27324a {
        /* renamed from: a */
        boolean m543a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: n3.y.b.a.s0.g.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/s0/g/a$b.class */
    public static final class C27325b {

        /* renamed from: a */
        public final int f76847a;

        /* renamed from: b */
        public final boolean f76848b;

        /* renamed from: c */
        public final int f76849c;

        public C27325b(int i, boolean z, int i2) {
            this.f76847a = i;
            this.f76848b = z;
            this.f76849c = i2;
        }
    }

    public C27323a() {
        this.f76846a = null;
    }

    public C27323a(AbstractC27324a abstractC27324a) {
        this.f76846a = abstractC27324a;
    }

    /* renamed from: b */
    public static byte[] m566b(byte[] bArr, int i, int i2) {
        return i2 <= i ? C27445x.f77234f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: d */
    public static ApicFrame m564d(C27434m c27434m, int i, int i2) throws UnsupportedEncodingException {
        int i3;
        String str;
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i4);
        c27434m.f77201b += i4;
        if (i2 == 2) {
            String valueOf = String.valueOf(C27445x.m288F(new String(bArr, 0, 3, "ISO-8859-1")));
            String concat = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
            str = concat;
            if ("image/jpg".equals(concat)) {
                str = ContentFormat.IMAGE_JPEG;
            }
            i3 = 2;
        } else {
            i3 = m546v(bArr, 0);
            str = C27445x.m288F(new String(bArr, 0, i3, "ISO-8859-1"));
            if (str.indexOf(47) == -1) {
                str = str.length() != 0 ? "image/".concat(str) : new String("image/");
            }
        }
        byte b = bArr[i3 + 1];
        int i5 = i3 + 2;
        int m547u = m547u(bArr, i5, m326o);
        return new ApicFrame(str, new String(bArr, i5, m547u - i5, m549s), b & 255, m566b(bArr, m550r(m326o) + m547u, i4));
    }

    /* renamed from: e */
    public static BinaryFrame m563e(C27434m c27434m, int i, String str) {
        byte[] bArr = new byte[i];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i);
        c27434m.f77201b += i;
        return new BinaryFrame(str, bArr);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: f */
    public static ChapterFrame m562f(C27434m c27434m, int i, int i2, boolean z, int i3, AbstractC27324a abstractC27324a) throws UnsupportedEncodingException {
        int i4 = c27434m.f77201b;
        int m546v = m546v(c27434m.f77200a, i4);
        String str = new String(c27434m.f77200a, i4, m546v - i4, "ISO-8859-1");
        c27434m.m315z(m546v + 1);
        int m337d = c27434m.m337d();
        int m337d2 = c27434m.m337d();
        char m325p = c27434m.m325p();
        if (m325p == 4294967295L) {
            m325p = 65535;
        }
        char m325p2 = c27434m.m325p();
        if (m325p2 == 4294967295L) {
            m325p2 = 65535;
        }
        ArrayList arrayList = new ArrayList();
        while (c27434m.f77201b < i4 + i) {
            Id3Frame m559i = m559i(i2, c27434m, z, i3, abstractC27324a);
            if (m559i != null) {
                arrayList.add(m559i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, m337d, m337d2, m325p, m325p2, id3FrameArr);
    }

    /* renamed from: g */
    public static ChapterTocFrame m561g(C27434m c27434m, int i, int i2, boolean z, int i3, AbstractC27324a abstractC27324a) throws UnsupportedEncodingException {
        int i4 = c27434m.f77201b;
        int m546v = m546v(c27434m.f77200a, i4);
        String str = new String(c27434m.f77200a, i4, m546v - i4, "ISO-8859-1");
        c27434m.m315z(m546v + 1);
        int m326o = c27434m.m326o();
        boolean z2 = (m326o & 2) != 0;
        boolean z3 = (m326o & 1) != 0;
        int m326o2 = c27434m.m326o();
        String[] strArr = new String[m326o2];
        for (int i5 = 0; i5 < m326o2; i5++) {
            int i6 = c27434m.f77201b;
            int m546v2 = m546v(c27434m.f77200a, i6);
            strArr[i5] = new String(c27434m.f77200a, i6, m546v2 - i6, "ISO-8859-1");
            c27434m.m315z(m546v2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (c27434m.f77201b < i4 + i) {
            Id3Frame m559i = m559i(i2, c27434m, z, i3, abstractC27324a);
            if (m559i != null) {
                arrayList.add(m559i);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: h */
    public static CommentFrame m560h(C27434m c27434m, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        byte[] bArr = new byte[3];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, 3);
        c27434m.f77201b += 3;
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr2, 0, i2);
        c27434m.f77201b += i2;
        int m547u = m547u(bArr2, 0, m326o);
        String str2 = new String(bArr2, 0, m547u, m549s);
        int m550r = m550r(m326o) + m547u;
        return new CommentFrame(str, str2, m555m(bArr2, m550r, m547u(bArr2, m550r, m326o), m549s));
    }

    /* renamed from: i */
    public static Id3Frame m559i(int i, C27434m c27434m, boolean z, int i2, AbstractC27324a abstractC27324a) {
        int m323r;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int m326o = c27434m.m326o();
        int m326o2 = c27434m.m326o();
        int m326o3 = c27434m.m326o();
        int m326o4 = i >= 3 ? c27434m.m326o() : 0;
        if (i == 4) {
            int m323r2 = c27434m.m323r();
            m323r = m323r2;
            if (!z) {
                m323r = (((m323r2 >> 24) & 255) << 21) | (m323r2 & 255) | (((m323r2 >> 8) & 255) << 7) | (((m323r2 >> 16) & 255) << 14);
            }
        } else {
            m323r = i == 3 ? c27434m.m323r() : c27434m.m324q();
        }
        int i3 = m323r;
        int m321t = i >= 3 ? c27434m.m321t() : 0;
        if (m326o == 0 && m326o2 == 0 && m326o3 == 0 && m326o4 == 0 && i3 == 0 && m321t == 0) {
            c27434m.m315z(c27434m.f77202c);
            return null;
        }
        int i4 = c27434m.f77201b + i3;
        int i5 = c27434m.f77202c;
        if (i4 > i5) {
            c27434m.m315z(i5);
            return null;
        } else if (abstractC27324a != null && !abstractC27324a.m543a(i, m326o, m326o2, m326o3, m326o4)) {
            c27434m.m315z(i4);
            return null;
        } else {
            int i6 = m321t;
            if (i == 3) {
                z4 = (i6 & 128) != 0;
                z3 = (i6 & 64) != 0;
                z2 = false;
                z6 = (i6 & 32) != 0;
                z5 = z4;
            } else if (i == 4) {
                boolean z7 = (i6 & 64) != 0;
                boolean z8 = (i6 & 8) != 0;
                z3 = (i6 & 4) != 0;
                z2 = (i6 & 2) != 0;
                boolean z9 = (i6 & 1) != 0;
                boolean z10 = z8;
                z6 = z7;
                z5 = z9;
                z4 = z10;
            } else {
                z6 = false;
                z3 = false;
                z5 = false;
                z2 = false;
                z4 = false;
            }
            if (z4 || z3) {
                c27434m.m315z(i4);
                return null;
            }
            int i7 = i3;
            if (z6) {
                i7 = i3 - 1;
                c27434m.m341A(1);
            }
            int i8 = i7;
            if (z5) {
                i8 = i7 - 4;
                c27434m.m341A(4);
            }
            int m545w = z2 ? m545w(c27434m, i8) : i8;
            try {
                TextInformationFrame m553o = (m326o == 84 && m326o2 == 88 && m326o3 == 88 && (i == 2 || m326o4 == 88)) ? m553o(c27434m, m545w) : m326o == 84 ? m554n(c27434m, m545w, m548t(i, m326o, m326o2, m326o3, m326o4)) : (m326o == 87 && m326o2 == 88 && m326o3 == 88 && (i == 2 || m326o4 == 88)) ? m551q(c27434m, m545w) : m326o == 87 ? m552p(c27434m, m545w, m548t(i, m326o, m326o2, m326o3, m326o4)) : (m326o == 80 && m326o2 == 82 && m326o3 == 73 && m326o4 == 86) ? m556l(c27434m, m545w) : (m326o == 71 && m326o2 == 69 && m326o3 == 79 && (m326o4 == 66 || i == 2)) ? m558j(c27434m, m545w) : (i != 2 ? !(m326o == 65 && m326o2 == 80 && m326o3 == 73 && m326o4 == 67) : !(m326o == 80 && m326o2 == 73 && m326o3 == 67)) ? (m326o == 67 && m326o2 == 79 && m326o3 == 77 && (m326o4 == 77 || i == 2)) ? m560h(c27434m, m545w) : (m326o == 67 && m326o2 == 72 && m326o3 == 65 && m326o4 == 80) ? m562f(c27434m, m545w, i, z, i2, abstractC27324a) : (m326o == 67 && m326o2 == 84 && m326o3 == 79 && m326o4 == 67) ? m561g(c27434m, m545w, i, z, i2, abstractC27324a) : (m326o == 77 && m326o2 == 76 && m326o3 == 76 && m326o4 == 84) ? m557k(c27434m, m545w) : m563e(c27434m, m545w, m548t(i, m326o, m326o2, m326o3, m326o4)) : m564d(c27434m, m545w, i);
                if (m553o == null) {
                    String.valueOf(m548t(i, m326o, m326o2, m326o3, m326o4)).length();
                }
                c27434m.m315z(i4);
                return m553o;
            } catch (UnsupportedEncodingException e) {
                c27434m.m315z(i4);
                return null;
            } catch (Throwable th) {
                c27434m.m315z(i4);
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static GeobFrame m558j(C27434m c27434m, int i) throws UnsupportedEncodingException {
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i2);
        c27434m.f77201b += i2;
        int m546v = m546v(bArr, 0);
        String str = new String(bArr, 0, m546v, "ISO-8859-1");
        int i3 = m546v + 1;
        int m547u = m547u(bArr, i3, m326o);
        String m555m = m555m(bArr, i3, m547u, m549s);
        int m550r = m550r(m326o) + m547u;
        int m547u2 = m547u(bArr, m550r, m326o);
        return new GeobFrame(str, m555m, m555m(bArr, m550r, m547u2, m549s), m566b(bArr, m550r(m326o) + m547u2, i2));
    }

    /* renamed from: k */
    public static MlltFrame m557k(C27434m c27434m, int i) {
        int m321t = c27434m.m321t();
        int m324q = c27434m.m324q();
        int m324q2 = c27434m.m324q();
        int m326o = c27434m.m326o();
        int m326o2 = c27434m.m326o();
        C27433l c27433l = new C27433l();
        c27433l.m345g(c27434m.f77200a, c27434m.f77202c);
        c27433l.m344h(c27434m.f77201b * 8);
        int i2 = ((i - 10) * 8) / (m326o + m326o2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m347e = c27433l.m347e(m326o);
            int m347e2 = c27433l.m347e(m326o2);
            iArr[i3] = m347e;
            iArr2[i3] = m347e2;
        }
        return new MlltFrame(m321t, m324q, m324q2, iArr, iArr2);
    }

    /* renamed from: l */
    public static PrivFrame m556l(C27434m c27434m, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i);
        c27434m.f77201b += i;
        int m546v = m546v(bArr, 0);
        return new PrivFrame(new String(bArr, 0, m546v, "ISO-8859-1"), m566b(bArr, m546v + 1, i));
    }

    /* renamed from: m */
    public static String m555m(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* renamed from: n */
    public static TextInformationFrame m554n(C27434m c27434m, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i2);
        c27434m.f77201b += i2;
        return new TextInformationFrame(str, (String) null, new String(bArr, 0, m547u(bArr, 0, m326o), m549s));
    }

    /* renamed from: o */
    public static TextInformationFrame m553o(C27434m c27434m, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i2);
        c27434m.f77201b += i2;
        int m547u = m547u(bArr, 0, m326o);
        String str = new String(bArr, 0, m547u, m549s);
        int m550r = m550r(m326o) + m547u;
        return new TextInformationFrame("TXXX", str, m555m(bArr, m550r, m547u(bArr, m550r, m326o), m549s));
    }

    /* renamed from: p */
    public static UrlLinkFrame m552p(C27434m c27434m, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i);
        c27434m.f77201b += i;
        return new UrlLinkFrame(str, (String) null, new String(bArr, 0, m546v(bArr, 0), "ISO-8859-1"));
    }

    /* renamed from: q */
    public static UrlLinkFrame m551q(C27434m c27434m, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int m326o = c27434m.m326o();
        String m549s = m549s(m326o);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i2);
        c27434m.f77201b += i2;
        int m547u = m547u(bArr, 0, m326o);
        String str = new String(bArr, 0, m547u, m549s);
        int m550r = m550r(m326o) + m547u;
        return new UrlLinkFrame("WXXX", str, m555m(bArr, m550r, m546v(bArr, m550r), "ISO-8859-1"));
    }

    /* renamed from: r */
    public static int m550r(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: s */
    public static String m549s(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : StringConstant.UTF8 : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: t */
    public static String m548t(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: u */
    public static int m547u(byte[] bArr, int i, int i2) {
        int m546v = m546v(bArr, i);
        if (i2 != 0) {
            int i3 = m546v;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m546v(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return m546v;
    }

    /* renamed from: v */
    public static int m546v(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: w */
    public static int m545w(C27434m c27434m, int i) {
        byte[] bArr = c27434m.f77200a;
        int i2 = c27434m.f77201b;
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
    public static boolean m544x(p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1892s0.p1894g.C27323a.m544x(n3.y.b.a.x0.m, int, int, boolean):boolean");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27318a
    /* renamed from: a */
    public Metadata mo567a(C27320c c27320c) {
        ByteBuffer byteBuffer = c27320c.f75985c;
        Objects.requireNonNull(byteBuffer);
        return m565c(byteBuffer.array(), byteBuffer.limit());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006e, code lost:
        if (((r0 & 64) != 0) != false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0127 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0129  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.metadata.Metadata m565c(byte[] r7, int r8) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1892s0.p1894g.C27323a.m565c(byte[], int):androidx.media2.exoplayer.external.metadata.Metadata");
    }
}
