package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzenj;
/* renamed from: c.d.b.d.g.a.ea0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ea0.class */
public final class ea0 {

    /* renamed from: a */
    public static final fa0 f12811a;

    static {
        f12811a = (!(ba0.m27176a() && ba0.m27163b()) || s60.m26394a()) ? new ha0() : new ja0();
    }

    /* renamed from: a */
    public static int m27047a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m27046a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m27045a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static int m27044a(int i, byte[] bArr, int i2, int i3) {
        return f12811a.mo26785a(i, bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m27043a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new zzenj(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static int m27042a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f12811a.mo26784a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m27041a(byte[] bArr) {
        return f12811a.m26994a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m27040a(byte[] bArr, int i, int i2) {
        return f12811a.m26994a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m27036b(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m27047a(b);
        }
        if (i3 == 1) {
            return m27046a(b, bArr[i]);
        }
        if (i3 == 2) {
            return m27045a(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: c */
    public static String m27035c(byte[] bArr, int i, int i2) throws zzekj {
        return f12811a.mo26782b(bArr, i, i2);
    }
}
