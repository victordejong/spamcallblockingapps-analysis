package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.metadata.f;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    public static final AbstractC0433a f21446a = _$$Lambda$a$BoRSc8ryhYVTmLVXoM1YBDgL3Vs.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC0433a f21447b;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a$a.class */
    public interface AbstractC0433a {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f21448a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f21449b;

        /* renamed from: c  reason: collision with root package name */
        final int f21450c;

        public b(int i, boolean z, int i2) {
            this.f21448a = i;
            this.f21449b = z;
            this.f21450c = i2;
        }
    }

    public a() {
        this(null);
    }

    public a(AbstractC0433a aVar) {
        this.f21447b = aVar;
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

    private static ChapterFrame a(u uVar, int i, int i2, boolean z, int i3, AbstractC0433a aVar) throws UnsupportedEncodingException {
        int i4 = uVar.f22336b;
        int b2 = b(uVar.f22335a, i4);
        String str = new String(uVar.f22335a, i4, b2 - i4, "ISO-8859-1");
        uVar.d(b2 + 1);
        int j = uVar.j();
        int j2 = uVar.j();
        long h = uVar.h();
        if (h == 4294967295L) {
            h = -1;
        }
        long h2 = uVar.h();
        if (h2 == 4294967295L) {
            h2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        while (uVar.f22336b < i4 + i) {
            Id3Frame a2 = a(i2, uVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new ChapterFrame(str, j, j2, h, h2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static Id3Frame a(int i, u uVar, boolean z, int i2, AbstractC0433a aVar) {
        int o;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        Id3Frame id3Frame;
        String str;
        int i4;
        int c2 = uVar.c();
        int c3 = uVar.c();
        int c4 = uVar.c();
        int c5 = i >= 3 ? uVar.c() : 0;
        if (i == 4) {
            int o2 = uVar.o();
            o = o2;
            if (!z) {
                o = (((o2 >> 24) & 255) << 21) | (o2 & 255) | (((o2 >> 8) & 255) << 7) | (((o2 >> 16) & 255) << 14);
            }
        } else {
            o = i == 3 ? uVar.o() : uVar.g();
        }
        int d2 = i >= 3 ? uVar.d() : 0;
        if (c2 == 0 && c3 == 0 && c4 == 0 && c5 == 0 && o == 0 && d2 == 0) {
            uVar.d(uVar.f22337c);
            return null;
        }
        int i5 = uVar.f22336b + o;
        if (i5 > uVar.f22337c) {
            n.a("Id3Decoder", "Frame size exceeds remaining tag data");
            uVar.d(uVar.f22337c);
            return null;
        } else if (aVar == null || aVar.evaluate(i, c2, c3, c4, c5)) {
            if (i == 3) {
                z6 = (d2 & 128) != 0;
                z2 = (d2 & 64) != 0;
                z5 = (d2 & 32) != 0;
                z4 = false;
                z3 = z6;
            } else if (i == 4) {
                boolean z7 = (d2 & 64) != 0;
                boolean z8 = (d2 & 8) != 0;
                z2 = (d2 & 4) != 0;
                boolean z9 = (d2 & 2) != 0;
                if ((d2 & 1) != 0) {
                    z6 = true;
                    z5 = z7;
                    z3 = z8;
                    z4 = z9;
                } else {
                    z6 = false;
                    z5 = z7;
                    z3 = z8;
                    z4 = z9;
                }
            } else {
                z5 = false;
                z6 = false;
                z3 = false;
                z2 = false;
                z4 = false;
            }
            if (z3 || z2) {
                n.a("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                uVar.d(i5);
                return null;
            }
            int i6 = o;
            if (z5) {
                i6 = o - 1;
                uVar.e(1);
            }
            int i7 = i6;
            if (z6) {
                i7 = i6 - 4;
                uVar.e(4);
            }
            int i8 = i7;
            if (z4) {
                i8 = b(uVar, i7);
            }
            try {
                try {
                    try {
                        if (c2 == 84 && c3 == 88 && c4 == 88 && (i == 2 || c5 == 88)) {
                            if (i8 > 0) {
                                int c6 = uVar.c();
                                String a2 = a(c6);
                                int i9 = i8 - 1;
                                byte[] bArr = new byte[i9];
                                uVar.a(bArr, 0, i9);
                                int a3 = a(bArr, 0, c6);
                                String str2 = new String(bArr, 0, a3, a2);
                                int b2 = a3 + b(c6);
                                id3Frame = new TextInformationFrame("TXXX", str2, a(bArr, b2, a(bArr, b2, c6), a2));
                            }
                            id3Frame = null;
                        } else if (c2 == 84) {
                            String a4 = a(i, c2, c3, c4, c5);
                            if (i8 > 0) {
                                int c7 = uVar.c();
                                String a5 = a(c7);
                                int i10 = i8 - 1;
                                byte[] bArr2 = new byte[i10];
                                uVar.a(bArr2, 0, i10);
                                id3Frame = new TextInformationFrame(a4, null, new String(bArr2, 0, a(bArr2, 0, c7), a5));
                            }
                            id3Frame = null;
                        } else if (c2 == 87 && c3 == 88 && c4 == 88 && (i == 2 || c5 == 88)) {
                            if (i8 > 0) {
                                int c8 = uVar.c();
                                String a6 = a(c8);
                                int i11 = i8 - 1;
                                byte[] bArr3 = new byte[i11];
                                uVar.a(bArr3, 0, i11);
                                int a7 = a(bArr3, 0, c8);
                                String str3 = new String(bArr3, 0, a7, a6);
                                int b3 = a7 + b(c8);
                                id3Frame = new UrlLinkFrame("WXXX", str3, a(bArr3, b3, b(bArr3, b3), "ISO-8859-1"));
                            }
                            id3Frame = null;
                        } else if (c2 == 87) {
                            String a8 = a(i, c2, c3, c4, c5);
                            byte[] bArr4 = new byte[i8];
                            uVar.a(bArr4, 0, i8);
                            id3Frame = new UrlLinkFrame(a8, null, new String(bArr4, 0, b(bArr4, 0), "ISO-8859-1"));
                        } else if (c2 == 80 && c3 == 82 && c4 == 73 && c5 == 86) {
                            byte[] bArr5 = new byte[i8];
                            uVar.a(bArr5, 0, i8);
                            int b4 = b(bArr5, 0);
                            id3Frame = new PrivFrame(new String(bArr5, 0, b4, "ISO-8859-1"), b(bArr5, b4 + 1, i8));
                        } else if (c2 == 71 && c3 == 69 && c4 == 79 && (c5 == 66 || i == 2)) {
                            int c9 = uVar.c();
                            String a9 = a(c9);
                            int i12 = i8 - 1;
                            byte[] bArr6 = new byte[i12];
                            uVar.a(bArr6, 0, i12);
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
                                        int c10 = uVar.c();
                                        String a13 = a(c10);
                                        int i14 = i8 - 1;
                                        byte[] bArr7 = new byte[i14];
                                        uVar.a(bArr7, 0, i14);
                                        if (i == 2) {
                                            StringBuilder sb = new StringBuilder("image/");
                                            sb.append(af.d(new String(bArr7, 0, 3, "ISO-8859-1")));
                                            String sb2 = sb.toString();
                                            str = sb2;
                                            if ("image/jpg".equals(sb2)) {
                                                str = "image/jpeg";
                                            }
                                            i4 = 2;
                                        } else {
                                            int b7 = b(bArr7, 0);
                                            String d3 = af.d(new String(bArr7, 0, b7, "ISO-8859-1"));
                                            str = d3;
                                            i4 = b7;
                                            if (d3.indexOf(47) == -1) {
                                                str = "image/".concat(String.valueOf(d3));
                                                i4 = b7;
                                            }
                                        }
                                        byte b8 = bArr7[i4 + 1];
                                        int i15 = i4 + 2;
                                        int a14 = a(bArr7, i15, c10);
                                        id3Frame = new ApicFrame(str, new String(bArr7, i15, a14 - i15, a13), b8 & 255, b(bArr7, a14 + b(c10), i14));
                                    } catch (UnsupportedEncodingException e) {
                                        i3 = i5;
                                        try {
                                            n.a("Id3Decoder", "Unsupported character encoding");
                                            uVar.d(i3);
                                            return null;
                                        } catch (Throwable th) {
                                            th = th;
                                            uVar.d(i3);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        i3 = i5;
                                        uVar.d(i3);
                                        throw th;
                                    }
                                } else if (c2 == 67 && c3 == 79 && c4 == 77 && (c5 == 77 || i == 2)) {
                                    if (i8 < 4) {
                                        id3Frame = null;
                                    } else {
                                        int c11 = uVar.c();
                                        String a15 = a(c11);
                                        byte[] bArr8 = new byte[3];
                                        uVar.a(bArr8, 0, 3);
                                        String str5 = new String(bArr8, 0, 3);
                                        int i16 = i8 - 4;
                                        byte[] bArr9 = new byte[i16];
                                        uVar.a(bArr9, 0, i16);
                                        int a16 = a(bArr9, 0, c11);
                                        String str6 = new String(bArr9, 0, a16, a15);
                                        int b9 = a16 + b(c11);
                                        id3Frame = new CommentFrame(str5, str6, a(bArr9, b9, a(bArr9, b9, c11), a15));
                                    }
                                } else if (c2 == 67 && c3 == 72 && c4 == 65 && c5 == 80) {
                                    id3Frame = a(uVar, i8, i, z, i2, aVar);
                                } else if (c2 == 67 && c3 == 84 && c4 == 79 && c5 == 67) {
                                    id3Frame = b(uVar, i8, i, z, i2, aVar);
                                } else if (c2 == 77 && c3 == 76 && c4 == 76 && c5 == 84) {
                                    id3Frame = a(uVar, i8);
                                } else {
                                    String a17 = a(i, c2, c3, c4, c5);
                                    byte[] bArr10 = new byte[i8];
                                    uVar.a(bArr10, 0, i8);
                                    id3Frame = new BinaryFrame(a17, bArr10);
                                }
                            } catch (UnsupportedEncodingException e2) {
                                i3 = i5;
                                n.a("Id3Decoder", "Unsupported character encoding");
                                uVar.d(i3);
                                return null;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = i5;
                                uVar.d(i3);
                                throw th;
                            }
                        }
                        if (id3Frame == null) {
                            try {
                                n.a("Id3Decoder", "Failed to decode frame: id=" + a(i, c2, c3, c4, c5) + ", frameSize=" + i8);
                            } catch (UnsupportedEncodingException e3) {
                                i3 = i5;
                                n.a("Id3Decoder", "Unsupported character encoding");
                                uVar.d(i3);
                                return null;
                            }
                        }
                        uVar.d(i5);
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
            uVar.d(i5);
            return null;
        }
    }

    private static MlltFrame a(u uVar, int i) {
        int d2 = uVar.d();
        int g = uVar.g();
        int g2 = uVar.g();
        int c2 = uVar.c();
        int c3 = uVar.c();
        t tVar = new t();
        tVar.a(uVar.f22335a, uVar.f22337c);
        tVar.a(uVar.f22336b * 8);
        int i2 = ((i - 10) * 8) / (c2 + c3);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int c4 = tVar.c(c2);
            int c5 = tVar.c(c3);
            iArr[i3] = c4;
            iArr2[i3] = c5;
        }
        return new MlltFrame(d2, g, g2, iArr, iArr2);
    }

    private static b a(u uVar) {
        int g;
        int i;
        if (uVar.a() < 10) {
            n.a("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (uVar.g() != 4801587) {
            n.a("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(g)));
            return null;
        }
        int c2 = uVar.c();
        uVar.e(1);
        int c3 = uVar.c();
        int n = uVar.n();
        if (c2 == 2) {
            i = n;
            if ((c3 & 64) != 0) {
                n.a("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (c2 == 3) {
            i = n;
            if ((c3 & 64) != 0) {
                int j = uVar.j();
                uVar.e(j);
                i = n - (j + 4);
            }
        } else if (c2 == 4) {
            int i2 = n;
            if ((c3 & 64) != 0) {
                int n2 = uVar.n();
                uVar.e(n2 - 4);
                i2 = n - n2;
            }
            i = i2;
            if ((c3 & 16) != 0) {
                i = i2 - 10;
            }
        } else {
            n.a("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=".concat(String.valueOf(c2)));
            return null;
        }
        boolean z = false;
        if (c2 < 4) {
            z = false;
            if ((c3 & 128) != 0) {
                z = true;
            }
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
    private static boolean a(com.google.android.exoplayer2.util.u r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.a.a(com.google.android.exoplayer2.util.u, int, int, boolean):boolean");
    }

    private static int b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int b(u uVar, int i) {
        byte[] bArr = uVar.f22335a;
        int i2 = uVar.f22336b;
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

    private static ChapterTocFrame b(u uVar, int i, int i2, boolean z, int i3, AbstractC0433a aVar) throws UnsupportedEncodingException {
        int i4 = uVar.f22336b;
        int b2 = b(uVar.f22335a, i4);
        String str = new String(uVar.f22335a, i4, b2 - i4, "ISO-8859-1");
        uVar.d(b2 + 1);
        int c2 = uVar.c();
        boolean z2 = (c2 & 2) != 0;
        boolean z3 = (c2 & 1) != 0;
        int c3 = uVar.c();
        String[] strArr = new String[c3];
        for (int i5 = 0; i5 < c3; i5++) {
            int i6 = uVar.f22336b;
            int b3 = b(uVar.f22335a, i6);
            strArr[i5] = new String(uVar.f22335a, i6, b3 - i6, "ISO-8859-1");
            uVar.d(b3 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (uVar.f22336b < i4 + i) {
            Id3Frame a2 = a(i2, uVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    private static byte[] b(byte[] bArr, int i, int i2) {
        return i2 <= i ? af.f : Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.metadata.f
    public final Metadata a(c cVar, ByteBuffer byteBuffer) {
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    public final Metadata a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        u uVar = new u(bArr, i);
        b a2 = a(uVar);
        if (a2 == null) {
            return null;
        }
        int i2 = uVar.f22336b;
        int i3 = a2.f21448a == 2 ? 6 : 10;
        int i4 = a2.f21450c;
        if (a2.f21449b) {
            i4 = b(uVar, a2.f21450c);
        }
        uVar.c(i2 + i4);
        boolean z = false;
        if (!a(uVar, a2.f21448a, i3, false)) {
            if (a2.f21448a != 4 || !a(uVar, 4, i3, true)) {
                n.a("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + a2.f21448a);
                return null;
            }
            z = true;
        }
        while (uVar.a() >= i3) {
            Id3Frame a3 = a(a2.f21448a, uVar, z, i3, this.f21447b);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return new Metadata(arrayList);
    }
}
