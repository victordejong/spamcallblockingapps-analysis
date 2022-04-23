package com.bytedance.sdk.a.b.a.h;

import com.bytedance.sdk.a.a.j;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.a.g.e;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/h/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f8050a = {42};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f8051b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f8052c = {"*"};

    /* renamed from: d  reason: collision with root package name */
    private static final a f8053d = new a();
    private final AtomicBoolean e = new AtomicBoolean(false);
    private final CountDownLatch f = new CountDownLatch(1);
    private byte[] g;
    private byte[] h;

    public static a a() {
        return f8053d;
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = bArr.length;
        int i7 = 0;
        while (true) {
            if (i7 >= length) {
                str = null;
                break;
            }
            int i8 = (i7 + length) / 2;
            while (i8 >= 0 && bArr[i8] != 10) {
                i8--;
            }
            int i9 = i8 + 1;
            int i10 = 1;
            while (true) {
                i2 = i9 + i10;
                if (bArr[i2] == 10) {
                    break;
                }
                i10++;
            }
            int i11 = i2 - i9;
            int i12 = i;
            boolean z = false;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                if (z) {
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i12][i13] & 255;
                }
                i4 = i3 - (bArr[i9 + i14] & 255);
                i5 = i13;
                i6 = i14;
                if (i4 != 0) {
                    break;
                }
                i14++;
                i13++;
                i5 = i13;
                i6 = i14;
                if (i14 == i11) {
                    break;
                } else if (bArr2[i12].length == i13) {
                    i5 = i13;
                    i6 = i14;
                    if (i12 == bArr2.length - 1) {
                        break;
                    }
                    i12++;
                    z = true;
                    i13 = -1;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i15 = i11 - i6;
                    int length2 = bArr2[i12].length - i5;
                    while (true) {
                        i12++;
                        if (i12 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i12].length;
                    }
                    if (length2 >= i15) {
                        if (length2 <= i15) {
                            str = new String(bArr, i9, i11, c.e);
                            break;
                        }
                    }
                }
                i7 = i2 + 1;
            }
            length = i9 - 1;
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [byte[], byte[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] a(java.lang.String[] r6) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.h.a.a(java.lang.String[]):java.lang.String[]");
    }

    private void b() {
        boolean z = false;
        while (true) {
            try {
                try {
                    c();
                    break;
                } catch (InterruptedIOException e) {
                    z = true;
                } catch (IOException e2) {
                    e.b().a(5, "Failed to read public suffix list", e2);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
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

    private void c() throws IOException {
        InputStream resourceAsStream = a.class.getResourceAsStream(PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream != null) {
            com.bytedance.sdk.a.a.e a2 = l.a(new j(l.a(resourceAsStream)));
            try {
                byte[] bArr = new byte[a2.j()];
                a2.a(bArr);
                byte[] bArr2 = new byte[a2.j()];
                a2.a(bArr2);
                synchronized (this) {
                    this.g = bArr;
                    this.h = bArr2;
                }
                this.f.countDown();
            } finally {
                c.a(a2);
            }
        }
    }

    public final String a(String str) {
        int i;
        int i2;
        Objects.requireNonNull(str, "domain == null");
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] a2 = a(split);
        if (split.length == a2.length && a2[0].charAt(0) != '!') {
            return null;
        }
        if (a2[0].charAt(0) == '!') {
            i2 = split.length;
            i = a2.length;
        } else {
            i2 = split.length;
            i = a2.length + 1;
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
}
