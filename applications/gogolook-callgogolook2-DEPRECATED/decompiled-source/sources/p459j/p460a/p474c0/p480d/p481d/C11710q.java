package p459j.p460a.p474c0.p480d.p481d;

import java.io.ByteArrayOutputStream;
/* renamed from: j.a.c0.d.d.q */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/q.class */
public class C11710q {

    /* renamed from: a */
    public static byte f26283a = 61;

    /* renamed from: a */
    public static final byte[] m8455a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == f26283a) {
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
