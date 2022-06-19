package com.callapp.repackaged.org.apache.commons.codec.binary;

import com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/Base64.class */
public class Base64 extends BaseNCodec {

    /* renamed from: a */
    static final byte[] f29703a = {13, 10};

    /* renamed from: e */
    private static final byte[] f29704e = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: f */
    private static final byte[] f29705f = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: g */
    private static final byte[] f29706g = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: h */
    private final byte[] f29707h;

    /* renamed from: i */
    private final byte[] f29708i;

    /* renamed from: j */
    private final byte[] f29709j;

    /* renamed from: k */
    private final int f29710k;

    /* renamed from: l */
    private final int f29711l;

    public Base64() {
        this(0);
    }

    public Base64(int i) {
        this(i, f29703a);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base64(int i, byte[] bArr, boolean z) {
        super(3, 4, i, bArr == null ? 0 : bArr.length);
        this.f29708i = f29706g;
        if (bArr == null) {
            this.f29711l = 4;
            this.f29709j = null;
        } else if (m26000b(bArr)) {
            String m25994b = StringUtils.m25994b(bArr);
            throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + m25994b + "]");
        } else if (i > 0) {
            this.f29711l = bArr.length + 4;
            byte[] bArr2 = new byte[bArr.length];
            this.f29709j = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            this.f29711l = 4;
            this.f29709j = null;
        }
        this.f29710k = this.f29711l - 1;
        this.f29707h = z ? f29705f : f29704e;
    }

    public Base64(boolean z) {
        this(76, f29703a, z);
    }

    /* renamed from: a */
    public static String m26005a(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (bArr != null) {
            if (bArr.length == 0) {
                bArr2 = bArr;
            } else {
                Base64 base64 = new Base64(0, f29703a, true);
                long c = base64.m25998c(bArr);
                if (c > 2147483647L) {
                    throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + c + ") than the specified maximum size of 2147483647");
                }
                bArr2 = bArr;
                if (bArr != null) {
                    if (bArr.length == 0) {
                        bArr2 = bArr;
                    } else {
                        int length = bArr.length;
                        bArr2 = bArr;
                        if (bArr != null) {
                            if (bArr.length == 0) {
                                bArr2 = bArr;
                            } else {
                                BaseNCodec.Context context = new BaseNCodec.Context();
                                base64.mo26002a(bArr, 0, length, context);
                                base64.mo26002a(bArr, 0, -1, context);
                                int i = context.f29721d - context.f29722e;
                                bArr2 = new byte[i];
                                BaseNCodec.m26001a(bArr2, i, context);
                            }
                        }
                    }
                }
            }
        }
        return StringUtils.m25996a(bArr2);
    }

    /* renamed from: a */
    public static byte[] m26006a(String str) {
        Base64 base64 = new Base64();
        byte[] m25997a = StringUtils.m25997a(str);
        if (m25997a == null || m25997a.length == 0) {
            return m25997a;
        }
        BaseNCodec.Context context = new BaseNCodec.Context();
        base64.mo25999b(m25997a, 0, m25997a.length, context);
        base64.mo25999b(m25997a, 0, -1, context);
        int i = context.f29721d;
        byte[] bArr = new byte[i];
        BaseNCodec.m26001a(bArr, i, context);
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [int] */
    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: a */
    public final void mo26002a(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        if (context.f29723f) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2) {
                byte[] a = m26003a(this.f29711l, context);
                context.f29725h = (context.f29725h + 1) % 3;
                byte b = bArr[i];
                byte b2 = b;
                if (b < 0) {
                    b2 = b + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                context.f29718a = (context.f29718a << 8) + b2;
                if (context.f29725h == 0) {
                    int i4 = context.f29721d;
                    context.f29721d = i4 + 1;
                    a[i4] = this.f29707h[(context.f29718a >> 18) & 63];
                    int i5 = context.f29721d;
                    context.f29721d = i5 + 1;
                    a[i5] = this.f29707h[(context.f29718a >> 12) & 63];
                    int i6 = context.f29721d;
                    context.f29721d = i6 + 1;
                    a[i6] = this.f29707h[(context.f29718a >> 6) & 63];
                    int i7 = context.f29721d;
                    context.f29721d = i7 + 1;
                    a[i7] = this.f29707h[context.f29718a & 63];
                    context.f29724g += 4;
                    if (this.f29715d > 0 && this.f29715d <= context.f29724g) {
                        System.arraycopy(this.f29709j, 0, a, context.f29721d, this.f29709j.length);
                        context.f29721d += this.f29709j.length;
                        context.f29724g = 0;
                    }
                }
                i3++;
                i++;
            }
            return;
        }
        context.f29723f = true;
        if (context.f29725h == 0 && this.f29715d == 0) {
            return;
        }
        byte[] a2 = m26003a(this.f29711l, context);
        int i8 = context.f29721d;
        int i9 = context.f29725h;
        if (i9 != 0) {
            if (i9 == 1) {
                int i10 = context.f29721d;
                context.f29721d = i10 + 1;
                a2[i10] = this.f29707h[(context.f29718a >> 2) & 63];
                int i11 = context.f29721d;
                context.f29721d = i11 + 1;
                a2[i11] = this.f29707h[(context.f29718a << 4) & 63];
                if (this.f29707h == f29704e) {
                    int i12 = context.f29721d;
                    context.f29721d = i12 + 1;
                    a2[i12] = this.f29714c;
                    int i13 = context.f29721d;
                    context.f29721d = i13 + 1;
                    a2[i13] = this.f29714c;
                }
            } else if (i9 != 2) {
                throw new IllegalStateException("Impossible modulus " + context.f29725h);
            } else {
                int i14 = context.f29721d;
                context.f29721d = i14 + 1;
                a2[i14] = this.f29707h[(context.f29718a >> 10) & 63];
                int i15 = context.f29721d;
                context.f29721d = i15 + 1;
                a2[i15] = this.f29707h[(context.f29718a >> 4) & 63];
                int i16 = context.f29721d;
                context.f29721d = i16 + 1;
                a2[i16] = this.f29707h[(context.f29718a << 2) & 63];
                if (this.f29707h == f29704e) {
                    int i17 = context.f29721d;
                    context.f29721d = i17 + 1;
                    a2[i17] = this.f29714c;
                }
            }
        }
        context.f29724g += context.f29721d - i8;
        if (this.f29715d <= 0 || context.f29724g <= 0) {
            return;
        }
        System.arraycopy(this.f29709j, 0, a2, context.f29721d, this.f29709j.length);
        context.f29721d += this.f29709j.length;
    }

    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: a */
    protected final boolean mo26004a(byte b) {
        if (b >= 0) {
            byte[] bArr = this.f29708i;
            return b < bArr.length && bArr[b] != -1;
        }
        return false;
    }

    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: b */
    public final void mo25999b(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        byte b;
        if (context.f29723f) {
            return;
        }
        if (i2 < 0) {
            context.f29723f = true;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            byte[] a = m26003a(this.f29710k, context);
            byte b2 = bArr[i];
            if (b2 == this.f29714c) {
                context.f29723f = true;
                break;
            }
            if (b2 >= 0) {
                byte[] bArr2 = f29706g;
                if (b2 < bArr2.length && (b = bArr2[b2]) >= 0) {
                    context.f29725h = (context.f29725h + 1) % 4;
                    context.f29718a = (context.f29718a << 6) + b;
                    if (context.f29725h == 0) {
                        int i4 = context.f29721d;
                        context.f29721d = i4 + 1;
                        a[i4] = (byte) ((context.f29718a >> 16) & 255);
                        int i5 = context.f29721d;
                        context.f29721d = i5 + 1;
                        a[i5] = (byte) ((context.f29718a >> 8) & 255);
                        int i6 = context.f29721d;
                        context.f29721d = i6 + 1;
                        a[i6] = (byte) (context.f29718a & 255);
                    }
                }
            }
            i3++;
            i++;
        }
        if (!context.f29723f || context.f29725h == 0) {
            return;
        }
        byte[] a2 = m26003a(this.f29710k, context);
        int i7 = context.f29725h;
        if (i7 == 1) {
            return;
        }
        if (i7 == 2) {
            context.f29718a >>= 4;
            int i8 = context.f29721d;
            context.f29721d = i8 + 1;
            a2[i8] = (byte) (context.f29718a & 255);
        } else if (i7 != 3) {
            throw new IllegalStateException("Impossible modulus " + context.f29725h);
        } else {
            context.f29718a >>= 2;
            int i9 = context.f29721d;
            context.f29721d = i9 + 1;
            a2[i9] = (byte) ((context.f29718a >> 8) & 255);
            int i10 = context.f29721d;
            context.f29721d = i10 + 1;
            a2[i10] = (byte) (context.f29718a & 255);
        }
    }
}
