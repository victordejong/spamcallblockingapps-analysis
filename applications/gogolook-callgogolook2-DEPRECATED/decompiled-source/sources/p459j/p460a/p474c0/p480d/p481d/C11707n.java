package p459j.p460a.p474c0.p480d.p481d;

import android.util.Log;
import android.util.SparseArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: j.a.c0.d.d.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/n.class */
public class C11707n {

    /* renamed from: e */
    public static byte[] f26253e;

    /* renamed from: f */
    public static byte[] f26254f;

    /* renamed from: a */
    public ByteArrayInputStream f26255a;

    /* renamed from: b */
    public C11706m f26256b = null;

    /* renamed from: c */
    public C11699j f26257c = null;

    /* renamed from: d */
    public final boolean f26258d;

    public C11707n(byte[] bArr, boolean z) {
        this.f26255a = null;
        this.f26255a = new ByteArrayInputStream(bArr);
        this.f26258d = z;
    }

    /* renamed from: a */
    public static int m8517a(C11708o oVar) {
        byte[] f;
        if (f26253e == null && f26254f == null) {
            return 1;
        }
        if (f26254f == null) {
            return (f26253e == null || (f = oVar.m8487f()) == null || true != Arrays.equals(f26253e, f)) ? 1 : 0;
        }
        byte[] c = oVar.m8493c();
        return (c == null || true != Arrays.equals(f26254f, c)) ? 1 : 0;
    }

    /* renamed from: a */
    public static void m8513a(ByteArrayInputStream byteArrayInputStream, SparseArray<Object> sparseArray, Integer num) {
        int available;
        int intValue;
        int available2 = byteArrayInputStream.available();
        int intValue2 = num.intValue();
        while (intValue2 > 0) {
            int read = byteArrayInputStream.read();
            intValue2--;
            if (read != 129) {
                if (read != 131) {
                    if (read == 133 || read == 151) {
                        byte[] b = m8508b(byteArrayInputStream, 0);
                        if (!(b == null || sparseArray == null)) {
                            sparseArray.put(151, b);
                        }
                        available = byteArrayInputStream.available();
                        intValue = num.intValue();
                    } else {
                        if (read != 153) {
                            if (read != 137) {
                                if (read != 138) {
                                    if (-1 == m8506c(byteArrayInputStream, intValue2)) {
                                        Log.e("PduParser", "Corrupt Content-Type");
                                    } else {
                                        intValue2 = 0;
                                    }
                                }
                            }
                        }
                        byte[] b2 = m8508b(byteArrayInputStream, 0);
                        if (!(b2 == null || sparseArray == null)) {
                            sparseArray.put(153, b2);
                        }
                        available = byteArrayInputStream.available();
                        intValue = num.intValue();
                    }
                }
                byteArrayInputStream.mark(1);
                int c = m8507c(byteArrayInputStream);
                byteArrayInputStream.reset();
                if (c > 127) {
                    int g = m8502g(byteArrayInputStream);
                    String[] strArr = C11705l.f26251a;
                    if (g < strArr.length) {
                        sparseArray.put(131, strArr[g].getBytes());
                    }
                } else {
                    byte[] b3 = m8508b(byteArrayInputStream, 0);
                    if (!(b3 == null || sparseArray == null)) {
                        sparseArray.put(131, b3);
                    }
                }
                available = byteArrayInputStream.available();
                intValue = num.intValue();
            } else {
                byteArrayInputStream.mark(1);
                int c2 = m8507c(byteArrayInputStream);
                byteArrayInputStream.reset();
                if ((c2 <= 32 || c2 >= 127) && c2 != 0) {
                    int e = (int) m8504e(byteArrayInputStream);
                    if (sparseArray != null) {
                        sparseArray.put(129, Integer.valueOf(e));
                    }
                } else {
                    byte[] b4 = m8508b(byteArrayInputStream, 0);
                    try {
                        sparseArray.put(129, Integer.valueOf(C11692c.m8592a(new String(b4))));
                    } catch (UnsupportedEncodingException e2) {
                        Log.e("PduParser", Arrays.toString(b4), e2);
                        sparseArray.put(129, 0);
                    }
                }
                available = byteArrayInputStream.available();
                intValue = num.intValue();
            }
            intValue2 = intValue - (available2 - available);
        }
        if (intValue2 != 0) {
            Log.e("PduParser", "Corrupt Content-Type");
        }
    }

    /* renamed from: a */
    public static void m8511a(String str) {
    }

    /* renamed from: a */
    public static boolean m8519a(int i) {
        if (i < 32 || i > 126) {
            return (i >= 128 && i <= 255) || i == 9 || i == 10 || i == 13;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m8518a(C11706m mVar) {
        if (mVar == null) {
            return false;
        }
        int d = mVar.m8523d(140);
        if (mVar.m8523d(141) == 0) {
            return false;
        }
        switch (d) {
            case 128:
                return (mVar.m8522e(132) == null || mVar.m8532a(137) == null || mVar.m8522e(152) == null) ? false : true;
            case 129:
                return (mVar.m8523d(146) == 0 || mVar.m8522e(152) == null) ? false : true;
            case 130:
                return (mVar.m8522e(131) == null || -1 == mVar.m8524c(136) || mVar.m8522e(138) == null || -1 == mVar.m8524c(142) || mVar.m8522e(152) == null) ? false : true;
            case 131:
                return (mVar.m8523d(149) == 0 || mVar.m8522e(152) == null) ? false : true;
            case 132:
                return (mVar.m8522e(132) == null || -1 == mVar.m8524c(133)) ? false : true;
            case 133:
                return mVar.m8522e(152) != null;
            case 134:
                return (-1 == mVar.m8524c(133) || mVar.m8522e(139) == null || mVar.m8523d(149) == 0 || mVar.m8526b(151) == null) ? false : true;
            case 135:
                return (mVar.m8532a(137) == null || mVar.m8522e(139) == null || mVar.m8523d(155) == 0 || mVar.m8526b(151) == null) ? false : true;
            case 136:
                return (-1 == mVar.m8524c(133) || mVar.m8532a(137) == null || mVar.m8522e(139) == null || mVar.m8523d(155) == 0 || mVar.m8526b(151) == null) ? false : true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    public static byte[] m8515a(ByteArrayInputStream byteArrayInputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int read = byteArrayInputStream.read();
        while (-1 != read && read != 0) {
            if (i == 2) {
                if (m8510b(read)) {
                    byteArrayOutputStream.write(read);
                }
            } else if (m8519a(read)) {
                byteArrayOutputStream.write(read);
            }
            read = byteArrayInputStream.read();
        }
        if (byteArrayOutputStream.size() > 0) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m8514a(ByteArrayInputStream byteArrayInputStream, SparseArray<Object> sparseArray) {
        byte[] bArr;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        int i = read & 255;
        if (i < 32) {
            int i2 = m8500i(byteArrayInputStream);
            int available = byteArrayInputStream.available();
            byteArrayInputStream.mark(1);
            int read2 = byteArrayInputStream.read();
            byteArrayInputStream.reset();
            int i3 = read2 & 255;
            if (i3 >= 32 && i3 <= 127) {
                bArr = m8508b(byteArrayInputStream, 0);
            } else if (i3 > 127) {
                int g = m8502g(byteArrayInputStream);
                String[] strArr = C11705l.f26251a;
                if (g < strArr.length) {
                    bArr = strArr[g].getBytes();
                } else {
                    byteArrayInputStream.reset();
                    bArr = m8508b(byteArrayInputStream, 0);
                }
            } else {
                Log.e("PduParser", "Corrupt content-type");
                return C11705l.f26251a[0].getBytes();
            }
            int available2 = i2 - (available - byteArrayInputStream.available());
            if (available2 > 0) {
                m8513a(byteArrayInputStream, sparseArray, Integer.valueOf(available2));
            }
            if (available2 < 0) {
                Log.e("PduParser", "Corrupt MMS message");
                return C11705l.f26251a[0].getBytes();
            }
        } else {
            bArr = i <= 127 ? m8508b(byteArrayInputStream, 0) : C11705l.f26251a[m8502g(byteArrayInputStream)].getBytes();
        }
        return bArr;
    }

    /* renamed from: b */
    public static boolean m8510b(int i) {
        if (i < 33 || i > 126 || i == 34 || i == 44 || i == 47 || i == 123 || i == 125 || i == 40 || i == 41) {
            return false;
        }
        switch (i) {
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                return false;
            default:
                switch (i) {
                    case 91:
                    case 92:
                    case 93:
                        return false;
                    default:
                        return true;
                }
        }
    }

    /* renamed from: b */
    public static byte[] m8508b(ByteArrayInputStream byteArrayInputStream, int i) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        if (1 == i && 34 == read) {
            byteArrayInputStream.mark(1);
        } else if (i == 0 && 127 == read) {
            byteArrayInputStream.mark(1);
        } else {
            byteArrayInputStream.reset();
        }
        return m8515a(byteArrayInputStream, i);
    }

    /* renamed from: c */
    public static int m8507c(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 255;
    }

    /* renamed from: c */
    public static int m8506c(ByteArrayInputStream byteArrayInputStream, int i) {
        int read = byteArrayInputStream.read(new byte[i], 0, i);
        int i2 = read;
        if (read < i) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: d */
    public static C11694e m8505d(ByteArrayInputStream byteArrayInputStream) {
        int i;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read() & 255;
        if (read == 0) {
            return null;
        }
        byteArrayInputStream.reset();
        if (read < 32) {
            m8500i(byteArrayInputStream);
            i = m8502g(byteArrayInputStream);
        } else {
            i = 0;
        }
        byte[] b = m8508b(byteArrayInputStream, 0);
        try {
            return i != 0 ? new C11694e(i, b) : new C11694e(b);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public static long m8504e(ByteArrayInputStream byteArrayInputStream) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        return read > 127 ? m8502g(byteArrayInputStream) : m8503f(byteArrayInputStream);
    }

    /* renamed from: f */
    public static long m8503f(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read <= 8) {
            long j = 0;
            for (int i = 0; i < read; i++) {
                j = (j << 8) + (byteArrayInputStream.read() & 255);
            }
            return j;
        }
        throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
    }

    /* renamed from: g */
    public static int m8502g(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 127;
    }

    /* renamed from: h */
    public static int m8501h(ByteArrayInputStream byteArrayInputStream) {
        int i = 0;
        int read = byteArrayInputStream.read();
        int i2 = read;
        if (read == -1) {
            return read;
        }
        while ((i2 & 128) != 0) {
            i = (i << 7) | (i2 & 127);
            int read2 = byteArrayInputStream.read();
            i2 = read2;
            if (read2 == -1) {
                return read2;
            }
        }
        return (i << 7) | (i2 & 127);
    }

    /* renamed from: i */
    public static int m8500i(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read <= 30) {
            return read;
        }
        if (read == 31) {
            return m8501h(byteArrayInputStream);
        }
        throw new RuntimeException("Value length > LENGTH_QUOTE!");
    }

    /* renamed from: a */
    public C11695f m8520a() {
        ByteArrayInputStream byteArrayInputStream = this.f26255a;
        if (byteArrayInputStream == null) {
            return null;
        }
        this.f26256b = m8516a(byteArrayInputStream);
        C11706m mVar = this.f26256b;
        if (mVar == null) {
            return null;
        }
        int d = mVar.m8523d(140);
        if (!m8518a(this.f26256b)) {
            m8511a("check mandatory headers failed!");
            return null;
        }
        int d2 = this.f26256b.m8521f(153) ? this.f26256b.m8523d(153) : 128;
        if (128 == d || (132 == d && d2 == 128)) {
            this.f26257c = m8509b(this.f26255a);
            if (this.f26257c == null) {
                return null;
            }
        }
        switch (d) {
            case 128:
                return new C11715v(this.f26256b, this.f26257c);
            case 129:
                return new C11714u(this.f26256b);
            case 130:
                return new C11697h(this.f26256b);
            case 131:
                return new C11698i(this.f26256b);
            case 132:
                C11713t tVar = new C11713t(this.f26256b, this.f26257c);
                if (d2 != 128) {
                    return tVar;
                }
                byte[] d3 = tVar.m8454d();
                if (d3 == null) {
                    return null;
                }
                String str = new String(d3);
                if (str.equals("application/vnd.wap.multipart.mixed") || str.equals("application/vnd.wap.multipart.related") || str.equals("application/vnd.wap.multipart.alternative")) {
                    return tVar;
                }
                if (!str.equals("application/vnd.wap.multipart.alternative")) {
                    return null;
                }
                C11708o a = this.f26257c.m8568a(0);
                this.f26257c.m8565b();
                this.f26257c.m8567a(0, a);
                return tVar;
            case 133:
                return new C11690a(this.f26256b);
            case 134:
                return new C11693d(this.f26256b);
            case 135:
                return new C11712s(this.f26256b);
            case 136:
                return new C11711r(this.f26256b);
            default:
                m8511a("Parser doesn't support this message type in this version!");
                return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [j.a.c0.d.d.m] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p459j.p460a.p474c0.p480d.p481d.C11706m m8516a(java.io.ByteArrayInputStream r8) {
        /*
            Method dump skipped, instructions count: 2032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p480d.p481d.C11707n.m8516a(java.io.ByteArrayInputStream):j.a.c0.d.d.m");
    }

    /* renamed from: a */
    public boolean m8512a(ByteArrayInputStream byteArrayInputStream, C11708o oVar, int i) {
        int available;
        int available2 = byteArrayInputStream.available();
        int i2 = i;
        while (i2 > 0) {
            int read = byteArrayInputStream.read();
            i2--;
            if (read > 127) {
                if (read != 142) {
                    if (read != 174) {
                        if (read == 192) {
                            byte[] b = m8508b(byteArrayInputStream, 1);
                            if (b != null) {
                                oVar.m8494b(b);
                            }
                            available = byteArrayInputStream.available();
                        } else if (read != 197) {
                            if (-1 == m8506c(byteArrayInputStream, i2)) {
                                Log.e("PduParser", "Corrupt Part headers");
                                return false;
                            }
                            i2 = 0;
                        }
                    }
                    if (this.f26258d) {
                        int i3 = m8500i(byteArrayInputStream);
                        byteArrayInputStream.mark(1);
                        int available3 = byteArrayInputStream.available();
                        int read2 = byteArrayInputStream.read();
                        if (read2 == 128) {
                            oVar.m8496a(C11708o.f26259d);
                        } else if (read2 == 129) {
                            oVar.m8496a(C11708o.f26260e);
                        } else if (read2 == 130) {
                            oVar.m8496a(C11708o.f26261f);
                        } else {
                            byteArrayInputStream.reset();
                            oVar.m8496a(m8508b(byteArrayInputStream, 0));
                        }
                        if (available3 - byteArrayInputStream.available() < i3) {
                            if (byteArrayInputStream.read() == 152) {
                                oVar.m8484g(m8508b(byteArrayInputStream, 0));
                            }
                            int available4 = available3 - byteArrayInputStream.available();
                            if (available4 < i3) {
                                int i4 = i3 - available4;
                                byteArrayInputStream.read(new byte[i4], 0, i4);
                            }
                        }
                        available = byteArrayInputStream.available();
                    }
                } else {
                    byte[] b2 = m8508b(byteArrayInputStream, 0);
                    if (b2 != null) {
                        oVar.m8492c(b2);
                    }
                    available = byteArrayInputStream.available();
                }
                i2 = i - (available2 - available);
            } else if (read < 32 || read > 127) {
                if (-1 == m8506c(byteArrayInputStream, i2)) {
                    Log.e("PduParser", "Corrupt Part headers");
                    return false;
                }
                i2 = 0;
            } else {
                byte[] b3 = m8508b(byteArrayInputStream, 0);
                byte[] b4 = m8508b(byteArrayInputStream, 0);
                if (true == "Content-Transfer-Encoding".equalsIgnoreCase(new String(b3))) {
                    oVar.m8490d(b4);
                }
                available = byteArrayInputStream.available();
                i2 = i - (available2 - available);
            }
        }
        if (i2 == 0) {
            return true;
        }
        Log.e("PduParser", "Corrupt Part headers");
        return false;
    }

    /* renamed from: b */
    public C11699j m8509b(ByteArrayInputStream byteArrayInputStream) {
        if (byteArrayInputStream == null) {
            return null;
        }
        int h = m8501h(byteArrayInputStream);
        C11699j jVar = new C11699j();
        for (int i = 0; i < h; i++) {
            int h2 = m8501h(byteArrayInputStream);
            int h3 = m8501h(byteArrayInputStream);
            C11708o oVar = new C11708o();
            int available = byteArrayInputStream.available();
            if (available <= 0) {
                return null;
            }
            SparseArray sparseArray = new SparseArray();
            byte[] a = m8514a(byteArrayInputStream, sparseArray);
            if (a != null) {
                oVar.m8488e(a);
            } else {
                oVar.m8488e(C11705l.f26251a[0].getBytes());
            }
            byte[] bArr = (byte[]) sparseArray.get(151);
            if (bArr != null) {
                oVar.m8482h(bArr);
            }
            Integer num = (Integer) sparseArray.get(129);
            if (num != null) {
                oVar.m8498a(num.intValue());
            }
            int available2 = h2 - (available - byteArrayInputStream.available());
            if (available2 > 0) {
                if (!m8512a(byteArrayInputStream, oVar, available2)) {
                    return null;
                }
            } else if (available2 < 0) {
                return null;
            }
            if (oVar.m8491d() == null && oVar.m8480j() == null && oVar.m8481i() == null && oVar.m8493c() == null) {
                oVar.m8492c(Long.toOctalString(System.currentTimeMillis()).getBytes());
            }
            C11708o oVar2 = oVar;
            if (h3 > 0) {
                byte[] bArr2 = new byte[h3];
                String str = new String(oVar.m8487f());
                byteArrayInputStream.read(bArr2, 0, h3);
                if (str.equalsIgnoreCase("application/vnd.wap.multipart.alternative")) {
                    oVar2 = m8509b(new ByteArrayInputStream(bArr2)).m8568a(0);
                } else {
                    byte[] e = oVar.m8489e();
                    byte[] bArr3 = bArr2;
                    if (e != null) {
                        String str2 = new String(e);
                        if (str2.equalsIgnoreCase("base64")) {
                            bArr3 = C11691b.m8595a(bArr2);
                        } else {
                            bArr3 = bArr2;
                            if (str2.equalsIgnoreCase("quoted-printable")) {
                                bArr3 = C11710q.m8455a(bArr2);
                            }
                        }
                    }
                    if (bArr3 == null) {
                        m8511a("Decode part data error!");
                        return null;
                    }
                    oVar.m8486f(bArr3);
                    oVar2 = oVar;
                }
            }
            if (m8517a(oVar2) == 0) {
                jVar.m8567a(0, oVar2);
            } else {
                jVar.m8566a(oVar2);
            }
        }
        return jVar;
    }
}
