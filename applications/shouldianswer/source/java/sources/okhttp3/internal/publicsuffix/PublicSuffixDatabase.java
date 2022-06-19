package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.C1999c;
import okhttp3.internal.p095e.C2030f;
import p000a.AbstractC0008e;
import p000a.C0013j;
import p000a.C0015l;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {

    /* renamed from: a */
    private static final byte[] f5289a = {42};

    /* renamed from: b */
    private static final String[] f5290b = new String[0];

    /* renamed from: c */
    private static final String[] f5291c = {"*"};

    /* renamed from: d */
    private static final PublicSuffixDatabase f5292d = new PublicSuffixDatabase();

    /* renamed from: e */
    private final AtomicBoolean f5293e = new AtomicBoolean(false);

    /* renamed from: f */
    private final CountDownLatch f5294f = new CountDownLatch(1);

    /* renamed from: g */
    private byte[] f5295g;

    /* renamed from: h */
    private byte[] f5296h;

    /* renamed from: a */
    private static String m2041a(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                str = null;
                break;
            }
            int i7 = (i6 + length) / 2;
            while (i7 > -1 && bArr[i7] != 10) {
                i7--;
            }
            int i8 = i7 + 1;
            int i9 = 1;
            while (true) {
                i2 = i8 + i9;
                if (bArr[i2] == 10) {
                    break;
                }
                i9++;
            }
            int i10 = i2 - i8;
            int i11 = i;
            boolean z = false;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (z) {
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i11][i12] & 255;
                }
                i4 = i3 - (bArr[i8 + i13] & 255);
                if (i4 != 0) {
                    break;
                }
                int i14 = i13 + 1;
                int i15 = i12 + 1;
                if (i14 == i10) {
                    i12 = i15;
                    i13 = i14;
                    break;
                }
                i12 = i15;
                i13 = i14;
                if (bArr2[i11].length == i15) {
                    if (i11 == bArr2.length - 1) {
                        i13 = i14;
                        i12 = i15;
                        break;
                    }
                    i11++;
                    i12 = -1;
                    z = true;
                    i13 = i14;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i16 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i5 = length2;
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 = i5 + bArr2[i11].length;
                    }
                    if (i5 >= i16) {
                        if (i5 <= i16) {
                            str = new String(bArr, i8, i10, C1999c.f4986e);
                            break;
                        }
                    }
                }
                i6 = i2 + 1;
            }
            length = i8 - 1;
        }
        return str;
    }

    /* renamed from: a */
    public static PublicSuffixDatabase m2043a() {
        return f5292d;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [byte[], byte[][], java.lang.Object] */
    /* renamed from: a */
    private String[] m2040a(String[] strArr) {
        String str;
        String str2;
        String str3;
        if (this.f5293e.get() || !this.f5293e.compareAndSet(false, true)) {
            try {
                this.f5294f.await();
            } catch (InterruptedException e) {
            }
        } else {
            m2039b();
        }
        synchronized (this) {
            if (this.f5295g == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        ?? r0 = new byte[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            r0[i] = strArr[i].getBytes(C1999c.f4986e);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= r0.length) {
                str = null;
                break;
            }
            str = m2041a(this.f5295g, r0, i2);
            if (str != null) {
                break;
            }
            i2++;
        }
        if (r0.length > 1) {
            byte[][] bArr = (byte[][]) r0.clone();
            for (int i3 = 0; i3 < bArr.length - 1; i3++) {
                bArr[i3] = f5289a;
                str2 = m2041a(this.f5295g, bArr, i3);
                if (str2 != null) {
                    break;
                }
            }
        }
        str2 = null;
        if (str2 != null) {
            for (int i4 = 0; i4 < r0.length - 1; i4++) {
                str3 = m2041a(this.f5296h, r0, i4);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            return ("!" + str3).split("\\.");
        } else if (str == null && str2 == null) {
            return f5291c;
        } else {
            String[] split = str != null ? str.split("\\.") : f5290b;
            String[] split2 = str2 != null ? str2.split("\\.") : f5290b;
            if (split.length <= split2.length) {
                split = split2;
            }
            return split;
        }
    }

    /* renamed from: b */
    private void m2039b() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    m2038c();
                    break;
                } catch (InterruptedIOException e) {
                    z2 = true;
                } catch (IOException e2) {
                    C2030f.m2224c().mo2237a(5, "Failed to read public suffix list", e2);
                    if (!z) {
                        return;
                    }
                    Thread.currentThread().interrupt();
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: c */
    private void m2038c() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        AbstractC0008e m8098a = C0015l.m8098a(new C0013j(C0015l.m8097a(resourceAsStream)));
        try {
            byte[] bArr = new byte[m8098a.mo8063j()];
            m8098a.mo8074a(bArr);
            byte[] bArr2 = new byte[m8098a.mo8063j()];
            m8098a.mo8074a(bArr2);
            synchronized (this) {
                this.f5295g = bArr;
                this.f5296h = bArr2;
            }
            this.f5294f.countDown();
        } finally {
            C1999c.m2353a(m8098a);
        }
    }

    /* renamed from: a */
    public String m2042a(String str) {
        int i;
        int i2;
        if (str != null) {
            String[] split = IDN.toUnicode(str).split("\\.");
            String[] m2040a = m2040a(split);
            if (split.length == m2040a.length && m2040a[0].charAt(0) != '!') {
                return null;
            }
            if (m2040a[0].charAt(0) == '!') {
                i2 = split.length;
                i = m2040a.length;
            } else {
                i2 = split.length;
                i = m2040a.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int i3 = i2 - i; i3 < split2.length; i3++) {
                sb.append(split2[i3]);
                sb.append('.');
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        throw new NullPointerException("domain == null");
    }
}
