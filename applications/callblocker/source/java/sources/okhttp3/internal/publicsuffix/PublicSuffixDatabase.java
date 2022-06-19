package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.C5449c;
import okhttp3.internal.p196e.C5480f;
import p000a.AbstractC0007e;
import p000a.C0012j;
import p000a.C0014l;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {

    /* renamed from: a */
    private static final byte[] f23063a = {42};

    /* renamed from: b */
    private static final String[] f23064b = new String[0];

    /* renamed from: c */
    private static final String[] f23065c = {"*"};

    /* renamed from: d */
    private static final PublicSuffixDatabase f23066d = new PublicSuffixDatabase();

    /* renamed from: e */
    private final AtomicBoolean f23067e = new AtomicBoolean(false);

    /* renamed from: f */
    private final CountDownLatch f23068f = new CountDownLatch(1);

    /* renamed from: g */
    private byte[] f23069g;

    /* renamed from: h */
    private byte[] f23070h;

    /* renamed from: a */
    private static String m359a(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        int length = bArr.length;
        while (true) {
            if (i7 >= length) {
                str = null;
                break;
            }
            int i8 = (i7 + length) / 2;
            while (i8 > -1 && bArr[i8] != 10) {
                i8--;
            }
            int i9 = i8 + 1;
            int i10 = 1;
            while (bArr[i9 + i10] != 10) {
                i10++;
            }
            int i11 = (i9 + i10) - i9;
            int i12 = 0;
            int i13 = 0;
            boolean z = false;
            int i14 = i;
            while (true) {
                i2 = i14;
                if (z) {
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i2][i12] & 255;
                }
                i4 = i3 - (bArr[i9 + i13] & 255);
                if (i4 != 0) {
                    i5 = i12;
                    i6 = i13;
                    break;
                }
                i13++;
                i5 = i12 + 1;
                if (i13 == i11) {
                    i6 = i13;
                    break;
                }
                i12 = i5;
                int i15 = i2;
                if (bArr2[i2].length == i5) {
                    if (i2 == bArr2.length - 1) {
                        i6 = i13;
                        break;
                    }
                    i15 = i2 + 1;
                    i12 = -1;
                    z = true;
                }
                i14 = i15;
            }
            if (i4 < 0) {
                length = i9 - 1;
            } else if (i4 <= 0) {
                int i16 = i11 - i6;
                int length2 = bArr2[i2].length - i5;
                for (int i17 = i2 + 1; i17 < bArr2.length; i17++) {
                    length2 += bArr2[i17].length;
                }
                if (length2 >= i16) {
                    if (length2 <= i16) {
                        str = new String(bArr, i9, i11, C5449c.f22760e);
                        break;
                    }
                    i7 = i10 + i9 + 1;
                } else {
                    length = i9 - 1;
                }
            } else {
                i7 = i10 + i9 + 1;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static PublicSuffixDatabase m361a() {
        return f23066d;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [byte[], byte[][], java.lang.Object] */
    /* renamed from: a */
    private String[] m358a(String[] strArr) {
        String str;
        String str2;
        String[] strArr2;
        if (this.f23067e.get() || !this.f23067e.compareAndSet(false, true)) {
            try {
                this.f23068f.await();
            } catch (InterruptedException e) {
            }
        } else {
            m357b();
        }
        synchronized (this) {
            if (this.f23069g == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        ?? r0 = new byte[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            r0[i] = strArr[i].getBytes(C5449c.f22760e);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= r0.length) {
                str = null;
                break;
            }
            str = m359a(this.f23069g, r0, i2);
            if (str != null) {
                break;
            }
            i2++;
        }
        if (r0.length > 1) {
            byte[][] bArr = (byte[][]) r0.clone();
            for (int i3 = 0; i3 < bArr.length - 1; i3++) {
                bArr[i3] = f23063a;
                str2 = m359a(this.f23069g, bArr, i3);
                if (str2 != null) {
                    break;
                }
            }
        }
        str2 = null;
        String str3 = null;
        if (str2 != null) {
            int i4 = 0;
            while (true) {
                str3 = null;
                if (i4 >= r0.length - 1) {
                    break;
                }
                str3 = m359a(this.f23070h, r0, i4);
                if (str3 != null) {
                    break;
                }
                i4++;
            }
        }
        if (str3 != null) {
            strArr2 = ("!" + str3).split("\\.");
        } else if (str == null && str2 == null) {
            strArr2 = f23065c;
        } else {
            String[] split = str != null ? str.split("\\.") : f23064b;
            String[] split2 = str2 != null ? str2.split("\\.") : f23064b;
            strArr2 = split2;
            if (split.length > split2.length) {
                strArr2 = split;
            }
        }
        return strArr2;
    }

    /* renamed from: b */
    private void m357b() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    m356c();
                    break;
                } catch (InterruptedIOException e) {
                    z2 = true;
                } catch (IOException e2) {
                    C5480f.m541c().mo554a(5, "Failed to read public suffix list", e2);
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
    private void m356c() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        AbstractC0007e m22522a = C0014l.m22522a(new C0012j(C0014l.m22521a(resourceAsStream)));
        try {
            byte[] bArr = new byte[m22522a.mo22487i()];
            m22522a.mo22497a(bArr);
            byte[] bArr2 = new byte[m22522a.mo22487i()];
            m22522a.mo22497a(bArr2);
            synchronized (this) {
                this.f23069g = bArr;
                this.f23070h = bArr2;
            }
            this.f23068f.countDown();
        } finally {
            C5449c.m673a(m22522a);
        }
    }

    /* renamed from: a */
    public String m360a(String str) {
        String sb;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] m358a = m358a(split);
        if (split.length != m358a.length || m358a[0].charAt(0) == '!') {
            StringBuilder sb2 = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int length = m358a[0].charAt(0) == '!' ? split.length - m358a.length : split.length - (m358a.length + 1); length < split2.length; length++) {
                sb2.append(split2[length]).append('.');
            }
            sb2.deleteCharAt(sb2.length() - 1);
            sb = sb2.toString();
        } else {
            sb = null;
        }
        return sb;
    }
}
