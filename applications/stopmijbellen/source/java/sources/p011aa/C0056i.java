package p011aa;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import p007a6.C0033h;
/* renamed from: aa.i */
/* loaded from: classes2-dex2jar.jar:aa/i.class */
public class C0056i implements Serializable, Comparable<C0056i> {

    /* renamed from: d */
    public static final char[] f121d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: e */
    public static final C0056i f122e = m8834i(new byte[0]);

    /* renamed from: a */
    public final byte[] f123a;

    /* renamed from: b */
    public transient int f124b;

    /* renamed from: c */
    public transient String f125c;

    public C0056i(byte[] bArr) {
        this.f123a = bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x018c, code lost:
        r6 = null;
     */
    @javax.annotation.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p011aa.C0056i m8839b(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0056i.m8839b(java.lang.String):aa.i");
    }

    /* renamed from: c */
    public static C0056i m8838c(String str) {
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (m8837d(str.charAt(i2 + 1)) + (m8837d(str.charAt(i2)) << 4));
            }
            return m8834i(bArr);
        }
        throw new IllegalArgumentException(C1676a.m4789h("Unexpected hex string: ", str));
    }

    /* renamed from: d */
    public static int m8837d(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: f */
    public static C0056i m8835f(String str) {
        if (str != null) {
            C0056i c0056i = new C0056i(str.getBytes(C0047a0.f107a));
            c0056i.f125c = str;
            return c0056i;
        }
        throw new IllegalArgumentException("s == null");
    }

    /* renamed from: i */
    public static C0056i m8834i(byte... bArr) {
        if (bArr != null) {
            return new C0056i((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: a */
    public String mo8790a() {
        int i;
        byte[] bArr = this.f123a;
        byte[] bArr2 = C0051d.f116a;
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int i4 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[i3] & 255) >> 2];
            int i5 = i4 + 1;
            byte b = bArr[i3];
            bArr3[i4] = bArr2[((b & 3) << 4) | ((bArr[i] & 255) >> 4)];
            int i6 = i5 + 1;
            byte b2 = bArr[i3 + 1];
            int i7 = i3 + 2;
            bArr3[i5] = bArr2[((b2 & 15) << 2) | ((bArr[i7] & 255) >> 6)];
            i2 = i6 + 1;
            bArr3[i6] = bArr2[bArr[i7] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i8 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            int i9 = i8 + 1;
            bArr3[i8] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i9] = (byte) 61;
            bArr3[i9 + 1] = (byte) 61;
        } else if (length2 == 2) {
            int i10 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            int i11 = i10 + 1;
            int i12 = length + 1;
            bArr3[i10] = bArr2[((bArr[i12] & 255) >> 4) | ((bArr[length] & 3) << 4)];
            bArr3[i11] = bArr2[(bArr[i12] & 15) << 2];
            bArr3[i11 + 1] = (byte) 61;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004f, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r0 < r0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004c, code lost:
        if (r0 < r0) goto L10;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(p011aa.C0056i r4) {
        /*
            r3 = this;
            r0 = r4
            aa.i r0 = (p011aa.C0056i) r0
            r4 = r0
            r0 = r3
            int r0 = r0.mo8785l()
            r5 = r0
            r0 = r4
            int r0 = r0.mo8785l()
            r6 = r0
            r0 = r5
            r1 = r6
            int r0 = java.lang.Math.min(r0, r1)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L1c:
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L5b
            r0 = r3
            r1 = r9
            byte r0 = r0.mo8789g(r1)
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r10 = r0
            r0 = r4
            r1 = r9
            byte r0 = r0.mo8789g(r1)
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r11 = r0
            r0 = r10
            r1 = r11
            if (r0 != r1) goto L48
            int r9 = r9 + 1
            goto L1c
        L48:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L55
        L4f:
            r0 = -1
            r9 = r0
            goto L6f
        L55:
            r0 = 1
            r9 = r0
            goto L6f
        L5b:
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L67
            r0 = r8
            r9 = r0
            goto L6f
        L67:
            r0 = r5
            r1 = r6
            if (r0 >= r1) goto L55
            goto L4f
        L6f:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0056i.compareTo(java.lang.Object):int");
    }

    /* renamed from: e */
    public final C0056i m8836e(String str) {
        try {
            return m8834i(MessageDigest.getInstance(str).digest(this.f123a));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        if (r0.mo8786k(0, r0, 0, r0.length) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r7
            boolean r0 = r0 instanceof p011aa.C0056i
            if (r0 == 0) goto L36
            r0 = r7
            aa.i r0 = (p011aa.C0056i) r0
            r9 = r0
            r0 = r9
            int r0 = r0.mo8785l()
            r10 = r0
            r0 = r6
            byte[] r0 = r0.f123a
            r7 = r0
            r0 = r10
            r1 = r7
            int r1 = r1.length
            if (r0 != r1) goto L36
            r0 = r9
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r7
            int r4 = r4.length
            boolean r0 = r0.mo8786k(r1, r2, r3, r4)
            if (r0 == 0) goto L36
            goto L38
        L36:
            r0 = 0
            r8 = r0
        L38:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0056i.equals(java.lang.Object):boolean");
    }

    /* renamed from: g */
    public byte mo8789g(int i) {
        return this.f123a[i];
    }

    /* renamed from: h */
    public String mo8788h() {
        byte[] bArr = this.f123a;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f121d;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public int hashCode() {
        int i = this.f124b;
        if (i == 0) {
            i = Arrays.hashCode(this.f123a);
            this.f124b = i;
        }
        return i;
    }

    /* renamed from: j */
    public boolean mo8787j(int i, C0056i c0056i, int i2, int i3) {
        return c0056i.mo8786k(i2, this.f123a, i, i3);
    }

    /* renamed from: k */
    public boolean mo8786k(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.f123a;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C0047a0.m8869a(bArr2, i, bArr, i2, i3)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: l */
    public int mo8785l() {
        return this.f123a.length;
    }

    /* renamed from: m */
    public C0056i mo8784m(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f123a;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException(C0033h.m8885l(C0082b.m8752j("endIndex > length("), this.f123a.length, ")"));
            }
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            if (i == 0 && i2 == bArr.length) {
                return this;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, i3);
            return new C0056i(bArr2);
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    /* renamed from: n */
    public C0056i mo8783n() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f123a;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            bArr2[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new C0056i(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    /* renamed from: o */
    public String mo8782o() {
        String str = this.f125c;
        if (str == null) {
            str = new String(this.f123a, C0047a0.f107a);
            this.f125c = str;
        }
        return str;
    }

    /* renamed from: p */
    public void mo8781p(C0053f c0053f) {
        byte[] bArr = this.f123a;
        c0053f.m8856U(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
        r8 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0056i.toString():java.lang.String");
    }
}
