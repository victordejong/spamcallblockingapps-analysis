package p459j.p460a.p474c0.p480d.p481d;
/* renamed from: j.a.c0.d.d.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/b.class */
public class C11691b {

    /* renamed from: a */
    public static byte[] f26224a = new byte[255];

    static {
        for (int i = 0; i < 255; i++) {
            f26224a[i] = (byte) (-1);
        }
        for (int i2 = 90; i2 >= 65; i2--) {
            f26224a[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 122; i3 >= 97; i3--) {
            f26224a[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 57; i4 >= 48; i4--) {
            f26224a[i4] = (byte) ((i4 - 48) + 52);
        }
        byte[] bArr = f26224a;
        bArr[43] = (byte) 62;
        bArr[47] = (byte) 63;
    }

    /* renamed from: a */
    public static boolean m8596a(byte b) {
        return b == 61 || f26224a[b] != -1;
    }

    /* renamed from: a */
    public static byte[] m8595a(byte[] bArr) {
        byte[] b = m8594b(bArr);
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
            byte[] bArr3 = f26224a;
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
                byte b8 = f26224a[b2];
                bArr2[i2] = (byte) ((b4 << 2) | (b5 >> 4));
                bArr2[i2 + 1] = (byte) (((b5 & 15) << 4) | ((b8 >> 2) & 15));
            }
            i2 += 3;
        }
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m8594b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i = i;
            if (m8596a(bArr[i2])) {
                bArr2[i] = bArr[i2];
                i++;
            }
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr2, 0, bArr3, 0, i);
        return bArr3;
    }
}
