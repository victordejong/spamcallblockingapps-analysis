package com.callapp.repackaged.org.apache.commons.codec.binary;

import com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/Base64.class */
public class Base64 extends BaseNCodec {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f17118a = {13, 10};
    private static final byte[] e = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] f = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] g = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};
    private final byte[] h;
    private final byte[] i;
    private final byte[] j;
    private final int k;
    private final int l;

    public Base64() {
        this(0);
    }

    public Base64(int i) {
        this(i, f17118a);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base64(int i, byte[] bArr, boolean z) {
        super(3, 4, i, bArr == null ? 0 : bArr.length);
        this.i = g;
        if (bArr == null) {
            this.l = 4;
            this.j = null;
        } else if (b(bArr)) {
            String b2 = StringUtils.b(bArr);
            throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + b2 + "]");
        } else if (i > 0) {
            this.l = bArr.length + 4;
            byte[] bArr2 = new byte[bArr.length];
            this.j = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            this.l = 4;
            this.j = null;
        }
        this.k = this.l - 1;
        this.h = z ? f : e;
    }

    public Base64(boolean z) {
        this(76, f17118a, z);
    }

    public static String a(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (bArr != null) {
            if (bArr.length == 0) {
                bArr2 = bArr;
            } else {
                Base64 base64 = new Base64(0, f17118a, true);
                long c2 = base64.c(bArr);
                if (c2 <= 2147483647L) {
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
                                    base64.a(bArr, 0, length, context);
                                    base64.a(bArr, 0, -1, context);
                                    int i = context.f17126d - context.e;
                                    bArr2 = new byte[i];
                                    BaseNCodec.a(bArr2, i, context);
                                }
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + c2 + ") than the specified maximum size of 2147483647");
                }
            }
        }
        return StringUtils.a(bArr2);
    }

    public static byte[] a(String str) {
        Base64 base64 = new Base64();
        byte[] a2 = StringUtils.a(str);
        if (a2 == null || a2.length == 0) {
            return a2;
        }
        BaseNCodec.Context context = new BaseNCodec.Context();
        base64.b(a2, 0, a2.length, context);
        base64.b(a2, 0, -1, context);
        int i = context.f17126d;
        byte[] bArr = new byte[i];
        BaseNCodec.a(bArr, i, context);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    public final void a(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        if (!context.f) {
            if (i2 < 0) {
                context.f = true;
                if (context.h != 0 || this.f17122d != 0) {
                    byte[] a2 = a(this.l, context);
                    int i3 = context.f17126d;
                    int i4 = context.h;
                    if (i4 != 0) {
                        if (i4 == 1) {
                            int i5 = context.f17126d;
                            context.f17126d = i5 + 1;
                            a2[i5] = this.h[(context.f17123a >> 2) & 63];
                            int i6 = context.f17126d;
                            context.f17126d = i6 + 1;
                            a2[i6] = this.h[(context.f17123a << 4) & 63];
                            if (this.h == e) {
                                int i7 = context.f17126d;
                                context.f17126d = i7 + 1;
                                a2[i7] = this.f17121c;
                                int i8 = context.f17126d;
                                context.f17126d = i8 + 1;
                                a2[i8] = this.f17121c;
                            }
                        } else if (i4 == 2) {
                            int i9 = context.f17126d;
                            context.f17126d = i9 + 1;
                            a2[i9] = this.h[(context.f17123a >> 10) & 63];
                            int i10 = context.f17126d;
                            context.f17126d = i10 + 1;
                            a2[i10] = this.h[(context.f17123a >> 4) & 63];
                            int i11 = context.f17126d;
                            context.f17126d = i11 + 1;
                            a2[i11] = this.h[(context.f17123a << 2) & 63];
                            if (this.h == e) {
                                int i12 = context.f17126d;
                                context.f17126d = i12 + 1;
                                a2[i12] = this.f17121c;
                            }
                        } else {
                            throw new IllegalStateException("Impossible modulus " + context.h);
                        }
                    }
                    context.g += context.f17126d - i3;
                    if (this.f17122d > 0 && context.g > 0) {
                        System.arraycopy(this.j, 0, a2, context.f17126d, this.j.length);
                        context.f17126d += this.j.length;
                        return;
                    }
                    return;
                }
                return;
            }
            int i13 = 0;
            while (i13 < i2) {
                byte[] a3 = a(this.l, context);
                context.h = (context.h + 1) % 3;
                byte b2 = bArr[i];
                int i14 = b2;
                if (b2 < 0) {
                    i14 = b2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                context.f17123a = (context.f17123a << 8) + i14;
                if (context.h == 0) {
                    int i15 = context.f17126d;
                    context.f17126d = i15 + 1;
                    a3[i15] = this.h[(context.f17123a >> 18) & 63];
                    int i16 = context.f17126d;
                    context.f17126d = i16 + 1;
                    a3[i16] = this.h[(context.f17123a >> 12) & 63];
                    int i17 = context.f17126d;
                    context.f17126d = i17 + 1;
                    a3[i17] = this.h[(context.f17123a >> 6) & 63];
                    int i18 = context.f17126d;
                    context.f17126d = i18 + 1;
                    a3[i18] = this.h[context.f17123a & 63];
                    context.g += 4;
                    if (this.f17122d > 0 && this.f17122d <= context.g) {
                        System.arraycopy(this.j, 0, a3, context.f17126d, this.j.length);
                        context.f17126d += this.j.length;
                        context.g = 0;
                    }
                }
                i13++;
                i++;
            }
        }
    }

    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    protected final boolean a(byte b2) {
        if (b2 < 0) {
            return false;
        }
        byte[] bArr = this.i;
        return b2 < bArr.length && bArr[b2] != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec
    public final void b(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        byte b2;
        if (!context.f) {
            if (i2 < 0) {
                context.f = true;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                byte[] a2 = a(this.k, context);
                byte b3 = bArr[i];
                if (b3 == this.f17121c) {
                    context.f = true;
                    break;
                }
                if (b3 >= 0) {
                    byte[] bArr2 = g;
                    if (b3 < bArr2.length && (b2 = bArr2[b3]) >= 0) {
                        context.h = (context.h + 1) % 4;
                        context.f17123a = (context.f17123a << 6) + b2;
                        if (context.h == 0) {
                            int i4 = context.f17126d;
                            context.f17126d = i4 + 1;
                            a2[i4] = (byte) ((context.f17123a >> 16) & 255);
                            int i5 = context.f17126d;
                            context.f17126d = i5 + 1;
                            a2[i5] = (byte) ((context.f17123a >> 8) & 255);
                            int i6 = context.f17126d;
                            context.f17126d = i6 + 1;
                            a2[i6] = (byte) (context.f17123a & 255);
                        }
                    }
                }
                i3++;
                i++;
            }
            if (context.f && context.h != 0) {
                byte[] a3 = a(this.k, context);
                int i7 = context.h;
                if (i7 == 1) {
                    return;
                }
                if (i7 == 2) {
                    context.f17123a >>= 4;
                    int i8 = context.f17126d;
                    context.f17126d = i8 + 1;
                    a3[i8] = (byte) (context.f17123a & 255);
                } else if (i7 == 3) {
                    context.f17123a >>= 2;
                    int i9 = context.f17126d;
                    context.f17126d = i9 + 1;
                    a3[i9] = (byte) ((context.f17123a >> 8) & 255);
                    int i10 = context.f17126d;
                    context.f17126d = i10 + 1;
                    a3[i10] = (byte) (context.f17123a & 255);
                } else {
                    throw new IllegalStateException("Impossible modulus " + context.h);
                }
            }
        }
    }
}
