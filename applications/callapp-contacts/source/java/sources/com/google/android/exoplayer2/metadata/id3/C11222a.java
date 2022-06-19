package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.AbstractC11205f;
import com.google.android.exoplayer2.metadata.C11197c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* renamed from: com.google.android.exoplayer2.metadata.id3.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a.class */
public final class C11222a extends AbstractC11205f {

    /* renamed from: a */
    public static final AbstractC11223a f36780a = _$$Lambda$a$BoRSc8ryhYVTmLVXoM1YBDgL3Vs.INSTANCE;

    /* renamed from: b */
    private final AbstractC11223a f36781b;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a$a.class */
    public interface AbstractC11223a {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: com.google.android.exoplayer2.metadata.id3.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a$b.class */
    public static final class C11224b {

        /* renamed from: a */
        final int f36782a;

        /* renamed from: b */
        final boolean f36783b;

        /* renamed from: c */
        final int f36784c;

        public C11224b(int i, boolean z, int i2) {
            this.f36782a = i;
            this.f36783b = z;
            this.f36784c = i2;
        }
    }

    public C11222a() {
        this(null);
    }

    public C11222a(AbstractC11223a abstractC11223a) {
        this.f36781b = abstractC11223a;
    }

    /* renamed from: a */
    private static int m21196a(byte[] bArr, int i, int i2) {
        int m21190b = m21190b(bArr, i);
        if (i2 != 0) {
            int i3 = m21190b;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = m21190b(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return m21190b;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    private static ChapterFrame m21198a(C11628u c11628u, int i, int i2, boolean z, int i3, AbstractC11223a abstractC11223a) throws UnsupportedEncodingException {
        int i4 = c11628u.f38734b;
        int m21190b = m21190b(c11628u.f38733a, i4);
        String str = new String(c11628u.f38733a, i4, m21190b - i4, "ISO-8859-1");
        c11628u.m19801d(m21190b + 1);
        int m19792j = c11628u.m19792j();
        int m19792j2 = c11628u.m19792j();
        char m19794h = c11628u.m19794h();
        if (m19794h == 4294967295L) {
            m19794h = 65535;
        }
        char m19794h2 = c11628u.m19794h();
        if (m19794h2 == 4294967295L) {
            m19794h2 = 65535;
        }
        ArrayList arrayList = new ArrayList();
        while (c11628u.f38734b < i4 + i) {
            Id3Frame m21202a = m21202a(i2, c11628u, z, i3, abstractC11223a);
            if (m21202a != null) {
                arrayList.add(m21202a);
            }
        }
        return new ChapterFrame(str, m19792j, m19792j2, m19794h, m19794h2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* renamed from: a */
    private static Id3Frame m21202a(int i, C11628u c11628u, boolean z, int i2, AbstractC11223a abstractC11223a) {
        int m19787o;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        TextInformationFrame textInformationFrame;
        String str;
        int i4;
        int m19804c = c11628u.m19804c();
        int m19804c2 = c11628u.m19804c();
        int m19804c3 = c11628u.m19804c();
        int m19804c4 = i >= 3 ? c11628u.m19804c() : 0;
        if (i == 4) {
            int m19787o2 = c11628u.m19787o();
            m19787o = m19787o2;
            if (!z) {
                m19787o = (((m19787o2 >> 24) & 255) << 21) | (m19787o2 & 255) | (((m19787o2 >> 8) & 255) << 7) | (((m19787o2 >> 16) & 255) << 14);
            }
        } else {
            m19787o = i == 3 ? c11628u.m19787o() : c11628u.m19796g();
        }
        int i5 = m19787o;
        int m19802d = i >= 3 ? c11628u.m19802d() : 0;
        if (m19804c == 0 && m19804c2 == 0 && m19804c3 == 0 && m19804c4 == 0 && i5 == 0 && m19802d == 0) {
            c11628u.m19801d(c11628u.f38735c);
            return null;
        }
        int i6 = c11628u.f38734b + i5;
        if (i6 > c11628u.f38735c) {
            C11617n.m19863a("Id3Decoder", "Frame size exceeds remaining tag data");
            c11628u.m19801d(c11628u.f38735c);
            return null;
        } else if (abstractC11223a != null && !abstractC11223a.evaluate(i, m19804c, m19804c2, m19804c3, m19804c4)) {
            c11628u.m19801d(i6);
            return null;
        } else {
            int i7 = m19802d;
            if (i == 3) {
                z6 = (i7 & 128) != 0;
                boolean z7 = (i7 & 64) != 0;
                z5 = (i7 & 32) != 0;
                z3 = z6;
                z2 = z7;
                z4 = false;
            } else if (i == 4) {
                boolean z8 = (i7 & 64) != 0;
                boolean z9 = (i7 & 8) != 0;
                z2 = (i7 & 4) != 0;
                boolean z10 = (i7 & 2) != 0;
                if ((i7 & 1) != 0) {
                    z5 = z8;
                    z6 = true;
                    z3 = z9;
                    z4 = z10;
                } else {
                    z5 = z8;
                    z6 = false;
                    z3 = z9;
                    z4 = z10;
                }
            } else {
                z5 = false;
                z6 = false;
                z3 = false;
                z2 = false;
                z4 = false;
            }
            if (z3 || z2) {
                C11617n.m19863a("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                c11628u.m19801d(i6);
                return null;
            }
            int i8 = i5;
            if (z5) {
                i8 = i5 - 1;
                c11628u.m19799e(1);
            }
            int i9 = i8;
            if (z6) {
                i9 = i8 - 4;
                c11628u.m19799e(4);
            }
            int i10 = i9;
            if (z4) {
                i10 = m21192b(c11628u, i9);
            }
            try {
                try {
                    try {
                        if (m19804c == 84 && m19804c2 == 88 && m19804c3 == 88 && (i == 2 || m19804c4 == 88)) {
                            if (i10 > 0) {
                                int m19804c5 = c11628u.m19804c();
                                String m21204a = m21204a(m19804c5);
                                int i11 = i10 - 1;
                                byte[] bArr = new byte[i11];
                                c11628u.m19807a(bArr, 0, i11);
                                int m21196a = m21196a(bArr, 0, m19804c5);
                                String str2 = new String(bArr, 0, m21196a, m21204a);
                                int m21194b = m21196a + m21194b(m19804c5);
                                textInformationFrame = new TextInformationFrame("TXXX", str2, m21195a(bArr, m21194b, m21196a(bArr, m21194b, m19804c5), m21204a));
                            }
                            textInformationFrame = null;
                        } else if (m19804c == 84) {
                            String m21203a = m21203a(i, m19804c, m19804c2, m19804c3, m19804c4);
                            if (i10 > 0) {
                                int m19804c6 = c11628u.m19804c();
                                String m21204a2 = m21204a(m19804c6);
                                int i12 = i10 - 1;
                                byte[] bArr2 = new byte[i12];
                                c11628u.m19807a(bArr2, 0, i12);
                                textInformationFrame = new TextInformationFrame(m21203a, null, new String(bArr2, 0, m21196a(bArr2, 0, m19804c6), m21204a2));
                            }
                            textInformationFrame = null;
                        } else if (m19804c == 87 && m19804c2 == 88 && m19804c3 == 88 && (i == 2 || m19804c4 == 88)) {
                            if (i10 > 0) {
                                int m19804c7 = c11628u.m19804c();
                                String m21204a3 = m21204a(m19804c7);
                                int i13 = i10 - 1;
                                byte[] bArr3 = new byte[i13];
                                c11628u.m19807a(bArr3, 0, i13);
                                int m21196a2 = m21196a(bArr3, 0, m19804c7);
                                String str3 = new String(bArr3, 0, m21196a2, m21204a3);
                                int m21194b2 = m21196a2 + m21194b(m19804c7);
                                textInformationFrame = new UrlLinkFrame("WXXX", str3, m21195a(bArr3, m21194b2, m21190b(bArr3, m21194b2), "ISO-8859-1"));
                            }
                            textInformationFrame = null;
                        } else if (m19804c == 87) {
                            String m21203a2 = m21203a(i, m19804c, m19804c2, m19804c3, m19804c4);
                            byte[] bArr4 = new byte[i10];
                            c11628u.m19807a(bArr4, 0, i10);
                            textInformationFrame = new UrlLinkFrame(m21203a2, null, new String(bArr4, 0, m21190b(bArr4, 0), "ISO-8859-1"));
                        } else if (m19804c == 80 && m19804c2 == 82 && m19804c3 == 73 && m19804c4 == 86) {
                            byte[] bArr5 = new byte[i10];
                            c11628u.m19807a(bArr5, 0, i10);
                            int m21190b = m21190b(bArr5, 0);
                            textInformationFrame = new PrivFrame(new String(bArr5, 0, m21190b, "ISO-8859-1"), m21189b(bArr5, m21190b + 1, i10));
                        } else if (m19804c == 71 && m19804c2 == 69 && m19804c3 == 79 && (m19804c4 == 66 || i == 2)) {
                            int m19804c8 = c11628u.m19804c();
                            String m21204a4 = m21204a(m19804c8);
                            int i14 = i10 - 1;
                            byte[] bArr6 = new byte[i14];
                            c11628u.m19807a(bArr6, 0, i14);
                            int m21190b2 = m21190b(bArr6, 0);
                            String str4 = new String(bArr6, 0, m21190b2, "ISO-8859-1");
                            int i15 = m21190b2 + 1;
                            int m21196a3 = m21196a(bArr6, i15, m19804c8);
                            String m21195a = m21195a(bArr6, i15, m21196a3, m21204a4);
                            int m21194b3 = m21196a3 + m21194b(m19804c8);
                            int m21196a4 = m21196a(bArr6, m21194b3, m19804c8);
                            textInformationFrame = new GeobFrame(str4, m21195a, m21195a(bArr6, m21194b3, m21196a4, m21204a4), m21189b(bArr6, m21196a4 + m21194b(m19804c8), i14));
                        } else {
                            try {
                                if (i != 2 ? m19804c == 65 && m19804c2 == 80 && m19804c3 == 73 && m19804c4 == 67 : m19804c == 80 && m19804c2 == 73 && m19804c3 == 67) {
                                    try {
                                        int m19804c9 = c11628u.m19804c();
                                        String m21204a5 = m21204a(m19804c9);
                                        int i16 = i10 - 1;
                                        byte[] bArr7 = new byte[i16];
                                        c11628u.m19807a(bArr7, 0, i16);
                                        if (i == 2) {
                                            StringBuilder sb = new StringBuilder("image/");
                                            sb.append(C11599af.m19927d(new String(bArr7, 0, 3, "ISO-8859-1")));
                                            String sb2 = sb.toString();
                                            str = sb2;
                                            if ("image/jpg".equals(sb2)) {
                                                str = "image/jpeg";
                                            }
                                            i4 = 2;
                                        } else {
                                            int m21190b3 = m21190b(bArr7, 0);
                                            String m19927d = C11599af.m19927d(new String(bArr7, 0, m21190b3, "ISO-8859-1"));
                                            str = m19927d;
                                            i4 = m21190b3;
                                            if (m19927d.indexOf(47) == -1) {
                                                str = "image/".concat(String.valueOf(m19927d));
                                                i4 = m21190b3;
                                            }
                                        }
                                        byte b = bArr7[i4 + 1];
                                        int i17 = i4 + 2;
                                        int m21196a5 = m21196a(bArr7, i17, m19804c9);
                                        textInformationFrame = new ApicFrame(str, new String(bArr7, i17, m21196a5 - i17, m21204a5), b & 255, m21189b(bArr7, m21196a5 + m21194b(m19804c9), i16));
                                    } catch (UnsupportedEncodingException e) {
                                        i3 = i6;
                                        try {
                                            C11617n.m19863a("Id3Decoder", "Unsupported character encoding");
                                            c11628u.m19801d(i3);
                                            return null;
                                        } catch (Throwable th) {
                                            th = th;
                                            c11628u.m19801d(i3);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        i3 = i6;
                                        c11628u.m19801d(i3);
                                        throw th;
                                    }
                                } else if (m19804c == 67 && m19804c2 == 79 && m19804c3 == 77 && (m19804c4 == 77 || i == 2)) {
                                    if (i10 < 4) {
                                        textInformationFrame = null;
                                    } else {
                                        int m19804c10 = c11628u.m19804c();
                                        String m21204a6 = m21204a(m19804c10);
                                        byte[] bArr8 = new byte[3];
                                        c11628u.m19807a(bArr8, 0, 3);
                                        String str5 = new String(bArr8, 0, 3);
                                        int i18 = i10 - 4;
                                        byte[] bArr9 = new byte[i18];
                                        c11628u.m19807a(bArr9, 0, i18);
                                        int m21196a6 = m21196a(bArr9, 0, m19804c10);
                                        String str6 = new String(bArr9, 0, m21196a6, m21204a6);
                                        int m21194b4 = m21196a6 + m21194b(m19804c10);
                                        textInformationFrame = new CommentFrame(str5, str6, m21195a(bArr9, m21194b4, m21196a(bArr9, m21194b4, m19804c10), m21204a6));
                                    }
                                } else if (m19804c == 67 && m19804c2 == 72 && m19804c3 == 65 && m19804c4 == 80) {
                                    textInformationFrame = m21198a(c11628u, i10, i, z, i2, abstractC11223a);
                                } else if (m19804c == 67 && m19804c2 == 84 && m19804c3 == 79 && m19804c4 == 67) {
                                    textInformationFrame = m21191b(c11628u, i10, i, z, i2, abstractC11223a);
                                } else if (m19804c == 77 && m19804c2 == 76 && m19804c3 == 76 && m19804c4 == 84) {
                                    textInformationFrame = m21200a(c11628u, i10);
                                } else {
                                    String m21203a3 = m21203a(i, m19804c, m19804c2, m19804c3, m19804c4);
                                    byte[] bArr10 = new byte[i10];
                                    c11628u.m19807a(bArr10, 0, i10);
                                    textInformationFrame = new BinaryFrame(m21203a3, bArr10);
                                }
                            } catch (UnsupportedEncodingException e2) {
                                i3 = i6;
                                C11617n.m19863a("Id3Decoder", "Unsupported character encoding");
                                c11628u.m19801d(i3);
                                return null;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = i6;
                                c11628u.m19801d(i3);
                                throw th;
                            }
                        }
                        if (textInformationFrame == null) {
                            try {
                                C11617n.m19863a("Id3Decoder", "Failed to decode frame: id=" + m21203a(i, m19804c, m19804c2, m19804c3, m19804c4) + ", frameSize=" + i10);
                            } catch (UnsupportedEncodingException e3) {
                                i3 = i6;
                                C11617n.m19863a("Id3Decoder", "Unsupported character encoding");
                                c11628u.m19801d(i3);
                                return null;
                            }
                        }
                        c11628u.m19801d(i6);
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
    private static MlltFrame m21200a(C11628u c11628u, int i) {
        int m19802d = c11628u.m19802d();
        int m19796g = c11628u.m19796g();
        int m19796g2 = c11628u.m19796g();
        int m19804c = c11628u.m19804c();
        int m19804c2 = c11628u.m19804c();
        C11627t c11627t = new C11627t();
        c11627t.m19824a(c11628u.f38733a, c11628u.f38735c);
        c11627t.m19826a(c11628u.f38734b * 8);
        int i2 = ((i - 10) * 8) / (m19804c + m19804c2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m19819c = c11627t.m19819c(m19804c);
            int m19819c2 = c11627t.m19819c(m19804c2);
            iArr[i3] = m19819c;
            iArr2[i3] = m19819c2;
        }
        return new MlltFrame(m19802d, m19796g, m19796g2, iArr, iArr2);
    }

    /* renamed from: a */
    private static C11224b m21201a(C11628u c11628u) {
        int m19796g;
        int i;
        if (c11628u.m19812a() < 10) {
            C11617n.m19863a("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (c11628u.m19796g() != 4801587) {
            C11617n.m19863a("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(m19796g)));
            return null;
        }
        int m19804c = c11628u.m19804c();
        c11628u.m19799e(1);
        int m19804c2 = c11628u.m19804c();
        int m19788n = c11628u.m19788n();
        if (m19804c == 2) {
            i = m19788n;
            if ((m19804c2 & 64) != 0) {
                C11617n.m19863a("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (m19804c == 3) {
            i = m19788n;
            if ((m19804c2 & 64) != 0) {
                int m19792j = c11628u.m19792j();
                c11628u.m19799e(m19792j);
                i = m19788n - (m19792j + 4);
            }
        } else if (m19804c != 4) {
            C11617n.m19863a("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=".concat(String.valueOf(m19804c)));
            return null;
        } else {
            int i2 = m19788n;
            if ((m19804c2 & 64) != 0) {
                int m19788n2 = c11628u.m19788n();
                c11628u.m19799e(m19788n2 - 4);
                i2 = m19788n - m19788n2;
            }
            i = i2;
            if ((m19804c2 & 16) != 0) {
                i = i2 - 10;
            }
        }
        boolean z = false;
        if (m19804c < 4) {
            z = false;
            if ((m19804c2 & 128) != 0) {
                z = true;
            }
        }
        return new C11224b(m19804c, z, i);
    }

    /* renamed from: a */
    private static String m21204a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: a */
    private static String m21203a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: a */
    private static String m21195a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
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
    private static boolean m21199a(com.google.android.exoplayer2.util.C11628u r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.C11222a.m21199a(com.google.android.exoplayer2.util.u, int, int, boolean):boolean");
    }

    /* renamed from: b */
    private static int m21194b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: b */
    private static int m21192b(C11628u c11628u, int i) {
        byte[] bArr = c11628u.f38733a;
        int i2 = c11628u.f38734b;
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
    private static int m21190b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: b */
    private static ChapterTocFrame m21191b(C11628u c11628u, int i, int i2, boolean z, int i3, AbstractC11223a abstractC11223a) throws UnsupportedEncodingException {
        int i4 = c11628u.f38734b;
        int m21190b = m21190b(c11628u.f38733a, i4);
        String str = new String(c11628u.f38733a, i4, m21190b - i4, "ISO-8859-1");
        c11628u.m19801d(m21190b + 1);
        int m19804c = c11628u.m19804c();
        boolean z2 = (m19804c & 2) != 0;
        boolean z3 = (m19804c & 1) != 0;
        int m19804c2 = c11628u.m19804c();
        String[] strArr = new String[m19804c2];
        for (int i5 = 0; i5 < m19804c2; i5++) {
            int i6 = c11628u.f38734b;
            int m21190b2 = m21190b(c11628u.f38733a, i6);
            strArr[i5] = new String(c11628u.f38733a, i6, m21190b2 - i6, "ISO-8859-1");
            c11628u.m19801d(m21190b2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (c11628u.f38734b < i4 + i) {
            Id3Frame m21202a = m21202a(i2, c11628u, z, i3, abstractC11223a);
            if (m21202a != null) {
                arrayList.add(m21202a);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m21193b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* renamed from: b */
    private static byte[] m21189b(byte[] bArr, int i, int i2) {
        return i2 <= i ? C11599af.f38653f : Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.metadata.AbstractC11205f
    /* renamed from: a */
    public final Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer) {
        return m21197a(byteBuffer.array(), byteBuffer.limit());
    }

    /* renamed from: a */
    public final Metadata m21197a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C11628u c11628u = new C11628u(bArr, i);
        C11224b m21201a = m21201a(c11628u);
        if (m21201a == null) {
            return null;
        }
        int i2 = c11628u.f38734b;
        int i3 = m21201a.f36782a == 2 ? 6 : 10;
        int i4 = m21201a.f36784c;
        if (m21201a.f36783b) {
            i4 = m21192b(c11628u, m21201a.f36784c);
        }
        c11628u.m19803c(i2 + i4);
        boolean z = false;
        if (!m21199a(c11628u, m21201a.f36782a, i3, false)) {
            if (m21201a.f36782a != 4 || !m21199a(c11628u, 4, i3, true)) {
                C11617n.m19863a("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m21201a.f36782a);
                return null;
            }
            z = true;
        }
        while (c11628u.m19812a() >= i3) {
            Id3Frame m21202a = m21202a(m21201a.f36782a, c11628u, z, i3, this.f36781b);
            if (m21202a != null) {
                arrayList.add(m21202a);
            }
        }
        return new Metadata(arrayList);
    }
}
