package p193e.p1432d.p1436b.p1437a.p1438b;

import android.util.SparseArray;
import com.truecaller.log.AssertionUtil;
import io.agora.rtc.Constants;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: e.d.b.a.b.n */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/n.class */
public class C22123n {

    /* renamed from: e */
    public static byte[] f61449e;

    /* renamed from: f */
    public static byte[] f61450f;

    /* renamed from: a */
    public ByteArrayInputStream f61451a;

    /* renamed from: b */
    public C22122m f61452b = null;

    /* renamed from: c */
    public C22115j f61453c = null;

    /* renamed from: d */
    public final boolean f61454d;

    public C22123n(byte[] bArr, boolean z) {
        this.f61451a = null;
        this.f61451a = new ByteArrayInputStream(bArr);
        this.f61454d = z;
    }

    /* renamed from: a */
    public static int m8759a(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read();
        AssertionUtil.AlwaysFatal.isTrue(read != -1, new String[0]);
        return read & 255;
    }

    /* renamed from: c */
    public static byte[] m8757c(ByteArrayInputStream byteArrayInputStream, SparseArray<Object> sparseArray) {
        byte[] bArr;
        int available;
        String[] strArr = C22121l.f61447a;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        AssertionUtil.AlwaysFatal.isTrue(read != -1, new String[0]);
        byteArrayInputStream.reset();
        int i = read & 255;
        if (i < 32) {
            int m8750j = m8750j(byteArrayInputStream);
            int available2 = byteArrayInputStream.available();
            byteArrayInputStream.mark(1);
            int read2 = byteArrayInputStream.read();
            AssertionUtil.AlwaysFatal.isTrue(read2 != -1, new String[0]);
            byteArrayInputStream.reset();
            int i2 = read2 & 255;
            if (i2 >= 32 && i2 <= 127) {
                bArr = m8749k(byteArrayInputStream, 0);
            } else if (i2 <= 127) {
                return strArr[0].getBytes();
            } else {
                int m8752h = m8752h(byteArrayInputStream);
                if (m8752h < strArr.length) {
                    bArr = strArr[m8752h].getBytes();
                } else {
                    byteArrayInputStream.reset();
                    bArr = m8749k(byteArrayInputStream, 0);
                }
            }
            int available3 = m8750j - (available2 - byteArrayInputStream.available());
            if (available3 > 0) {
                AssertionUtil.AlwaysFatal.isTrue(available3 > 0, new String[0]);
                int available4 = byteArrayInputStream.available();
                int i3 = available3;
                while (i3 > 0) {
                    int read3 = byteArrayInputStream.read();
                    AssertionUtil.AlwaysFatal.isTrue(read3 != -1, new String[0]);
                    i3--;
                    if (read3 != 129) {
                        if (read3 != 131) {
                            if (read3 == 133 || read3 == 151) {
                                byte[] m8749k = m8749k(byteArrayInputStream, 0);
                                if (m8749k != null && sparseArray != null) {
                                    sparseArray.put(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, m8749k);
                                }
                                available = byteArrayInputStream.available();
                            } else {
                                if (read3 != 153) {
                                    if (read3 != 137) {
                                        if (read3 != 138) {
                                            if (-1 != m8748l(byteArrayInputStream, i3)) {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                }
                                byte[] m8749k2 = m8749k(byteArrayInputStream, 0);
                                if (m8749k2 != null && sparseArray != null) {
                                    sparseArray.put(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, m8749k2);
                                }
                                available = byteArrayInputStream.available();
                            }
                        }
                        byteArrayInputStream.mark(1);
                        int m8759a = m8759a(byteArrayInputStream);
                        byteArrayInputStream.reset();
                        if (m8759a > 127) {
                            int m8752h2 = m8752h(byteArrayInputStream);
                            if (sparseArray != null && m8752h2 < strArr.length) {
                                sparseArray.put(131, strArr[m8752h2].getBytes());
                            }
                        } else {
                            byte[] m8749k3 = m8749k(byteArrayInputStream, 0);
                            if (m8749k3 != null && sparseArray != null) {
                                sparseArray.put(131, m8749k3);
                            }
                        }
                        available = byteArrayInputStream.available();
                    } else {
                        byteArrayInputStream.mark(1);
                        int m8759a2 = m8759a(byteArrayInputStream);
                        byteArrayInputStream.reset();
                        if ((m8759a2 <= 32 || m8759a2 >= 127) && m8759a2 != 0) {
                            int m8755e = (int) m8755e(byteArrayInputStream);
                            if (sparseArray != null) {
                                sparseArray.put(Constants.ERR_WATERMARK_READ, Integer.valueOf(m8755e));
                            }
                        } else {
                            byte[] m8749k4 = m8749k(byteArrayInputStream, 0);
                            if (sparseArray != null) {
                                try {
                                    String str = new String(m8749k4);
                                    int[] iArr = C22108c.f61421a;
                                    Integer orDefault = C22108c.f61424d.getOrDefault(str, null);
                                    if (orDefault == null) {
                                        throw new UnsupportedEncodingException();
                                        break;
                                    }
                                    sparseArray.put(Constants.ERR_WATERMARK_READ, Integer.valueOf(orDefault.intValue()));
                                } catch (UnsupportedEncodingException e) {
                                    Arrays.toString(m8749k4);
                                    sparseArray.put(Constants.ERR_WATERMARK_READ, 0);
                                }
                            }
                        }
                        available = byteArrayInputStream.available();
                    }
                    i3 = available3 - (available4 - available);
                }
            }
            if (available3 < 0) {
                return strArr[0].getBytes();
            }
        } else {
            bArr = i <= 127 ? m8749k(byteArrayInputStream, 0) : strArr[m8752h(byteArrayInputStream)].getBytes();
        }
        return bArr;
    }

    /* renamed from: d */
    public static C22110e m8756d(ByteArrayInputStream byteArrayInputStream) {
        int i;
        boolean z = true;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        if (-1 == read) {
            z = false;
        }
        AssertionUtil.AlwaysFatal.isTrue(z, new String[0]);
        int i2 = read & 255;
        if (i2 == 0) {
            return null;
        }
        byteArrayInputStream.reset();
        if (i2 < 32) {
            m8750j(byteArrayInputStream);
            i = m8752h(byteArrayInputStream);
        } else {
            i = 0;
        }
        byte[] m8749k = m8749k(byteArrayInputStream, 0);
        try {
            return i != 0 ? new C22110e(i, m8749k) : new C22110e(106, m8749k);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public static long m8755e(ByteArrayInputStream byteArrayInputStream) {
        boolean z = true;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        if (read == -1) {
            z = false;
        }
        AssertionUtil.AlwaysFatal.isTrue(z, new String[0]);
        byteArrayInputStream.reset();
        return read > 127 ? m8752h(byteArrayInputStream) : m8754f(byteArrayInputStream);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: f */
    public static long m8754f(ByteArrayInputStream byteArrayInputStream) {
        int read;
        int read2 = byteArrayInputStream.read();
        AssertionUtil.AlwaysFatal.isTrue(read2 != -1, new String[0]);
        int i = read2 & 255;
        if (i <= 8) {
            char c = 0;
            for (int i2 = 0; i2 < i; i2++) {
                AssertionUtil.AlwaysFatal.isTrue(byteArrayInputStream.read() != -1, new String[0]);
                c = (c << '\b') + (read & 255);
            }
            return c;
        }
        throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
    }

    /* renamed from: h */
    public static int m8752h(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read();
        AssertionUtil.AlwaysFatal.isTrue(read != -1, new String[0]);
        return read & Constants.ERR_WATERMARKR_INFO;
    }

    /* renamed from: i */
    public static int m8751i(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read();
        if (read == -1) {
            return read;
        }
        int i = 0;
        while ((read & 128) != 0) {
            i = (i << 7) | (read & Constants.ERR_WATERMARKR_INFO);
            int read2 = byteArrayInputStream.read();
            read = read2;
            if (read2 == -1) {
                return read2;
            }
        }
        return (i << 7) | (read & Constants.ERR_WATERMARKR_INFO);
    }

    /* renamed from: j */
    public static int m8750j(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read();
        AssertionUtil.AlwaysFatal.isTrue(-1 != read, new String[0]);
        int i = read & 255;
        if (i <= 30) {
            return i;
        }
        if (i != 31) {
            throw new RuntimeException("Value length > LENGTH_QUOTE!");
        }
        return m8751i(byteArrayInputStream);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m8749k(java.io.ByteArrayInputStream r3, int r4) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1436b.p1437a.p1438b.C22123n.m8749k(java.io.ByteArrayInputStream, int):byte[]");
    }

    /* renamed from: l */
    public static int m8748l(ByteArrayInputStream byteArrayInputStream, int i) {
        int read = byteArrayInputStream.read(new byte[i], 0, i);
        int i2 = read;
        if (read < i) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x050b, code lost:
        if (r0.m8767c(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_CDN_ERROR) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0543, code lost:
        if (r0.m8767c(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_CDN_ERROR) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x057f, code lost:
        if (r0.m8767c(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_CDN_ERROR) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x058d, code lost:
        if (r0.m8764f(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05ad, code lost:
        if ((-1) == r0.m8766d(133)) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x05c9, code lost:
        if (r0.m8764f(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0617, code lost:
        if (r0.m8764f(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0633, code lost:
        if (r0.m8764f(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x065d, code lost:
        if (r0.m8764f(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT) == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0663, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0018, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0671 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x045e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0460  */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1432d.p1436b.p1437a.p1438b.C22111f m8758b() {
        /*
            Method dump skipped, instructions count: 2055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1436b.p1437a.p1438b.C22123n.m8758b():e.d.b.a.b.f");
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x02aa, code lost:
        r16 = r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1432d.p1436b.p1437a.p1438b.C22115j m8753g(java.io.ByteArrayInputStream r7) {
        /*
            Method dump skipped, instructions count: 1597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1436b.p1437a.p1438b.C22123n.m8753g(java.io.ByteArrayInputStream):e.d.b.a.b.j");
    }
}
