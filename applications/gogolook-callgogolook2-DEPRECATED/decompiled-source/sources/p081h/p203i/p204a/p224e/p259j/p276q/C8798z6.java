package p081h.p203i.p204a.p224e.p259j.p276q;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import java.nio.ByteBuffer;
/* renamed from: h.i.a.e.j.q.z6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/z6.class */
public final class C8798z6 {

    /* renamed from: a */
    public static final AbstractC8562b7 f20159a;

    static {
        f20159a = (!(C8776x6.m17046b() && C8776x6.m17041c()) || C8709q2.m17240a()) ? new C8576c7() : new C8594e7();
    }

    /* renamed from: a */
    public static int m16934a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m16933a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m16932a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static int m16931a(CharSequence charSequence) {
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
                                throw new C8585d7(i4, length2);
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
        sb.append(i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static int m16929a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f20159a.mo17678a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static void m16930a(CharSequence charSequence, ByteBuffer byteBuffer) {
        AbstractC8562b7 b7Var = f20159a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(m16929a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            b7Var.mo17679a(charSequence, byteBuffer);
        } else {
            AbstractC8562b7.m17767b(charSequence, byteBuffer);
        }
    }

    /* renamed from: a */
    public static boolean m16928a(byte[] bArr) {
        return f20159a.m17768a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m16927a(byte[] bArr, int i, int i2) {
        return f20159a.m17768a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m16923b(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m16934a(b);
        }
        if (i3 == 1) {
            return m16933a(b, bArr[i]);
        }
        if (i3 == 2) {
            return m16932a(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: c */
    public static String m16922c(byte[] bArr, int i, int i2) throws C8647j4 {
        return f20159a.mo17676b(bArr, i, i2);
    }
}
