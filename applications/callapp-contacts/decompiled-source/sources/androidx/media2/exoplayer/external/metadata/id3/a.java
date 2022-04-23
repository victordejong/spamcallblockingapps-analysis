package androidx.media2.exoplayer.external.metadata.id3;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.c;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a.class */
public final class a implements androidx.media2.exoplayer.external.metadata.a {

    /* renamed from: a  reason: collision with root package name */
    public static final AbstractC0083a f3453a = androidx.media2.exoplayer.external.metadata.id3.b.f3458a;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC0083a f3454b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a$a.class */
    public interface AbstractC0083a {
        boolean a(int i, int i2, int i3, int i4, int i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f3455a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f3456b;

        /* renamed from: c  reason: collision with root package name */
        final int f3457c;

        public b(int i, boolean z, int i2) {
            this.f3455a = i;
            this.f3456b = z;
            this.f3457c = i2;
        }
    }

    public a() {
        this(null);
    }

    public a(AbstractC0083a aVar) {
        this.f3454b = aVar;
    }

    private static int a(byte[] bArr, int i, int i2) {
        int b2 = b(bArr, i);
        if (i2 != 0) {
            int i3 = b2;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = b(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return b2;
    }

    private static ChapterFrame a(p pVar, int i, int i2, boolean z, int i3, AbstractC0083a aVar) throws UnsupportedEncodingException {
        int i4 = pVar.f4167b;
        int b2 = b(pVar.f4166a, i4);
        String str = new String(pVar.f4166a, i4, b2 - i4, "ISO-8859-1");
        pVar.c(b2 + 1);
        int i5 = pVar.i();
        int i6 = pVar.i();
        long g = pVar.g();
        if (g == 4294967295L) {
            g = -1;
        }
        long g2 = pVar.g();
        if (g2 == 4294967295L) {
            g2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        while (pVar.f4167b < i4 + i) {
            Id3Frame a2 = a(i2, pVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, i5, i6, g, g2, id3FrameArr);
    }

    private static Id3Frame a(int i, p pVar, boolean z, int i2, AbstractC0083a aVar) {
        int n;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        Id3Frame id3Frame;
        String str;
        int i4;
        int c2 = pVar.c();
        int c3 = pVar.c();
        int c4 = pVar.c();
        int c5 = i >= 3 ? pVar.c() : 0;
        if (i == 4) {
            int n2 = pVar.n();
            n = n2;
            if (!z) {
                n = (((n2 >> 24) & 255) << 21) | (n2 & 255) | (((n2 >> 8) & 255) << 7) | (((n2 >> 16) & 255) << 14);
            }
        } else {
            n = i == 3 ? pVar.n() : pVar.f();
        }
        int d2 = i >= 3 ? pVar.d() : 0;
        if (c2 == 0 && c3 == 0 && c4 == 0 && c5 == 0 && n == 0 && d2 == 0) {
            pVar.c(pVar.f4168c);
            return null;
        }
        int i5 = pVar.f4167b + n;
        if (i5 > pVar.f4168c) {
            j.a("Id3Decoder", "Frame size exceeds remaining tag data");
            pVar.c(pVar.f4168c);
            return null;
        } else if (aVar == null || aVar.a(i, c2, c3, c4, c5)) {
            if (i == 3) {
                z4 = (d2 & 128) != 0;
                z2 = (d2 & 64) != 0;
                z6 = (d2 & 32) != 0;
                z3 = false;
                z5 = z4;
            } else if (i == 4) {
                z6 = (d2 & 64) != 0;
                boolean z7 = (d2 & 8) != 0;
                z2 = (d2 & 4) != 0;
                boolean z8 = (d2 & 2) != 0;
                if ((d2 & 1) != 0) {
                    z4 = true;
                    z5 = z7;
                    z3 = z8;
                } else {
                    z4 = false;
                    z5 = z7;
                    z3 = z8;
                }
            } else {
                z6 = false;
                z4 = false;
                z5 = false;
                z2 = false;
                z3 = false;
            }
            if (z5 || z2) {
                j.a("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                pVar.c(i5);
                return null;
            }
            int i6 = n;
            if (z6) {
                i6 = n - 1;
                pVar.d(1);
            }
            int i7 = i6;
            if (z4) {
                i7 = i6 - 4;
                pVar.d(4);
            }
            int i8 = i7;
            if (z3) {
                i8 = b(pVar, i7);
            }
            try {
                try {
                    try {
                        if (c2 == 84 && c3 == 88 && c4 == 88 && (i == 2 || c5 == 88)) {
                            if (i8 > 0) {
                                int c6 = pVar.c();
                                String a2 = a(c6);
                                int i9 = i8 - 1;
                                byte[] bArr = new byte[i9];
                                pVar.a(bArr, 0, i9);
                                int a3 = a(bArr, 0, c6);
                                String str2 = new String(bArr, 0, a3, a2);
                                int b2 = a3 + b(c6);
                                id3Frame = new TextInformationFrame("TXXX", str2, a(bArr, b2, a(bArr, b2, c6), a2));
                            }
                            id3Frame = null;
                        } else if (c2 == 84) {
                            String a4 = a(i, c2, c3, c4, c5);
                            if (i8 > 0) {
                                int c7 = pVar.c();
                                String a5 = a(c7);
                                int i10 = i8 - 1;
                                byte[] bArr2 = new byte[i10];
                                pVar.a(bArr2, 0, i10);
                                id3Frame = new TextInformationFrame(a4, null, new String(bArr2, 0, a(bArr2, 0, c7), a5));
                            }
                            id3Frame = null;
                        } else if (c2 == 87 && c3 == 88 && c4 == 88 && (i == 2 || c5 == 88)) {
                            if (i8 > 0) {
                                int c8 = pVar.c();
                                String a6 = a(c8);
                                int i11 = i8 - 1;
                                byte[] bArr3 = new byte[i11];
                                pVar.a(bArr3, 0, i11);
                                int a7 = a(bArr3, 0, c8);
                                String str3 = new String(bArr3, 0, a7, a6);
                                int b3 = a7 + b(c8);
                                id3Frame = new UrlLinkFrame("WXXX", str3, a(bArr3, b3, b(bArr3, b3), "ISO-8859-1"));
                            }
                            id3Frame = null;
                        } else if (c2 == 87) {
                            String a8 = a(i, c2, c3, c4, c5);
                            byte[] bArr4 = new byte[i8];
                            pVar.a(bArr4, 0, i8);
                            id3Frame = new UrlLinkFrame(a8, null, new String(bArr4, 0, b(bArr4, 0), "ISO-8859-1"));
                        } else if (c2 == 80 && c3 == 82 && c4 == 73 && c5 == 86) {
                            byte[] bArr5 = new byte[i8];
                            pVar.a(bArr5, 0, i8);
                            int b4 = b(bArr5, 0);
                            id3Frame = new PrivFrame(new String(bArr5, 0, b4, "ISO-8859-1"), b(bArr5, b4 + 1, i8));
                        } else if (c2 == 71 && c3 == 69 && c4 == 79 && (c5 == 66 || i == 2)) {
                            int c9 = pVar.c();
                            String a9 = a(c9);
                            int i12 = i8 - 1;
                            byte[] bArr6 = new byte[i12];
                            pVar.a(bArr6, 0, i12);
                            int b5 = b(bArr6, 0);
                            String str4 = new String(bArr6, 0, b5, "ISO-8859-1");
                            int i13 = b5 + 1;
                            int a10 = a(bArr6, i13, c9);
                            String a11 = a(bArr6, i13, a10, a9);
                            int b6 = a10 + b(c9);
                            int a12 = a(bArr6, b6, c9);
                            id3Frame = new GeobFrame(str4, a11, a(bArr6, b6, a12, a9), b(bArr6, a12 + b(c9), i12));
                        } else {
                            try {
                                if (i != 2 ? c2 == 65 && c3 == 80 && c4 == 73 && c5 == 67 : c2 == 80 && c3 == 73 && c4 == 67) {
                                    try {
                                        int c10 = pVar.c();
                                        String a13 = a(c10);
                                        int i14 = i8 - 1;
                                        byte[] bArr7 = new byte[i14];
                                        pVar.a(bArr7, 0, i14);
                                        if (i == 2) {
                                            String valueOf = String.valueOf(ac.d(new String(bArr7, 0, 3, "ISO-8859-1")));
                                            String concat = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
                                            str = concat;
                                            if ("image/jpg".equals(concat)) {
                                                str = "image/jpeg";
                                            }
                                            i4 = 2;
                                        } else {
                                            int b7 = b(bArr7, 0);
                                            String d3 = ac.d(new String(bArr7, 0, b7, "ISO-8859-1"));
                                            str = d3;
                                            i4 = b7;
                                            if (d3.indexOf(47) == -1) {
                                                String valueOf2 = String.valueOf(d3);
                                                if (valueOf2.length() != 0) {
                                                    str = "image/".concat(valueOf2);
                                                    i4 = b7;
                                                } else {
                                                    str = new String("image/");
                                                    i4 = b7;
                                                }
                                            }
                                        }
                                        byte b8 = bArr7[i4 + 1];
                                        int i15 = i4 + 2;
                                        int a14 = a(bArr7, i15, c10);
                                        id3Frame = new ApicFrame(str, new String(bArr7, i15, a14 - i15, a13), b8 & 255, b(bArr7, a14 + b(c10), i14));
                                    } catch (UnsupportedEncodingException e) {
                                        i3 = i5;
                                        try {
                                            j.a("Id3Decoder", "Unsupported character encoding");
                                            pVar.c(i3);
                                            return null;
                                        } catch (Throwable th) {
                                            th = th;
                                            pVar.c(i3);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        i3 = i5;
                                        pVar.c(i3);
                                        throw th;
                                    }
                                } else if (c2 == 67 && c3 == 79 && c4 == 77 && (c5 == 77 || i == 2)) {
                                    if (i8 < 4) {
                                        id3Frame = null;
                                    } else {
                                        int c11 = pVar.c();
                                        String a15 = a(c11);
                                        byte[] bArr8 = new byte[3];
                                        pVar.a(bArr8, 0, 3);
                                        String str5 = new String(bArr8, 0, 3);
                                        int i16 = i8 - 4;
                                        byte[] bArr9 = new byte[i16];
                                        pVar.a(bArr9, 0, i16);
                                        int a16 = a(bArr9, 0, c11);
                                        String str6 = new String(bArr9, 0, a16, a15);
                                        int b9 = a16 + b(c11);
                                        id3Frame = new CommentFrame(str5, str6, a(bArr9, b9, a(bArr9, b9, c11), a15));
                                    }
                                } else if (c2 == 67 && c3 == 72 && c4 == 65 && c5 == 80) {
                                    id3Frame = a(pVar, i8, i, z, i2, aVar);
                                } else if (c2 == 67 && c3 == 84 && c4 == 79 && c5 == 67) {
                                    id3Frame = b(pVar, i8, i, z, i2, aVar);
                                } else if (c2 == 77 && c3 == 76 && c4 == 76 && c5 == 84) {
                                    id3Frame = a(pVar, i8);
                                } else {
                                    String a17 = a(i, c2, c3, c4, c5);
                                    byte[] bArr10 = new byte[i8];
                                    pVar.a(bArr10, 0, i8);
                                    id3Frame = new BinaryFrame(a17, bArr10);
                                }
                            } catch (UnsupportedEncodingException e2) {
                                i3 = i5;
                                j.a("Id3Decoder", "Unsupported character encoding");
                                pVar.c(i3);
                                return null;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = i5;
                                pVar.c(i3);
                                throw th;
                            }
                        }
                        if (id3Frame == null) {
                            String a18 = a(i, c2, c3, c4, c5);
                            StringBuilder sb = new StringBuilder(String.valueOf(a18).length() + 50);
                            sb.append("Failed to decode frame: id=");
                            sb.append(a18);
                            sb.append(", frameSize=");
                            sb.append(i8);
                            try {
                                j.a("Id3Decoder", sb.toString());
                            } catch (UnsupportedEncodingException e3) {
                                i3 = i5;
                                j.a("Id3Decoder", "Unsupported character encoding");
                                pVar.c(i3);
                                return null;
                            }
                        }
                        pVar.c(i5);
                        return id3Frame;
                    } catch (UnsupportedEncodingException e4) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (UnsupportedEncodingException e5) {
            } catch (Throwable th5) {
                th = th5;
            }
        } else {
            pVar.c(i5);
            return null;
        }
    }

    private static MlltFrame a(p pVar, int i) {
        int d2 = pVar.d();
        int f = pVar.f();
        int f2 = pVar.f();
        int c2 = pVar.c();
        int c3 = pVar.c();
        o oVar = new o();
        oVar.a(pVar.f4166a, pVar.f4168c);
        oVar.a(pVar.f4167b * 8);
        int i2 = ((i - 10) * 8) / (c2 + c3);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int c4 = oVar.c(c2);
            int c5 = oVar.c(c3);
            iArr[i3] = c4;
            iArr2[i3] = c5;
        }
        return new MlltFrame(d2, f, f2, iArr, iArr2);
    }

    private static b a(p pVar) {
        int i;
        if (pVar.b() < 10) {
            j.a("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int f = pVar.f();
        if (f != 4801587) {
            StringBuilder sb = new StringBuilder(59);
            sb.append("Unexpected first three bytes of ID3 tag header: ");
            sb.append(f);
            j.a("Id3Decoder", sb.toString());
            return null;
        }
        int c2 = pVar.c();
        boolean z = true;
        pVar.d(1);
        int c3 = pVar.c();
        int m = pVar.m();
        if (c2 == 2) {
            i = m;
            if ((c3 & 64) != 0) {
                j.a("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (c2 == 3) {
            i = m;
            if ((c3 & 64) != 0) {
                int i2 = pVar.i();
                pVar.d(i2);
                i = m - (i2 + 4);
            }
        } else if (c2 == 4) {
            int i3 = m;
            if ((c3 & 64) != 0) {
                int m2 = pVar.m();
                pVar.d(m2 - 4);
                i3 = m - m2;
            }
            i = i3;
            if ((c3 & 16) != 0) {
                i = i3 - 10;
            }
        } else {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Skipped ID3 tag with unsupported majorVersion=");
            sb2.append(c2);
            j.a("Id3Decoder", sb2.toString());
            return null;
        }
        if (c2 >= 4 || (c3 & 128) == 0) {
            z = false;
        }
        return new b(c2, z, i);
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    private static String a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static String a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ boolean a() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0135 A[Catch: all -> 0x0162, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0162, blocks: (B:3:0x0006, B:8:0x001a, B:9:0x002f, B:55:0x0135, B:61:0x0151), top: B:67:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(androidx.media2.exoplayer.external.util.p r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.a.a(androidx.media2.exoplayer.external.util.p, int, int, boolean):boolean");
    }

    private static int b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int b(p pVar, int i) {
        byte[] bArr = pVar.f4166a;
        int i2 = pVar.f4167b;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2 + i) {
                return i;
            }
            i = i;
            if ((bArr[i3] & 255) == 255) {
                i = i;
                if (bArr[i4] == 0) {
                    System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                    i--;
                }
            }
            i3 = i4;
        }
    }

    private static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    private static ChapterTocFrame b(p pVar, int i, int i2, boolean z, int i3, AbstractC0083a aVar) throws UnsupportedEncodingException {
        int i4 = pVar.f4167b;
        int b2 = b(pVar.f4166a, i4);
        String str = new String(pVar.f4166a, i4, b2 - i4, "ISO-8859-1");
        pVar.c(b2 + 1);
        int c2 = pVar.c();
        boolean z2 = (c2 & 2) != 0;
        boolean z3 = (c2 & 1) != 0;
        int c3 = pVar.c();
        String[] strArr = new String[c3];
        for (int i5 = 0; i5 < c3; i5++) {
            int i6 = pVar.f4167b;
            int b3 = b(pVar.f4166a, i6);
            strArr[i5] = new String(pVar.f4166a, i6, b3 - i6, "ISO-8859-1");
            pVar.c(b3 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (pVar.f4167b < i4 + i) {
            Id3Frame a2 = a(i2, pVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    private static byte[] b(byte[] bArr, int i, int i2) {
        return i2 <= i ? ac.f : Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.metadata.a
    public final Metadata a(c cVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media2.exoplayer.external.util.a.a(cVar.f2949c);
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    public final Metadata a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        p pVar = new p(bArr, i);
        b a2 = a(pVar);
        if (a2 == null) {
            return null;
        }
        int i2 = pVar.f4167b;
        int i3 = a2.f3455a == 2 ? 6 : 10;
        int i4 = a2.f3457c;
        if (a2.f3456b) {
            i4 = b(pVar, a2.f3457c);
        }
        pVar.b(i2 + i4);
        boolean z = false;
        if (!a(pVar, a2.f3455a, i3, false)) {
            if (a2.f3455a != 4 || !a(pVar, 4, i3, true)) {
                int i5 = a2.f3455a;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i5);
                j.a("Id3Decoder", sb.toString());
                return null;
            }
            z = true;
        }
        while (pVar.b() >= i3) {
            Id3Frame a3 = a(a2.f3455a, pVar, z, i3, this.f3454b);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return new Metadata(arrayList);
    }
}
