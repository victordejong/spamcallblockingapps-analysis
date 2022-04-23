package p012b.p076s.p078b.p079a.p096u0.p099h;

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
import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1515a;
import p012b.p076s.p078b.p079a.p096u0.C1518c;
/* renamed from: b.s.b.a.u0.h.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/h/b.class */
public final class C1524b implements AbstractC1515a {

    /* renamed from: a */
    public final AbstractC1525a f6232a;

    /* renamed from: b.s.b.a.u0.h.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u0/h/b$a.class */
    public interface AbstractC1525a {
        /* renamed from: a */
        boolean mo32967a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: b.s.b.a.u0.h.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u0/h/b$b.class */
    public static final class C1526b {

        /* renamed from: a */
        public final int f6233a;

        /* renamed from: b */
        public final boolean f6234b;

        /* renamed from: c */
        public final int f6235c;

        public C1526b(int i, boolean z, int i2) {
            this.f6233a = i;
            this.f6234b = z;
            this.f6235c = i2;
        }
    }

    static {
        AbstractC1525a aVar = C1523a.f6231a;
    }

    public C1524b() {
        this(null);
    }

    public C1524b(AbstractC1525a aVar) {
        this.f6232a = aVar;
    }

    /* renamed from: a */
    public static int m32992a(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: a */
    public static ApicFrame m32987a(C1184p pVar, int i, int i2) throws UnsupportedEncodingException {
        String str;
        int i3;
        int r = pVar.m34344r();
        String b = m32980b(r);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        pVar.m34366a(bArr, 0, i4);
        if (i2 == 2) {
            String valueOf = String.valueOf(C1167d0.m34432j(new String(bArr, 0, 3, HttpHeaderParser.DEFAULT_CONTENT_CHARSET)));
            String concat = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
            str = concat;
            if ("image/jpg".equals(concat)) {
                str = "image/jpeg";
            }
            i3 = 2;
        } else {
            i3 = m32975b(bArr, 0);
            String j = C1167d0.m34432j(new String(bArr, 0, i3, HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
            str = j;
            if (j.indexOf(47) == -1) {
                String valueOf2 = String.valueOf(j);
                if (valueOf2.length() != 0) {
                    str = "image/".concat(valueOf2);
                } else {
                    str = new String("image/");
                }
            }
        }
        byte b2 = bArr[i3 + 1];
        int i5 = i3 + 2;
        int b3 = m32974b(bArr, i5, r);
        return new ApicFrame(str, new String(bArr, i5, b3 - i5, b), b2 & 255, m32982a(bArr, b3 + m32992a(r), i4));
    }

    /* renamed from: a */
    public static BinaryFrame m32984a(C1184p pVar, int i, String str) {
        byte[] bArr = new byte[i];
        pVar.m34366a(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    /* renamed from: a */
    public static ChapterFrame m32985a(C1184p pVar, int i, int i2, boolean z, int i3, AbstractC1525a aVar) throws UnsupportedEncodingException {
        int c = pVar.m34363c();
        int b = m32975b(pVar.f4738a, c);
        String str = new String(pVar.f4738a, c, b - c, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        pVar.m34358e(b + 1);
        int f = pVar.m34357f();
        int f2 = pVar.m34357f();
        long t = pVar.m34342t();
        if (t == 4294967295L) {
            t = -1;
        }
        long t2 = pVar.m34342t();
        if (t2 == 4294967295L) {
            t2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        while (pVar.m34363c() < c + i) {
            Id3Frame a = m32990a(i2, pVar, z, i3, aVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, f, f2, t, t2, id3FrameArr);
    }

    /* renamed from: a */
    public static CommentFrame m32988a(C1184p pVar, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int r = pVar.m34344r();
        String b = m32980b(r);
        byte[] bArr = new byte[3];
        pVar.m34366a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        pVar.m34366a(bArr2, 0, i2);
        int b2 = m32974b(bArr2, 0, r);
        String str2 = new String(bArr2, 0, b2, b);
        int a = b2 + m32992a(r);
        return new CommentFrame(str, str2, m32981a(bArr2, a, m32974b(bArr2, a, r), b));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Id3Frame m32990a(int i, C1184p pVar, boolean z, int i2, AbstractC1525a aVar) {
        int v;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int r = pVar.m34344r();
        int r2 = pVar.m34344r();
        int r3 = pVar.m34344r();
        int r4 = i >= 3 ? pVar.m34344r() : 0;
        if (i == 4) {
            int v2 = pVar.m34340v();
            v = v2;
            if (!z) {
                v = (((v2 >> 24) & 255) << 21) | (v2 & 255) | (((v2 >> 8) & 255) << 7) | (((v2 >> 16) & 255) << 14);
            }
        } else {
            v = i == 3 ? pVar.m34340v() : pVar.m34341u();
        }
        int x = i >= 3 ? pVar.m34338x() : 0;
        if (r == 0 && r2 == 0 && r3 == 0 && r4 == 0 && v == 0 && x == 0) {
            pVar.m34358e(pVar.m34361d());
            return null;
        }
        int c = pVar.m34363c() + v;
        if (c > pVar.m34361d()) {
            C1175j.m34414d("Id3Decoder", "Frame size exceeds remaining tag data");
            pVar.m34358e(pVar.m34361d());
            return null;
        } else if (aVar == null || aVar.mo32967a(i, r, r2, r3, r4)) {
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
                C1175j.m34414d("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                pVar.m34358e(c);
                return null;
            }
            int i3 = v;
            if (z2) {
                i3 = v - 1;
                pVar.m34356f(1);
            }
            int i4 = i3;
            if (z6) {
                i4 = i3 - 4;
                pVar.m34356f(4);
            }
            int i5 = i4;
            if (z5) {
                i5 = m32968g(pVar, i4);
            }
            try {
                try {
                    Id3Frame e = (r == 84 && r2 == 88 && r3 == 88 && (i == 2 || r4 == 88)) ? m32970e(pVar, i5) : r == 84 ? m32976b(pVar, i5, m32991a(i, r, r2, r3, r4)) : (r == 87 && r2 == 88 && r3 == 88 && (i == 2 || r4 == 88)) ? m32969f(pVar, i5) : r == 87 ? m32972c(pVar, i5, m32991a(i, r, r2, r3, r4)) : (r == 80 && r2 == 82 && r3 == 73 && r4 == 86) ? m32971d(pVar, i5) : (r == 71 && r2 == 69 && r3 == 79 && (r4 == 66 || i == 2)) ? m32978b(pVar, i5) : (i != 2 ? !(r == 65 && r2 == 80 && r3 == 73 && r4 == 67) : !(r == 80 && r2 == 73 && r3 == 67)) ? (r == 67 && r2 == 79 && r3 == 77 && (r4 == 77 || i == 2)) ? m32988a(pVar, i5) : (r == 67 && r2 == 72 && r3 == 65 && r4 == 80) ? m32985a(pVar, i5, i, z, i2, aVar) : (r == 67 && r2 == 84 && r3 == 79 && r4 == 67) ? m32977b(pVar, i5, i, z, i2, aVar) : (r == 77 && r2 == 76 && r3 == 76 && r4 == 84) ? m32973c(pVar, i5) : m32984a(pVar, i5, m32991a(i, r, r2, r3, r4)) : m32987a(pVar, i5, i);
                    if (e == null) {
                        String a = m32991a(i, r, r2, r3, r4);
                        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 50);
                        sb.append("Failed to decode frame: id=");
                        sb.append(a);
                        sb.append(", frameSize=");
                        sb.append(i5);
                        C1175j.m34414d("Id3Decoder", sb.toString());
                    }
                    pVar.m34358e(c);
                    return e;
                } catch (UnsupportedEncodingException e2) {
                    C1175j.m34414d("Id3Decoder", "Unsupported character encoding");
                    pVar.m34358e(c);
                    return null;
                }
            } catch (Throwable th) {
                pVar.m34358e(c);
                throw th;
            }
        } else {
            pVar.m34358e(c);
            return null;
        }
    }

    /* renamed from: a */
    public static C1526b m32989a(C1184p pVar) {
        int i;
        if (pVar.m34372a() < 10) {
            C1175j.m34414d("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int u = pVar.m34341u();
        if (u != 4801587) {
            StringBuilder sb = new StringBuilder(59);
            sb.append("Unexpected first three bytes of ID3 tag header: ");
            sb.append(u);
            C1175j.m34414d("Id3Decoder", sb.toString());
            return null;
        }
        int r = pVar.m34344r();
        boolean z = true;
        pVar.m34356f(1);
        int r2 = pVar.m34344r();
        int q = pVar.m34345q();
        if (r == 2) {
            i = q;
            if ((r2 & 64) != 0) {
                C1175j.m34414d("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (r == 3) {
            i = q;
            if ((r2 & 64) != 0) {
                int f = pVar.m34357f();
                pVar.m34356f(f);
                i = q - (f + 4);
            }
        } else if (r == 4) {
            int i2 = q;
            if ((r2 & 64) != 0) {
                int q2 = pVar.m34345q();
                pVar.m34356f(q2 - 4);
                i2 = q - q2;
            }
            i = i2;
            if ((r2 & 16) != 0) {
                i = i2 - 10;
            }
        } else {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Skipped ID3 tag with unsupported majorVersion=");
            sb2.append(r);
            C1175j.m34414d("Id3Decoder", sb2.toString());
            return null;
        }
        if (r >= 4 || (r2 & 128) == 0) {
            z = false;
        }
        return new C1526b(r, z, i);
    }

    /* renamed from: a */
    public static String m32991a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: a */
    public static String m32981a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
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
    public static boolean m32986a(p012b.p076s.p078b.p079a.p080a1.C1184p r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p096u0.p099h.C1524b.m32986a(b.s.b.a.a1.p, int, int, boolean):boolean");
    }

    /* renamed from: a */
    public static byte[] m32982a(byte[] bArr, int i, int i2) {
        return i2 <= i ? C1167d0.f4693f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m32975b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: b */
    public static int m32974b(byte[] bArr, int i, int i2) {
        int b = m32975b(bArr, i);
        if (i2 != 0) {
            int i3 = b;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m32975b(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return b;
    }

    /* renamed from: b */
    public static ChapterTocFrame m32977b(C1184p pVar, int i, int i2, boolean z, int i3, AbstractC1525a aVar) throws UnsupportedEncodingException {
        int c = pVar.m34363c();
        int b = m32975b(pVar.f4738a, c);
        String str = new String(pVar.f4738a, c, b - c, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        pVar.m34358e(b + 1);
        int r = pVar.m34344r();
        boolean z2 = (r & 2) != 0;
        boolean z3 = (r & 1) != 0;
        int r2 = pVar.m34344r();
        String[] strArr = new String[r2];
        for (int i4 = 0; i4 < r2; i4++) {
            int c2 = pVar.m34363c();
            int b2 = m32975b(pVar.f4738a, c2);
            strArr[i4] = new String(pVar.f4738a, c2, b2 - c2, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
            pVar.m34358e(b2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (pVar.m34363c() < c + i) {
            Id3Frame a = m32990a(i2, pVar, z, i3, aVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: b */
    public static GeobFrame m32978b(C1184p pVar, int i) throws UnsupportedEncodingException {
        int r = pVar.m34344r();
        String b = m32980b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        pVar.m34366a(bArr, 0, i2);
        int b2 = m32975b(bArr, 0);
        String str = new String(bArr, 0, b2, HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        int i3 = b2 + 1;
        int b3 = m32974b(bArr, i3, r);
        String a = m32981a(bArr, i3, b3, b);
        int a2 = b3 + m32992a(r);
        int b4 = m32974b(bArr, a2, r);
        return new GeobFrame(str, a, m32981a(bArr, a2, b4, b), m32982a(bArr, b4 + m32992a(r), i2));
    }

    /* renamed from: b */
    public static TextInformationFrame m32976b(C1184p pVar, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = pVar.m34344r();
        String b = m32980b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        pVar.m34366a(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, m32974b(bArr, 0, r), b));
    }

    /* renamed from: b */
    public static String m32980b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? HttpHeaderParser.DEFAULT_CONTENT_CHARSET : Request.DEFAULT_PARAMS_ENCODING : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: b */
    public static final /* synthetic */ boolean m32979b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* renamed from: c */
    public static MlltFrame m32973c(C1184p pVar, int i) {
        int x = pVar.m34338x();
        int u = pVar.m34341u();
        int u2 = pVar.m34341u();
        int r = pVar.m34344r();
        int r2 = pVar.m34344r();
        C1183o oVar = new C1183o();
        oVar.m34383a(pVar);
        int i2 = ((i - 10) * 8) / (r + r2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int a = oVar.m34385a(r);
            int a2 = oVar.m34385a(r2);
            iArr[i3] = a;
            iArr2[i3] = a2;
        }
        return new MlltFrame(x, u, u2, iArr, iArr2);
    }

    /* renamed from: c */
    public static UrlLinkFrame m32972c(C1184p pVar, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        pVar.m34366a(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, m32975b(bArr, 0), HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
    }

    /* renamed from: d */
    public static PrivFrame m32971d(C1184p pVar, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        pVar.m34366a(bArr, 0, i);
        int b = m32975b(bArr, 0);
        return new PrivFrame(new String(bArr, 0, b, HttpHeaderParser.DEFAULT_CONTENT_CHARSET), m32982a(bArr, b + 1, i));
    }

    /* renamed from: e */
    public static TextInformationFrame m32970e(C1184p pVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = pVar.m34344r();
        String b = m32980b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        pVar.m34366a(bArr, 0, i2);
        int b2 = m32974b(bArr, 0, r);
        String str = new String(bArr, 0, b2, b);
        int a = b2 + m32992a(r);
        return new TextInformationFrame("TXXX", str, m32981a(bArr, a, m32974b(bArr, a, r), b));
    }

    /* renamed from: f */
    public static UrlLinkFrame m32969f(C1184p pVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int r = pVar.m34344r();
        String b = m32980b(r);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        pVar.m34366a(bArr, 0, i2);
        int b2 = m32974b(bArr, 0, r);
        String str = new String(bArr, 0, b2, b);
        int a = b2 + m32992a(r);
        return new UrlLinkFrame("WXXX", str, m32981a(bArr, a, m32975b(bArr, a), HttpHeaderParser.DEFAULT_CONTENT_CHARSET));
    }

    /* renamed from: g */
    public static int m32968g(C1184p pVar, int i) {
        byte[] bArr = pVar.f4738a;
        int c = pVar.m34363c();
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

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1515a
    /* renamed from: a */
    public Metadata mo32135a(C1518c cVar) {
        ByteBuffer byteBuffer = cVar.f5245c;
        return m32983a(byteBuffer.array(), byteBuffer.limit());
    }

    /* renamed from: a */
    public Metadata m32983a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C1184p pVar = new C1184p(bArr, i);
        C1526b a = m32989a(pVar);
        if (a == null) {
            return null;
        }
        int c = pVar.m34363c();
        int i2 = a.f6233a == 2 ? 6 : 10;
        int i3 = a.f6235c;
        if (a.f6234b) {
            i3 = m32968g(pVar, a.f6235c);
        }
        pVar.m34360d(c + i3);
        boolean z = false;
        if (!m32986a(pVar, a.f6233a, i2, false)) {
            if (a.f6233a != 4 || !m32986a(pVar, 4, i2, true)) {
                int i4 = a.f6233a;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i4);
                C1175j.m34414d("Id3Decoder", sb.toString());
                return null;
            }
            z = true;
        }
        while (pVar.m34372a() >= i2) {
            Id3Frame a2 = m32990a(a.f6233a, pVar, z, i2, this.f6232a);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new Metadata(arrayList);
    }
}
