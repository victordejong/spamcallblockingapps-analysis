package p131c.p135b.p136a.p148e.p153y;

import android.text.TextUtils;
import android.util.Base64;
import com.android.volley.Request;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: c.b.a.e.y.m */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/m.class */
public class C2420m {
    /* renamed from: a */
    public static String m29872a(String str, String str2) {
        return m29869a(str, str2, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    /* renamed from: a */
    public static String m29871a(String str, String str2, long j) {
        return m29870a(str, str2, j, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    /* renamed from: a */
    public static String m29870a(String str, String str2, long j, byte[] bArr) {
        if (str2 == null) {
            throw new IllegalArgumentException("No SDK key specified");
        } else if (str2.length() < 80) {
            throw new IllegalArgumentException("SDK key is too short");
        } else if (bArr == null) {
            throw new IllegalArgumentException("No salt specified");
        } else if (bArr.length >= 32) {
            String str3 = str;
            if (str != null) {
                if (str.isEmpty()) {
                    str3 = str;
                } else {
                    try {
                        String substring = str2.substring(32);
                        String substring2 = str2.substring(0, 32);
                        byte[] bytes = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
                        byte[] a = m29868a(substring2, bArr);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byteArrayOutputStream.write(((byte) ((j >> 0) & 255)) ^ a[0]);
                        byteArrayOutputStream.write(((byte) ((j >> 8) & 255)) ^ a[1]);
                        byteArrayOutputStream.write(((byte) ((j >> 16) & 255)) ^ a[2]);
                        byteArrayOutputStream.write(((byte) ((j >> 24) & 255)) ^ a[3]);
                        byteArrayOutputStream.write(((byte) ((j >> 32) & 255)) ^ a[4]);
                        byteArrayOutputStream.write(((byte) ((j >> 40) & 255)) ^ a[5]);
                        byteArrayOutputStream.write(((byte) ((j >> 48) & 255)) ^ a[6]);
                        byteArrayOutputStream.write(((byte) ((j >> 56) & 255)) ^ a[7]);
                        for (int i = 0; i < bytes.length; i += 8) {
                            long j2 = j + i;
                            long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                            long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                            long j5 = j4 ^ (j4 >> 32);
                            int i2 = i + 0;
                            byteArrayOutputStream.write((byte) (((i2 >= bytes.length ? (byte) 0 : bytes[i2]) ^ a[i2 % a.length]) ^ ((j5 >> 0) & 255)));
                            int i3 = i + 1;
                            byteArrayOutputStream.write((byte) ((a[i3 % a.length] ^ (i3 >= bytes.length ? (byte) 0 : bytes[i3])) ^ ((j5 >> 8) & 255)));
                            int i4 = i + 2;
                            byteArrayOutputStream.write((byte) ((a[i4 % a.length] ^ (i4 >= bytes.length ? (byte) 0 : bytes[i4])) ^ ((j5 >> 16) & 255)));
                            int i5 = i + 3;
                            byteArrayOutputStream.write((byte) ((a[i5 % a.length] ^ (i5 >= bytes.length ? (byte) 0 : bytes[i5])) ^ ((j5 >> 24) & 255)));
                            int i6 = i + 4;
                            byteArrayOutputStream.write((byte) ((a[i6 % a.length] ^ (i6 >= bytes.length ? (byte) 0 : bytes[i6])) ^ ((j5 >> 32) & 255)));
                            int i7 = i + 5;
                            byteArrayOutputStream.write((byte) ((a[i7 % a.length] ^ (i7 >= bytes.length ? (byte) 0 : bytes[i7])) ^ ((j5 >> 40) & 255)));
                            int i8 = i + 6;
                            byteArrayOutputStream.write((byte) ((a[i8 % a.length] ^ (i8 >= bytes.length ? (byte) 0 : bytes[i8])) ^ ((j5 >> 48) & 255)));
                            int i9 = i + 7;
                            byteArrayOutputStream.write((byte) ((a[i9 % a.length] ^ (i9 >= bytes.length ? (byte) 0 : bytes[i9])) ^ ((j5 >> 56) & 255)));
                        }
                        String b = m29865b(byteArrayOutputStream.toByteArray());
                        String a2 = m29867a(bArr);
                        return "1:" + a2 + ":" + substring + ":" + b;
                    } catch (IOException e) {
                        str3 = null;
                    }
                }
            }
            return str3;
        } else {
            throw new IllegalArgumentException("Salt is too short");
        }
    }

    /* renamed from: a */
    public static String m29869a(String str, String str2, byte[] bArr) {
        if (str2 == null) {
            throw new IllegalArgumentException("No SDK key specified");
        } else if (str2.length() < 80) {
            throw new IllegalArgumentException("SDK key is too short");
        } else if (bArr == null) {
            throw new IllegalArgumentException("No salt specified");
        } else if (bArr.length >= 32) {
            if (!TextUtils.isEmpty(str) && !str.trim().startsWith("{")) {
                String[] split = str.split(":");
                try {
                    if (!"1".equals(split[0]) || split.length != 4) {
                        return null;
                    }
                    String str3 = split[1];
                    String str4 = split[2];
                    byte[] a = m29873a(split[3]);
                    if (!str2.endsWith(str4) || !m29867a(bArr).equals(str3)) {
                        return null;
                    }
                    byte[] a2 = m29868a(str2.substring(0, 32), bArr);
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a);
                    try {
                        long read = (((byteArrayInputStream.read() ^ a2[5]) & 255) << 40) | (((byteArrayInputStream.read() ^ a2[0]) & 255) << 0) | (((byteArrayInputStream.read() ^ a2[1]) & 255) << 8) | (((byteArrayInputStream.read() ^ a2[2]) & 255) << 16) | (((byteArrayInputStream.read() ^ a2[3]) & 255) << 24) | (((byteArrayInputStream.read() ^ a2[4]) & 255) << 32) | (((byteArrayInputStream.read() ^ a2[6]) & 255) << 48) | (((byteArrayInputStream.read() ^ a2[7]) & 255) << 56);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr2 = new byte[8];
                        int read2 = byteArrayInputStream.read(bArr2);
                        int i = 0;
                        while (read2 >= 0) {
                            long j = i + read;
                            long j2 = (j ^ (j >> 33)) * (-4417276706812531889L);
                            long j3 = (j2 ^ (j2 >> 29)) * (-8796714831421723037L);
                            long j4 = j3 ^ (j3 >> 32);
                            byteArrayOutputStream.write((byte) ((bArr2[0] ^ a2[(i + 0) % a2.length]) ^ ((j4 >> 0) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[1] ^ a2[(i + 1) % a2.length]) ^ ((j4 >> 8) & 255)));
                            byteArrayOutputStream.write((byte) ((a2[(i + 2) % a2.length] ^ bArr2[2]) ^ ((j4 >> 16) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[3] ^ a2[(i + 3) % a2.length]) ^ ((j4 >> 24) & 255)));
                            byteArrayOutputStream.write((byte) ((a2[(i + 4) % a2.length] ^ bArr2[4]) ^ ((j4 >> 32) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[5] ^ a2[(i + 5) % a2.length]) ^ ((j4 >> 40) & 255)));
                            byteArrayOutputStream.write((byte) ((a2[(i + 6) % a2.length] ^ bArr2[6]) ^ ((j4 >> 48) & 255)));
                            byteArrayOutputStream.write((byte) ((a2[(i + 7) % a2.length] ^ bArr2[7]) ^ ((j4 >> 56) & 255)));
                            read2 = byteArrayInputStream.read(bArr2);
                            i += 8;
                        }
                        return new String(byteArrayOutputStream.toByteArray(), Request.DEFAULT_PARAMS_ENCODING).trim();
                    } catch (IOException e) {
                        return null;
                    }
                } catch (IOException e2) {
                    return null;
                }
            }
            return str;
        } else {
            throw new IllegalArgumentException("Salt is too short");
        }
    }

    /* renamed from: a */
    public static String m29867a(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(bArr);
            return C2422o.m29852a(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("SHA-1 algorithm not found", e);
        }
    }

    /* renamed from: a */
    public static byte[] m29873a(String str) {
        return Base64.decode(m29866b(str), 0);
    }

    /* renamed from: a */
    public static byte[] m29868a(String str, byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(bArr);
            instance.update(str.getBytes(Request.DEFAULT_PARAMS_ENCODING));
            return instance.digest();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding not found", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("SHA-1 algorithm not found", e2);
        }
    }

    /* renamed from: b */
    public static String m29866b(String str) {
        return str.replace('-', '+').replace('_', '/').replace('*', '=');
    }

    /* renamed from: b */
    public static String m29865b(byte[] bArr) throws UnsupportedEncodingException {
        return m29864c(Base64.encode(bArr, 2));
    }

    /* renamed from: c */
    public static String m29864c(byte[] bArr) throws UnsupportedEncodingException {
        return new String(bArr, Request.DEFAULT_PARAMS_ENCODING).replace('+', '-').replace('/', '_').replace('=', '*');
    }
}
