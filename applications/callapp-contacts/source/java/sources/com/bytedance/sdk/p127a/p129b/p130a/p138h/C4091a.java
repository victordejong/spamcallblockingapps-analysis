package com.bytedance.sdk.p127a.p129b.p130a.p138h;

import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.C3977j;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
/* renamed from: com.bytedance.sdk.a.b.a.h.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/h/a.class */
public final class C4091a {

    /* renamed from: a */
    private static final byte[] f14858a = {42};

    /* renamed from: b */
    private static final String[] f14859b = new String[0];

    /* renamed from: c */
    private static final String[] f14860c = {"*"};

    /* renamed from: d */
    private static final C4091a f14861d = new C4091a();

    /* renamed from: e */
    private final AtomicBoolean f14862e = new AtomicBoolean(false);

    /* renamed from: f */
    private final CountDownLatch f14863f = new CountDownLatch(1);

    /* renamed from: g */
    private byte[] f14864g;

    /* renamed from: h */
    private byte[] f14865h;

    /* renamed from: a */
    public static C4091a m36638a() {
        return f14861d;
    }

    /* renamed from: a */
    private static String m36636a(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int length = bArr.length;
        int i8 = 0;
        while (true) {
            if (i8 >= length) {
                str = null;
                break;
            }
            int i9 = (i8 + length) / 2;
            while (i9 >= 0 && bArr[i9] != 10) {
                i9--;
            }
            int i10 = i9 + 1;
            int i11 = 1;
            while (true) {
                i2 = i10 + i11;
                if (bArr[i2] == 10) {
                    break;
                }
                i11++;
            }
            int i12 = i2 - i10;
            int i13 = i;
            boolean z = false;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                if (z) {
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i13][i14] & 255;
                }
                i4 = i3 - (bArr[i10 + i15] & 255);
                i5 = i14;
                i6 = i15;
                if (i4 != 0) {
                    break;
                }
                i15++;
                i14++;
                i5 = i14;
                i6 = i15;
                if (i15 == i12) {
                    break;
                } else if (bArr2[i13].length == i14) {
                    i5 = i14;
                    i6 = i15;
                    if (i13 == bArr2.length - 1) {
                        break;
                    }
                    i13++;
                    z = true;
                    i14 = -1;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i16 = i12 - i6;
                    int length2 = bArr2[i13].length - i5;
                    while (true) {
                        i7 = length2;
                        i13++;
                        if (i13 >= bArr2.length) {
                            break;
                        }
                        length2 = i7 + bArr2[i13].length;
                    }
                    if (i7 >= i16) {
                        if (i7 <= i16) {
                            str = new String(bArr, i10, i12, C4015c.f14578e);
                            break;
                        }
                    }
                }
                i8 = i2 + 1;
            }
            length = i10 - 1;
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [byte[], byte[][], java.lang.Object] */
    /* renamed from: a */
    private String[] m36635a(String[] strArr) {
        String str;
        String str2;
        if (this.f14862e.get() || !this.f14862e.compareAndSet(false, true)) {
            try {
                this.f14863f.await();
            } catch (InterruptedException e) {
            }
        } else {
            m36634b();
        }
        synchronized (this) {
            if (this.f14864g == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        ?? r0 = new byte[length];
        for (int i = 0; i < strArr.length; i++) {
            r0[i] = strArr[i].getBytes(C4015c.f14578e);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            str = m36636a(this.f14864g, r0, i2);
            if (str != null) {
                break;
            }
            i2++;
        }
        if (length > 1) {
            byte[][] bArr = (byte[][]) r0.clone();
            for (int i3 = 0; i3 < bArr.length - 1; i3++) {
                bArr[i3] = f14858a;
                str2 = m36636a(this.f14864g, bArr, i3);
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
                if (i4 >= length - 1) {
                    break;
                }
                str3 = m36636a(this.f14865h, r0, i4);
                if (str3 != null) {
                    break;
                }
                i4++;
            }
        }
        if (str3 != null) {
            return "!".concat(String.valueOf(str3)).split("\\.");
        }
        if (str == null && str2 == null) {
            return f14860c;
        }
        String[] split = str != null ? str.split("\\.") : f14859b;
        String[] split2 = str2 != null ? str2.split("\\.") : f14859b;
        return split.length > split2.length ? split : split2;
    }

    /* renamed from: b */
    private void m36634b() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    m36633c();
                    break;
                } catch (InterruptedIOException e) {
                    z2 = true;
                } catch (IOException e2) {
                    C4090e.m36643b().mo36651a(5, "Failed to read public suffix list", e2);
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
    private void m36633c() throws IOException {
        InputStream resourceAsStream = C4091a.class.getResourceAsStream(PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        AbstractC3972e m37085a = C3979l.m37085a(new C3977j(C3979l.m37084a(resourceAsStream)));
        try {
            byte[] bArr = new byte[m37085a.mo37051j()];
            m37085a.mo37062a(bArr);
            byte[] bArr2 = new byte[m37085a.mo37051j()];
            m37085a.mo37062a(bArr2);
            synchronized (this) {
                this.f14864g = bArr;
                this.f14865h = bArr2;
            }
            this.f14863f.countDown();
        } finally {
            C4015c.m36914a(m37085a);
        }
    }

    /* renamed from: a */
    public final String m36637a(String str) {
        int i;
        int i2;
        Objects.requireNonNull(str, "domain == null");
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] m36635a = m36635a(split);
        if (split.length != m36635a.length || m36635a[0].charAt(0) == '!') {
            if (m36635a[0].charAt(0) == '!') {
                i2 = split.length;
                i = m36635a.length;
            } else {
                i2 = split.length;
                i = m36635a.length + 1;
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
        return null;
    }
}
