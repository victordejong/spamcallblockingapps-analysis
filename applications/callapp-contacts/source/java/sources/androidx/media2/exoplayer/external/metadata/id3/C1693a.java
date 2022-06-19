package androidx.media2.exoplayer.external.metadata.id3;

import androidx.media2.exoplayer.external.metadata.AbstractC1668a;
import androidx.media2.exoplayer.external.metadata.C1671c;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* renamed from: androidx.media2.exoplayer.external.metadata.id3.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a.class */
public final class C1693a implements AbstractC1668a {

    /* renamed from: a */
    public static final AbstractC1694a f6690a = C1696b.f6695a;

    /* renamed from: b */
    private final AbstractC1694a f6691b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a$a.class */
    public interface AbstractC1694a {
        /* renamed from: a */
        boolean mo42385a(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a$b.class */
    public static final class C1695b {

        /* renamed from: a */
        final int f6692a;

        /* renamed from: b */
        final boolean f6693b;

        /* renamed from: c */
        final int f6694c;

        public C1695b(int i, boolean z, int i2) {
            this.f6692a = i;
            this.f6693b = z;
            this.f6694c = i2;
        }
    }

    public C1693a() {
        this(null);
    }

    public C1693a(AbstractC1694a abstractC1694a) {
        this.f6691b = abstractC1694a;
    }

    /* renamed from: a */
    private static int m42392a(byte[] bArr, int i, int i2) {
        int m42387b = m42387b(bArr, i);
        if (i2 != 0) {
            int i3 = m42387b;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m42387b(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return m42387b;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    private static ChapterFrame m42394a(C2018p c2018p, int i, int i2, boolean z, int i3, AbstractC1694a abstractC1694a) throws UnsupportedEncodingException {
        int i4 = c2018p.f8132b;
        int m42387b = m42387b(c2018p.f8131a, i4);
        String str = new String(c2018p.f8131a, i4, m42387b - i4, "ISO-8859-1");
        c2018p.m41533c(m42387b + 1);
        int m41524i = c2018p.m41524i();
        int m41524i2 = c2018p.m41524i();
        char m41526g = c2018p.m41526g();
        if (m41526g == 4294967295L) {
            m41526g = 65535;
        }
        char m41526g2 = c2018p.m41526g();
        if (m41526g2 == 4294967295L) {
            m41526g2 = 65535;
        }
        ArrayList arrayList = new ArrayList();
        while (c2018p.f8132b < i4 + i) {
            Id3Frame m42398a = m42398a(i2, c2018p, z, i3, abstractC1694a);
            if (m42398a != null) {
                arrayList.add(m42398a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, m41524i, m41524i2, m41526g, m41526g2, id3FrameArr);
    }

    /* renamed from: a */
    private static Id3Frame m42398a(int i, C2018p c2018p, boolean z, int i2, AbstractC1694a abstractC1694a) {
        int m41519n;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        TextInformationFrame textInformationFrame;
        String str;
        int i4;
        int m41534c = c2018p.m41534c();
        int m41534c2 = c2018p.m41534c();
        int m41534c3 = c2018p.m41534c();
        int m41534c4 = i >= 3 ? c2018p.m41534c() : 0;
        if (i == 4) {
            int m41519n2 = c2018p.m41519n();
            m41519n = m41519n2;
            if (!z) {
                m41519n = (((m41519n2 >> 24) & 255) << 21) | (m41519n2 & 255) | (((m41519n2 >> 8) & 255) << 7) | (((m41519n2 >> 16) & 255) << 14);
            }
        } else {
            m41519n = i == 3 ? c2018p.m41519n() : c2018p.m41528f();
        }
        int i5 = m41519n;
        int m41532d = i >= 3 ? c2018p.m41532d() : 0;
        if (m41534c == 0 && m41534c2 == 0 && m41534c3 == 0 && m41534c4 == 0 && i5 == 0 && m41532d == 0) {
            c2018p.m41533c(c2018p.f8133c);
            return null;
        }
        int i6 = c2018p.f8132b + i5;
        if (i6 > c2018p.f8133c) {
            C2009j.m41584a("Id3Decoder", "Frame size exceeds remaining tag data");
            c2018p.m41533c(c2018p.f8133c);
            return null;
        } else if (abstractC1694a != null && !abstractC1694a.mo42385a(i, m41534c, m41534c2, m41534c3, m41534c4)) {
            c2018p.m41533c(i6);
            return null;
        } else {
            int i7 = m41532d;
            if (i == 3) {
                z4 = (i7 & 128) != 0;
                boolean z7 = (i7 & 64) != 0;
                z6 = (i7 & 32) != 0;
                z5 = z4;
                z2 = z7;
                z3 = false;
            } else if (i == 4) {
                z6 = (i7 & 64) != 0;
                boolean z8 = (i7 & 8) != 0;
                z2 = (i7 & 4) != 0;
                boolean z9 = (i7 & 2) != 0;
                if ((i7 & 1) != 0) {
                    z4 = true;
                    z5 = z8;
                    z3 = z9;
                } else {
                    z4 = false;
                    z5 = z8;
                    z3 = z9;
                }
            } else {
                z6 = false;
                z4 = false;
                z5 = false;
                z2 = false;
                z3 = false;
            }
            if (z5 || z2) {
                C2009j.m41584a("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                c2018p.m41533c(i6);
                return null;
            }
            int i8 = i5;
            if (z6) {
                i8 = i5 - 1;
                c2018p.m41531d(1);
            }
            int i9 = i8;
            if (z4) {
                i9 = i8 - 4;
                c2018p.m41531d(4);
            }
            int i10 = i9;
            if (z3) {
                i10 = m42389b(c2018p, i9);
            }
            try {
                try {
                    try {
                        if (m41534c == 84 && m41534c2 == 88 && m41534c3 == 88 && (i == 2 || m41534c4 == 88)) {
                            if (i10 > 0) {
                                int m41534c5 = c2018p.m41534c();
                                String m42400a = m42400a(m41534c5);
                                int i11 = i10 - 1;
                                byte[] bArr = new byte[i11];
                                c2018p.m41537a(bArr, 0, i11);
                                int m42392a = m42392a(bArr, 0, m41534c5);
                                String str2 = new String(bArr, 0, m42392a, m42400a);
                                int m42390b = m42392a + m42390b(m41534c5);
                                textInformationFrame = new TextInformationFrame("TXXX", str2, m42391a(bArr, m42390b, m42392a(bArr, m42390b, m41534c5), m42400a));
                            }
                            textInformationFrame = null;
                        } else if (m41534c == 84) {
                            String m42399a = m42399a(i, m41534c, m41534c2, m41534c3, m41534c4);
                            if (i10 > 0) {
                                int m41534c6 = c2018p.m41534c();
                                String m42400a2 = m42400a(m41534c6);
                                int i12 = i10 - 1;
                                byte[] bArr2 = new byte[i12];
                                c2018p.m41537a(bArr2, 0, i12);
                                textInformationFrame = new TextInformationFrame(m42399a, null, new String(bArr2, 0, m42392a(bArr2, 0, m41534c6), m42400a2));
                            }
                            textInformationFrame = null;
                        } else if (m41534c == 87 && m41534c2 == 88 && m41534c3 == 88 && (i == 2 || m41534c4 == 88)) {
                            if (i10 > 0) {
                                int m41534c7 = c2018p.m41534c();
                                String m42400a3 = m42400a(m41534c7);
                                int i13 = i10 - 1;
                                byte[] bArr3 = new byte[i13];
                                c2018p.m41537a(bArr3, 0, i13);
                                int m42392a2 = m42392a(bArr3, 0, m41534c7);
                                String str3 = new String(bArr3, 0, m42392a2, m42400a3);
                                int m42390b2 = m42392a2 + m42390b(m41534c7);
                                textInformationFrame = new UrlLinkFrame("WXXX", str3, m42391a(bArr3, m42390b2, m42387b(bArr3, m42390b2), "ISO-8859-1"));
                            }
                            textInformationFrame = null;
                        } else if (m41534c == 87) {
                            String m42399a2 = m42399a(i, m41534c, m41534c2, m41534c3, m41534c4);
                            byte[] bArr4 = new byte[i10];
                            c2018p.m41537a(bArr4, 0, i10);
                            textInformationFrame = new UrlLinkFrame(m42399a2, null, new String(bArr4, 0, m42387b(bArr4, 0), "ISO-8859-1"));
                        } else if (m41534c == 80 && m41534c2 == 82 && m41534c3 == 73 && m41534c4 == 86) {
                            byte[] bArr5 = new byte[i10];
                            c2018p.m41537a(bArr5, 0, i10);
                            int m42387b = m42387b(bArr5, 0);
                            textInformationFrame = new PrivFrame(new String(bArr5, 0, m42387b, "ISO-8859-1"), m42386b(bArr5, m42387b + 1, i10));
                        } else if (m41534c == 71 && m41534c2 == 69 && m41534c3 == 79 && (m41534c4 == 66 || i == 2)) {
                            int m41534c8 = c2018p.m41534c();
                            String m42400a4 = m42400a(m41534c8);
                            int i14 = i10 - 1;
                            byte[] bArr6 = new byte[i14];
                            c2018p.m41537a(bArr6, 0, i14);
                            int m42387b2 = m42387b(bArr6, 0);
                            String str4 = new String(bArr6, 0, m42387b2, "ISO-8859-1");
                            int i15 = m42387b2 + 1;
                            int m42392a3 = m42392a(bArr6, i15, m41534c8);
                            String m42391a = m42391a(bArr6, i15, m42392a3, m42400a4);
                            int m42390b3 = m42392a3 + m42390b(m41534c8);
                            int m42392a4 = m42392a(bArr6, m42390b3, m41534c8);
                            textInformationFrame = new GeobFrame(str4, m42391a, m42391a(bArr6, m42390b3, m42392a4, m42400a4), m42386b(bArr6, m42392a4 + m42390b(m41534c8), i14));
                        } else {
                            try {
                                if (i != 2 ? m41534c == 65 && m41534c2 == 80 && m41534c3 == 73 && m41534c4 == 67 : m41534c == 80 && m41534c2 == 73 && m41534c3 == 67) {
                                    try {
                                        int m41534c9 = c2018p.m41534c();
                                        String m42400a5 = m42400a(m41534c9);
                                        int i16 = i10 - 1;
                                        byte[] bArr7 = new byte[i16];
                                        c2018p.m41537a(bArr7, 0, i16);
                                        if (i == 2) {
                                            String valueOf = String.valueOf(C1996ac.m41620d(new String(bArr7, 0, 3, "ISO-8859-1")));
                                            String concat = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
                                            String str5 = concat;
                                            if ("image/jpg".equals(concat)) {
                                                str5 = "image/jpeg";
                                            }
                                            i4 = 2;
                                            str = str5;
                                        } else {
                                            int m42387b3 = m42387b(bArr7, 0);
                                            String m41620d = C1996ac.m41620d(new String(bArr7, 0, m42387b3, "ISO-8859-1"));
                                            str = m41620d;
                                            i4 = m42387b3;
                                            if (m41620d.indexOf(47) == -1) {
                                                String valueOf2 = String.valueOf(m41620d);
                                                if (valueOf2.length() != 0) {
                                                    str = "image/".concat(valueOf2);
                                                    i4 = m42387b3;
                                                } else {
                                                    str = new String("image/");
                                                    i4 = m42387b3;
                                                }
                                            }
                                        }
                                        byte b = bArr7[i4 + 1];
                                        int i17 = i4 + 2;
                                        int m42392a5 = m42392a(bArr7, i17, m41534c9);
                                        textInformationFrame = new ApicFrame(str, new String(bArr7, i17, m42392a5 - i17, m42400a5), b & 255, m42386b(bArr7, m42392a5 + m42390b(m41534c9), i16));
                                    } catch (UnsupportedEncodingException e) {
                                        i3 = i6;
                                        try {
                                            C2009j.m41584a("Id3Decoder", "Unsupported character encoding");
                                            c2018p.m41533c(i3);
                                            return null;
                                        } catch (Throwable th) {
                                            th = th;
                                            c2018p.m41533c(i3);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        i3 = i6;
                                        c2018p.m41533c(i3);
                                        throw th;
                                    }
                                } else if (m41534c == 67 && m41534c2 == 79 && m41534c3 == 77 && (m41534c4 == 77 || i == 2)) {
                                    if (i10 < 4) {
                                        textInformationFrame = null;
                                    } else {
                                        int m41534c10 = c2018p.m41534c();
                                        String m42400a6 = m42400a(m41534c10);
                                        byte[] bArr8 = new byte[3];
                                        c2018p.m41537a(bArr8, 0, 3);
                                        String str6 = new String(bArr8, 0, 3);
                                        int i18 = i10 - 4;
                                        byte[] bArr9 = new byte[i18];
                                        c2018p.m41537a(bArr9, 0, i18);
                                        int m42392a6 = m42392a(bArr9, 0, m41534c10);
                                        String str7 = new String(bArr9, 0, m42392a6, m42400a6);
                                        int m42390b4 = m42392a6 + m42390b(m41534c10);
                                        textInformationFrame = new CommentFrame(str6, str7, m42391a(bArr9, m42390b4, m42392a(bArr9, m42390b4, m41534c10), m42400a6));
                                    }
                                } else if (m41534c == 67 && m41534c2 == 72 && m41534c3 == 65 && m41534c4 == 80) {
                                    textInformationFrame = m42394a(c2018p, i10, i, z, i2, abstractC1694a);
                                } else if (m41534c == 67 && m41534c2 == 84 && m41534c3 == 79 && m41534c4 == 67) {
                                    textInformationFrame = m42388b(c2018p, i10, i, z, i2, abstractC1694a);
                                } else if (m41534c == 77 && m41534c2 == 76 && m41534c3 == 76 && m41534c4 == 84) {
                                    textInformationFrame = m42396a(c2018p, i10);
                                } else {
                                    String m42399a3 = m42399a(i, m41534c, m41534c2, m41534c3, m41534c4);
                                    byte[] bArr10 = new byte[i10];
                                    c2018p.m41537a(bArr10, 0, i10);
                                    textInformationFrame = new BinaryFrame(m42399a3, bArr10);
                                }
                            } catch (UnsupportedEncodingException e2) {
                                i3 = i6;
                                C2009j.m41584a("Id3Decoder", "Unsupported character encoding");
                                c2018p.m41533c(i3);
                                return null;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = i6;
                                c2018p.m41533c(i3);
                                throw th;
                            }
                        }
                        if (textInformationFrame == null) {
                            String m42399a4 = m42399a(i, m41534c, m41534c2, m41534c3, m41534c4);
                            StringBuilder sb = new StringBuilder(String.valueOf(m42399a4).length() + 50);
                            sb.append("Failed to decode frame: id=");
                            sb.append(m42399a4);
                            sb.append(", frameSize=");
                            sb.append(i10);
                            try {
                                C2009j.m41584a("Id3Decoder", sb.toString());
                            } catch (UnsupportedEncodingException e3) {
                                i3 = i6;
                                C2009j.m41584a("Id3Decoder", "Unsupported character encoding");
                                c2018p.m41533c(i3);
                                return null;
                            }
                        }
                        c2018p.m41533c(i6);
                        return textInformationFrame;
                    } catch (UnsupportedEncodingException e4) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (UnsupportedEncodingException e5) {
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    /* renamed from: a */
    private static MlltFrame m42396a(C2018p c2018p, int i) {
        int m41532d = c2018p.m41532d();
        int m41528f = c2018p.m41528f();
        int m41528f2 = c2018p.m41528f();
        int m41534c = c2018p.m41534c();
        int m41534c2 = c2018p.m41534c();
        C2017o c2017o = new C2017o();
        c2017o.m41553a(c2018p.f8131a, c2018p.f8133c);
        c2017o.m41554a(c2018p.f8132b * 8);
        int i2 = ((i - 10) * 8) / (m41534c + m41534c2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m41548c = c2017o.m41548c(m41534c);
            int m41548c2 = c2017o.m41548c(m41534c2);
            iArr[i3] = m41548c;
            iArr2[i3] = m41548c2;
        }
        return new MlltFrame(m41532d, m41528f, m41528f2, iArr, iArr2);
    }

    /* renamed from: a */
    private static C1695b m42397a(C2018p c2018p) {
        int i;
        if (c2018p.m41536b() < 10) {
            C2009j.m41584a("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int m41528f = c2018p.m41528f();
        if (m41528f != 4801587) {
            StringBuilder sb = new StringBuilder(59);
            sb.append("Unexpected first three bytes of ID3 tag header: ");
            sb.append(m41528f);
            C2009j.m41584a("Id3Decoder", sb.toString());
            return null;
        }
        int m41534c = c2018p.m41534c();
        boolean z = true;
        c2018p.m41531d(1);
        int m41534c2 = c2018p.m41534c();
        int m41520m = c2018p.m41520m();
        if (m41534c == 2) {
            i = m41520m;
            if ((m41534c2 & 64) != 0) {
                C2009j.m41584a("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (m41534c == 3) {
            i = m41520m;
            if ((m41534c2 & 64) != 0) {
                int m41524i = c2018p.m41524i();
                c2018p.m41531d(m41524i);
                i = m41520m - (m41524i + 4);
            }
        } else if (m41534c != 4) {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Skipped ID3 tag with unsupported majorVersion=");
            sb2.append(m41534c);
            C2009j.m41584a("Id3Decoder", sb2.toString());
            return null;
        } else {
            int i2 = m41520m;
            if ((m41534c2 & 64) != 0) {
                int m41520m2 = c2018p.m41520m();
                c2018p.m41531d(m41520m2 - 4);
                i2 = m41520m - m41520m2;
            }
            i = i2;
            if ((m41534c2 & 16) != 0) {
                i = i2 - 10;
            }
        }
        if (m41534c >= 4 || (m41534c2 & 128) == 0) {
            z = false;
        }
        return new C1695b(m41534c, z, i);
    }

    /* renamed from: a */
    private static String m42400a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: a */
    private static String m42399a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: a */
    private static String m42391a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* renamed from: a */
    public static final /* synthetic */ boolean m42401a() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0135 A[Catch: all -> 0x0162, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0162, blocks: (B:3:0x0006, B:8:0x001a, B:9:0x002f, B:55:0x0135, B:61:0x0151), top: B:67:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m42395a(androidx.media2.exoplayer.external.util.C2018p r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.C1693a.m42395a(androidx.media2.exoplayer.external.util.p, int, int, boolean):boolean");
    }

    /* renamed from: b */
    private static int m42390b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: b */
    private static int m42389b(C2018p c2018p, int i) {
        byte[] bArr = c2018p.f8131a;
        int i2 = c2018p.f8132b;
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

    /* renamed from: b */
    private static int m42387b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: b */
    private static ChapterTocFrame m42388b(C2018p c2018p, int i, int i2, boolean z, int i3, AbstractC1694a abstractC1694a) throws UnsupportedEncodingException {
        int i4 = c2018p.f8132b;
        int m42387b = m42387b(c2018p.f8131a, i4);
        String str = new String(c2018p.f8131a, i4, m42387b - i4, "ISO-8859-1");
        c2018p.m41533c(m42387b + 1);
        int m41534c = c2018p.m41534c();
        boolean z2 = (m41534c & 2) != 0;
        boolean z3 = (m41534c & 1) != 0;
        int m41534c2 = c2018p.m41534c();
        String[] strArr = new String[m41534c2];
        for (int i5 = 0; i5 < m41534c2; i5++) {
            int i6 = c2018p.f8132b;
            int m42387b2 = m42387b(c2018p.f8131a, i6);
            strArr[i5] = new String(c2018p.f8131a, i6, m42387b2 - i6, "ISO-8859-1");
            c2018p.m41533c(m42387b2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (c2018p.f8132b < i4 + i) {
            Id3Frame m42398a = m42398a(i2, c2018p, z, i3, abstractC1694a);
            if (m42398a != null) {
                arrayList.add(m42398a);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* renamed from: b */
    private static byte[] m42386b(byte[] bArr, int i, int i2) {
        return i2 <= i ? C1996ac.f8067f : Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1668a
    /* renamed from: a */
    public final Metadata mo41191a(C1671c c1671c) {
        ByteBuffer byteBuffer = (ByteBuffer) C1993a.m41690a(c1671c.f5494c);
        return m42393a(byteBuffer.array(), byteBuffer.limit());
    }

    /* renamed from: a */
    public final Metadata m42393a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C2018p c2018p = new C2018p(bArr, i);
        C1695b m42397a = m42397a(c2018p);
        if (m42397a == null) {
            return null;
        }
        int i2 = c2018p.f8132b;
        int i3 = m42397a.f6692a == 2 ? 6 : 10;
        int i4 = m42397a.f6694c;
        if (m42397a.f6693b) {
            i4 = m42389b(c2018p, m42397a.f6694c);
        }
        c2018p.m41535b(i2 + i4);
        boolean z = false;
        if (!m42395a(c2018p, m42397a.f6692a, i3, false)) {
            if (m42397a.f6692a != 4 || !m42395a(c2018p, 4, i3, true)) {
                int i5 = m42397a.f6692a;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i5);
                C2009j.m41584a("Id3Decoder", sb.toString());
                return null;
            }
            z = true;
        }
        while (c2018p.m41536b() >= i3) {
            Id3Frame m42398a = m42398a(m42397a.f6692a, c2018p, z, i3, this.f6691b);
            if (m42398a != null) {
                arrayList.add(m42398a);
            }
        }
        return new Metadata(arrayList);
    }
}
