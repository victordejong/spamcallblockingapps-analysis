package p065f.p066a.p068b.p069a.p070r;
/* renamed from: f.a.b.a.r.b */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/b.class */
public class C4268b {

    /* renamed from: a */
    public static byte[] f10331a = new byte[255];

    static {
        for (int i = 0; i < 255; i++) {
            f10331a[i] = (byte) (-1);
        }
        for (int i2 = 90; i2 >= 65; i2--) {
            f10331a[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 122; i3 >= 97; i3--) {
            f10331a[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 57; i4 >= 48; i4--) {
            f10331a[i4] = (byte) ((i4 - 48) + 52);
        }
        byte[] bArr = f10331a;
        bArr[43] = (byte) 62;
        bArr[47] = (byte) 63;
    }

    /* renamed from: a */
    public static boolean m29162a(byte b) {
        return b == 61 || f10331a[b] != -1;
    }

    /* renamed from: a */
    public static byte[] m29161a(byte[] bArr) {
        byte[] b = m29160b(bArr);
        if (b.length == 0) {
            return new byte[0];
        }
        int length = b.length / 4;
        int length2 = b.length;
        while (b[length2 - 1] == 61) {
            int i = length2 - 1;
            length2 = i;
            if (i == 0) {
                return new byte[0];
            }
        }
        byte[] bArr2 = new byte[length2 - length];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 * 4;
            byte b2 = b[i4 + 2];
            byte b3 = b[i4 + 3];
            byte[] bArr3 = f10331a;
            byte b4 = bArr3[b[i4]];
            byte b5 = bArr3[b[i4 + 1]];
            if (b2 != 61 && b3 != 61) {
                byte b6 = bArr3[b2];
                byte b7 = bArr3[b3];
                bArr2[i2] = (byte) ((b4 << 2) | (b5 >> 4));
                bArr2[i2 + 1] = (byte) (((b5 & 15) << 4) | ((b6 >> 2) & 15));
                bArr2[i2 + 2] = (byte) ((b6 << 6) | b7);
            } else if (b2 == 61) {
                bArr2[i2] = (byte) ((b5 >> 4) | (b4 << 2));
            } else if (b3 == 61) {
                byte b8 = f10331a[b2];
                bArr2[i2] = (byte) ((b4 << 2) | (b5 >> 4));
                bArr2[i2 + 1] = (byte) (((b5 & 15) << 4) | ((b8 >> 2) & 15));
            }
            i2 += 3;
        }
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m29160b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i = i;
            if (m29162a(bArr[i2])) {
                bArr2[i] = bArr[i2];
                i++;
            }
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr2, 0, bArr3, 0, i);
        return bArr3;
    }
}
