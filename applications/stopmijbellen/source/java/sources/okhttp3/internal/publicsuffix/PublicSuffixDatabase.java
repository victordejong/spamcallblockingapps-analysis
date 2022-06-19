package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import p011aa.C0060m;
import p011aa.C0062o;
import p011aa.C0069t;
import p214q9.C4171c;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {

    /* renamed from: e */
    public static final byte[] f12491e = {42};

    /* renamed from: f */
    public static final String[] f12492f = new String[0];

    /* renamed from: g */
    public static final String[] f12493g = {"*"};

    /* renamed from: h */
    public static final PublicSuffixDatabase f12494h = new PublicSuffixDatabase();

    /* renamed from: a */
    public final AtomicBoolean f12495a = new AtomicBoolean(false);

    /* renamed from: b */
    public final CountDownLatch f12496b = new CountDownLatch(1);

    /* renamed from: c */
    public byte[] f12497c;

    /* renamed from: d */
    public byte[] f12498d;

    /* renamed from: a */
    public static String m1582a(byte[] bArr, byte[][] bArr2, int i) {
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
                if (i4 == 0) {
                    i13++;
                    i12++;
                    if (i13 == i10) {
                        break;
                    } else if (bArr2[i11].length == i12) {
                        if (i11 == bArr2.length - 1) {
                            break;
                        }
                        i11++;
                        z = true;
                        i12 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i5 = length2;
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 = i5 + bArr2[i11].length;
                    }
                    if (i5 >= i14) {
                        if (i5 <= i14) {
                            str = new String(bArr, i8, i10, C4171c.f13147d);
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

    /* renamed from: b */
    public final void m1581b() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        C0069t c0069t = new C0069t(new C0060m(C0062o.m8825f(resourceAsStream)));
        try {
            byte[] bArr = new byte[c0069t.readInt()];
            c0069t.m8802l(bArr);
            byte[] bArr2 = new byte[c0069t.readInt()];
            c0069t.m8802l(bArr2);
            synchronized (this) {
                this.f12497c = bArr;
                this.f12498d = bArr2;
            }
            this.f12496b.countDown();
        } finally {
            C4171c.m1332d(c0069t);
        }
    }
}
