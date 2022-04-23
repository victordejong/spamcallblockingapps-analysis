package p131c.p161d.p170b.p188c.p220y0.p222b;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
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
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.y0.b.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/y0/b/b.class */
public final class C3207b {

    /* renamed from: a */
    public final AbstractC3208a f11848a;

    /* renamed from: c.d.b.c.y0.b.b$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/y0/b/b$a.class */
    public interface AbstractC3208a {
        /* renamed from: a */
        boolean mo27415a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: c.d.b.c.y0.b.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/y0/b/b$b.class */
    public static final class C3209b {

        /* renamed from: a */
        public final int f11849a;

        /* renamed from: b */
        public final boolean f11850b;

        /* renamed from: c */
        public final int f11851c;

        public C3209b(int i, boolean z, int i2) {
            this.f11849a = i;
            this.f11850b = z;
            this.f11851c = i2;
        }
    }

    static {
        C3206a aVar = C3206a.f11847a;
    }

    public C3207b(AbstractC3208a aVar) {
        this.f11848a = aVar;
    }

    /* renamed from: a */
    public static int m27440a(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: a */
    public static C3209b m27437a(C2904v vVar) {
        int u;
        int i;
        if (vVar.m28552a() < 10) {
            C2894o.m28594d("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (vVar.m28521u() != 4801587) {
            C2894o.m28594d("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(u)));
            return null;
        }
        int r = vVar.m28524r();
        vVar.m28536f(1);
        int r2 = vVar.m28524r();
        int q = vVar.m28525q();
        if (r == 2) {
            i = q;
            if ((r2 & 64) != 0) {
                C2894o.m28594d("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (r == 3) {
            i = q;
            if ((r2 & 64) != 0) {
                int g = vVar.m28535g();
                vVar.m28536f(g);
                i = q - (g + 4);
            }
        } else if (r == 4) {
            int i2 = q;
            if ((r2 & 64) != 0) {
                int q2 = vVar.m28525q();
                vVar.m28536f(q2 - 4);
                i2 = q - q2;
            }
            i = i2;
            if ((r2 & 16) != 0) {
                i = i2 - 10;
            }
        } else {
            C2894o.m28594d("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + r);
            return null;
        }
        boolean z = false;
        if (r < 4) {
            z = false;
            if ((r2 & 128) != 0) {
                z = true;
            }
        }
        return new C3209b(r, z, i);
    }

    /* renamed from: a */
    public static ApicFrame m27435a(C2904v vVar, int i, int i2) throws UnsupportedEncodingException {
        int i3;
        String str;
        int r = vVar.m28524r();
        String b = m27428b(r);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        vVar.m28546a(bArr, 0, i4);
        if (i2 == 2) {
            String str2 = "image/" + C2885h0.m28629f(new String(bArr, 0, 3, HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
            str = str2;
            if ("image/jpg".equals(str2)) {
                str = "image/jpeg";
            }
            i3 = 2;
        } else {
            i3 = m27423b(bArr, 0);
            str = C2885h0.m28629f(new String(bArr, 0, i3, HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
            if (str.indexOf(47) == -1) {
                str = "image/" + str;
            }
        }
        byte b2 = bArr[i3 + 1];
        int i5 = i3 + 2;
        int b3 = m27422b(bArr, i5, r);
        return new ApicFrame(str, new String(bArr, i5, b3 - i5, b), b2 & 255, m27430a(bArr, b3 + m27440a(r), i4));
    }

    /* renamed from: a */
    public static BinaryFrame m27432a(C2904v vVar, int i, String str) {
        byte[] bArr = new byte[i];
        vVar.m28546a(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    /* renamed from: a */
    public static ChapterFrame m27433a(C2904v vVar, int i, int i2, boolean z, int i3, AbstractC3208a aVar) throws UnsupportedEncodingException {
        int c = vVar.m28543c();
        int b = m27423b(vVar.f10530a, c);
        String str = new String(vVar.f10530a, c, b - c, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        vVar.m28538e(b + 1);
        int g = vVar.m28535g();
        int g2 = vVar.m28535g();
        long t = vVar.m28522t();
        if (t == 4294967295L) {
            t = -1;
        }
        long t2 = vVar.m28522t();
        if (t2 == 4294967295L) {
            t2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        while (vVar.m28543c() < c + i) {
            Id3Frame a = m27438a(i2, vVar, z, i3, aVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, g, g2, t, t2, id3FrameArr);
    }

    /* renamed from: a */
    public static CommentFrame m27436a(C2904v vVar, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int r = vVar.m28524r();
        String b = m27428b(r);
        byte[] bArr = new byte[3];
        vVar.m28546a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        vVar.m28546a(bArr2, 0, i2);
        int b2 = m27422b(bArr2, 0, r);
        String str2 = new String(bArr2, 0, b2, b);
        int a = b2 + m27440a(r);
        return new CommentFrame(str, str2, m27429a(bArr2, a, m27422b(bArr2, a, r), b));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Id3Frame m27438a(int i, C2904v vVar, boolean z, int i2, AbstractC3208a aVar) {
        int v;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int r = vVar.m28524r();
        int r2 = vVar.m28524r();
        int r3 = vVar.m28524r();
        int r4 = i >= 3 ? vVar.m28524r() : 0;
        if (i == 4) {
            int v2 = vVar.m28520v();
            v = v2;
            if (!z) {
                v = (((v2 >> 24) & 255) << 21) | (v2 & 255) | (((v2 >> 8) & 255) << 7) | (((v2 >> 16) & 255) << 14);
            }
        } else {
            v = i == 3 ? vVar.m28520v() : vVar.m28521u();
        }
        int x = i >= 3 ? vVar.m28518x() : 0;
        if (r == 0 && r2 == 0 && r3 == 0 && r4 == 0 && v == 0 && x == 0) {
            vVar.m28538e(vVar.m28541d());
            return null;
        }
        int c = vVar.m28543c() + v;
        if (c > vVar.m28541d()) {
            C2894o.m28594d("Id3Decoder", "Frame size exceeds remaining tag data");
            vVar.m28538e(vVar.m28541d());
            return null;
        } else if (aVar == null || aVar.mo27415a(i, r, r2, r3, r4)) {
            if (i == 3) {
                boolean z7 = (x & 128) != 0;
                z3 = (x & 64) != 0;
                z2 = (x & 32) != 0;
                z4 = z7;
                z5 = false;
                z6 = z7;
            } else if (i == 4) {
                z2 = (x & 64) != 0;
                z4 = (x & 8) != 0;
                z3 = (x & 4) != 0;
                z5 = (x & 2) != 0;
                z6 = (x & 1) != 0;
            } else {
                z2 = false;
                z6 = false;
                z3 = false;
                z5 = false;
                z4 = false;
            }
            if (z4 || z3) {
                C2894o.m28594d("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                vVar.m28538e(c);
                return null;
            }
            int i3 = v;
            if (z2) {
                i3 = v - 1;
                vVar.m28536f(1);
            }
            int i4 = i3;
            if (z6) {
                i4 = i3 - 4;
                vVar.m28536f(4);
            }
            int i5 = i4;
            if (z5) {
                i5 = m27416g(vVar, i4);
            }
            try {
                try {
                    Id3Frame e = (r == 84 && r2 == 88 && r3 == 88 && (i == 2 || r4 == 88)) ? m27418e(vVar, i5) : r == 84 ? m27424b(vVar, i5, m27439a(i, r, r2, r3, r4)) : (r == 87 && r2 == 88 && r3 == 88 && (i == 2 || r4 == 88)) ? m27417f(vVar, i5) : r == 87 ? m27420c(vVar, i5, m27439a(i, r, r2, r3, r4)) : (r == 80 && r2 == 82 && r3 == 73 && r4 == 86) ? m27419d(vVar, i5) : (r == 71 && r2 == 69 && r3 == 79 && (r4 == 66 || i == 2)) ? m27426b(vVar, i5) : (i != 2 ? !(r == 65 && r2 == 80 && r3 == 73 && r4 == 67) : !(r == 80 && r2 == 73 && r3 == 67)) ? (r == 67 && r2 == 79 && r3 == 77 && (r4 == 77 || i == 2)) ? m27436a(vVar, i5) : (r == 67 && r2 == 72 && r3 == 65 && r4 == 80) ? m27433a(vVar, i5, i, z, i2, aVar) : (r == 67 && r2 == 84 && r3 == 79 && r4 == 67) ? m27425b(vVar, i5, i, z, i2, aVar) : (r == 77 && r2 == 76 && r3 == 76 && r4 == 84) ? m27421c(vVar, i5) : m27432a(vVar, i5, m27439a(i, r, r2, r3, r4)) : m27435a(vVar, i5, i);
                    if (e == null) {
                        C2894o.m28594d("Id3Decoder", "Failed to decode frame: id=" + m27439a(i, r, r2, r3, r4) + ", frameSize=" + i5);
                    }
                    vVar.m28538e(c);
                    return e;
                } catch (UnsupportedEncodingException e2) {
                    C2894o.m28594d("Id3Decoder", "Unsupported character encoding");
                    vVar.m28538e(c);
                    return null;
                }
            } catch (Throwable th) {
                vVar.m28538e(c);
                throw th;
            }
        } else {
            vVar.m28538e(c);
            return null;
        }
    }

    /* renamed from: a */
    public static String m27439a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: a */
    public static String m27429a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cd, code lost:
        if ((r18 & 1) != 0) goto L_0x00d0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fe, code lost:
        if ((r18 & 128) != 0) goto L_0x00d0;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m27434a(p131c.p161d.p170b.p188c.p203g1.C2904v r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p220y0.p222b.C3207b.m27434a(c.d.b.c.g1.v, int, int, boolean):boolean");
    }

    /* renamed from: a */
    public static byte[] m27430a(byte[] bArr, int i, int i2) {
        return i2 <= i ? C2885h0.f10482f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m27423b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: b */
    public static int m27422b(byte[] bArr, int i, int i2) {
        int b = m27423b(bArr, i);
        if (i2 != 0) {
            int i3 = b;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m27423b(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return b;
    }

    /* renamed from: b */
    public static ChapterTocFrame m27425b(C2904v vVar, int i, int i2, boolean z, int i3, AbstractC3208a aVar) throws UnsupportedEncodingException {
        int c = vVar.m28543c();
        int b = m27423b(vVar.f10530a, c);
        String str = new String(vVar.f10530a, c, b - c, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        vVar.m28538e(b + 1);
        int r = vVar.m28524r();
        boolean z2 = (r & 2) != 0;
        boolean z3 = (r & 1) != 0;
        int r2 = vVar.m28524r();
        String[] strArr = new String[r2];
        for (int i4 = 0; i4 < r2; i4++) {
            int c2 = vVar.m28543c();
            int b2 = m27423b(vVar.f10530a, c2);
            strArr[i4] = new String(vVar.f10530a, c2, b2 - c2, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
            vVar.m28538e(b2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (vVar.m28543c() < c + i) {
            Id3Frame a = m27438a(i2, vVar, z, i3, aVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: b */
    public static GeobFrame m27426b(C2904v vVar, int i) throws UnsupportedEncodingException {
        int r = vVar.m28524r();
        String b = m27428b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        vVar.m28546a(bArr, 0, i2);
        int b2 = m27423b(bArr, 0);
        String str = new String(bArr, 0, b2, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        int i3 = b2 + 1;
        int b3 = m27422b(bArr, i3, r);
        String a = m27429a(bArr, i3, b3, b);
        int a2 = b3 + m27440a(r);
        int b4 = m27422b(bArr, a2, r);
        return new GeobFrame(str, a, m27429a(bArr, a2, b4, b), m27430a(bArr, b4 + m27440a(r), i2));
    }

    /* renamed from: b */
    public static TextInformationFrame m27424b(C2904v vVar, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = vVar.m28524r();
        String b = m27428b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        vVar.m28546a(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, m27422b(bArr, 0, r), b));
    }

    /* renamed from: b */
    public static String m27428b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? HttpHeaderParser.DEFAULT_CONTENT_CHARSET : Request.DEFAULT_PARAMS_ENCODING : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m27427b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* renamed from: c */
    public static MlltFrame m27421c(C2904v vVar, int i) {
        int x = vVar.m28518x();
        int u = vVar.m28521u();
        int u2 = vVar.m28521u();
        int r = vVar.m28524r();
        int r2 = vVar.m28524r();
        C2903u uVar = new C2903u();
        uVar.m28563a(vVar);
        int i2 = ((i - 10) * 8) / (r + r2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int a = uVar.m28565a(r);
            int a2 = uVar.m28565a(r2);
            iArr[i3] = a;
            iArr2[i3] = a2;
        }
        return new MlltFrame(x, u, u2, iArr, iArr2);
    }

    /* renamed from: c */
    public static UrlLinkFrame m27420c(C2904v vVar, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        vVar.m28546a(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, m27423b(bArr, 0), HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
    }

    /* renamed from: d */
    public static PrivFrame m27419d(C2904v vVar, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        vVar.m28546a(bArr, 0, i);
        int b = m27423b(bArr, 0);
        return new PrivFrame(new String(bArr, 0, b, HttpHeaderParser.DEFAULT_CONTENT_CHARSET), m27430a(bArr, b + 1, i));
    }

    /* renamed from: e */
    public static TextInformationFrame m27418e(C2904v vVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = vVar.m28524r();
        String b = m27428b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        vVar.m28546a(bArr, 0, i2);
        int b2 = m27422b(bArr, 0, r);
        String str = new String(bArr, 0, b2, b);
        int a = b2 + m27440a(r);
        return new TextInformationFrame("TXXX", str, m27429a(bArr, a, m27422b(bArr, a, r), b));
    }

    /* renamed from: f */
    public static UrlLinkFrame m27417f(C2904v vVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = vVar.m28524r();
        String b = m27428b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        vVar.m28546a(bArr, 0, i2);
        int b2 = m27422b(bArr, 0, r);
        String str = new String(bArr, 0, b2, b);
        int a = b2 + m27440a(r);
        return new UrlLinkFrame("WXXX", str, m27429a(bArr, a, m27423b(bArr, a), HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
    }

    /* renamed from: g */
    public static int m27416g(C2904v vVar, int i) {
        byte[] bArr = vVar.f10530a;
        int c = vVar.m28543c();
        int i2 = c;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= c + i) {
                return i;
            }
            i = i;
            if ((bArr[i2] & 255) == 255) {
                i = i;
                if (bArr[i3] == 0) {
                    System.arraycopy(bArr, i2 + 2, bArr, i3, (i - (i2 - c)) - 2);
                    i--;
                }
            }
            i2 = i3;
        }
    }

    /* renamed from: a */
    public Metadata m27431a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C2904v vVar = new C2904v(bArr, i);
        C3209b a = m27437a(vVar);
        if (a == null) {
            return null;
        }
        int c = vVar.m28543c();
        int i2 = a.f11849a == 2 ? 6 : 10;
        int i3 = a.f11851c;
        if (a.f11850b) {
            i3 = m27416g(vVar, a.f11851c);
        }
        vVar.m28540d(c + i3);
        boolean z = false;
        if (!m27434a(vVar, a.f11849a, i2, false)) {
            if (a.f11849a != 4 || !m27434a(vVar, 4, i2, true)) {
                C2894o.m28594d("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + a.f11849a);
                return null;
            }
            z = true;
        }
        while (vVar.m28552a() >= i2) {
            Id3Frame a2 = m27438a(a.f11849a, vVar, z, i2, this.f11848a);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new Metadata(arrayList);
    }
}
