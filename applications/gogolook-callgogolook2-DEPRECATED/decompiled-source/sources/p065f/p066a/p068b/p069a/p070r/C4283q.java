package p065f.p066a.p068b.p069a.p070r;

import java.io.ByteArrayOutputStream;
/* renamed from: f.a.b.a.r.q */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/q.class */
public class C4283q {

    /* renamed from: a */
    public static byte f10357a = 61;

    /* renamed from: a */
    public static final byte[] m29095a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == f10357a) {
                int i2 = i + 1;
                if ('\r' == ((char) bArr[i2])) {
                    i += 2;
                    if ('\n' == ((char) bArr[i])) {
                        continue;
                    }
                }
                try {
                    int digit = Character.digit((char) bArr[i2], 16);
                    i = i2 + 1;
                    int digit2 = Character.digit((char) bArr[i], 16);
                    if (digit == -1 || digit2 == -1) {
                        return null;
                    }
                    byteArrayOutputStream.write((char) ((digit << 4) + digit2));
                } catch (ArrayIndexOutOfBoundsException e) {
                    return null;
                }
            } else {
                byteArrayOutputStream.write(b);
            }
            i++;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
