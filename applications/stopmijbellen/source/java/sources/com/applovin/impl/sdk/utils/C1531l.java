package com.applovin.impl.sdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.applovin.impl.sdk.utils.l */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/l.class */
public class C1531l {
    /* renamed from: a */
    public static String m4978a(String str, String str2) {
        return m4975a(str, str2, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    /* renamed from: a */
    public static String m4977a(String str, String str2, long j) {
        return m4976a(str, str2, j, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    /* renamed from: a */
    private static String m4976a(String str, String str2, long j, byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (str2 != null) {
            if (str2.length() < 80) {
                throw new IllegalArgumentException("SDK key is too short");
            }
            if (bArr == null) {
                throw new IllegalArgumentException("No salt specified");
            }
            if (bArr.length < 32) {
                throw new IllegalArgumentException("Salt is too short");
            }
            String str3 = str;
            if (str != null) {
                if (str.isEmpty()) {
                    str3 = str;
                } else {
                    try {
                        String substring = str2.substring(32);
                        String substring2 = str2.substring(0, 32);
                        byte[] bytes = str.getBytes("UTF-8");
                        byte[] m4974a = m4974a(substring2, bArr);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byteArrayOutputStream.write(((byte) ((j >> 0) & 255)) ^ m4974a[0]);
                        byteArrayOutputStream.write(((byte) ((j >> 8) & 255)) ^ m4974a[1]);
                        byteArrayOutputStream.write(((byte) ((j >> 16) & 255)) ^ m4974a[2]);
                        byteArrayOutputStream.write(((byte) ((j >> 24) & 255)) ^ m4974a[3]);
                        byteArrayOutputStream.write(((byte) ((j >> 32) & 255)) ^ m4974a[4]);
                        byteArrayOutputStream.write(((byte) ((j >> 40) & 255)) ^ m4974a[5]);
                        byteArrayOutputStream.write(((byte) ((j >> 48) & 255)) ^ m4974a[6]);
                        byteArrayOutputStream.write(((byte) ((j >> 56) & 255)) ^ m4974a[7]);
                        for (int i9 = 0; i9 < bytes.length; i9 += 8) {
                            long j2 = j + i9;
                            long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                            long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                            long j5 = j4 ^ (j4 >> 32);
                            byteArrayOutputStream.write((byte) (((i9 + 0 >= bytes.length ? (byte) 0 : bytes[i]) ^ m4974a[i % m4974a.length]) ^ ((j5 >> 0) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i2 % m4974a.length] ^ (i9 + 1 >= bytes.length ? (byte) 0 : bytes[i2])) ^ ((j5 >> 8) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i3 % m4974a.length] ^ (i9 + 2 >= bytes.length ? (byte) 0 : bytes[i3])) ^ ((j5 >> 16) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i4 % m4974a.length] ^ (i9 + 3 >= bytes.length ? (byte) 0 : bytes[i4])) ^ ((j5 >> 24) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i5 % m4974a.length] ^ (i9 + 4 >= bytes.length ? (byte) 0 : bytes[i5])) ^ ((j5 >> 32) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i6 % m4974a.length] ^ (i9 + 5 >= bytes.length ? (byte) 0 : bytes[i6])) ^ ((j5 >> 40) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i7 % m4974a.length] ^ (i9 + 6 >= bytes.length ? (byte) 0 : bytes[i7])) ^ ((j5 >> 48) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[i8 % m4974a.length] ^ (i9 + 7 >= bytes.length ? (byte) 0 : bytes[i8])) ^ ((j5 >> 56) & 255)));
                        }
                        String m4971b = m4971b(byteArrayOutputStream.toByteArray());
                        return "1:" + m4973a(bArr) + ":" + substring + ":" + m4971b;
                    } catch (IOException e) {
                        str3 = null;
                    }
                }
            }
            return str3;
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    /* renamed from: a */
    private static String m4975a(String str, String str2, byte[] bArr) {
        if (str2 != null) {
            if (str2.length() < 80) {
                throw new IllegalArgumentException("SDK key is too short");
            }
            if (bArr == null) {
                throw new IllegalArgumentException("No salt specified");
            }
            if (bArr.length < 32) {
                throw new IllegalArgumentException("Salt is too short");
            }
            if (!TextUtils.isEmpty(str) && !str.trim().startsWith("{")) {
                String[] split = str.split(":");
                try {
                    if (!"1".equals(split[0]) || split.length != 4) {
                        return null;
                    }
                    String str3 = split[1];
                    String str4 = split[2];
                    byte[] m4979a = m4979a(split[3]);
                    if (!str2.endsWith(str4) || !m4973a(bArr).equals(str3)) {
                        return null;
                    }
                    byte[] m4974a = m4974a(str2.substring(0, 32), bArr);
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m4979a);
                    try {
                        long read = (((byteArrayInputStream.read() ^ m4974a[5]) & 255) << 40) | (((byteArrayInputStream.read() ^ m4974a[0]) & 255) << 0) | (((byteArrayInputStream.read() ^ m4974a[1]) & 255) << 8) | (((byteArrayInputStream.read() ^ m4974a[2]) & 255) << 16) | (((byteArrayInputStream.read() ^ m4974a[3]) & 255) << 24) | (((byteArrayInputStream.read() ^ m4974a[4]) & 255) << 32) | (((byteArrayInputStream.read() ^ m4974a[6]) & 255) << 48) | (((byteArrayInputStream.read() ^ m4974a[7]) & 255) << 56);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr2 = new byte[8];
                        int read2 = byteArrayInputStream.read(bArr2);
                        int i = 0;
                        while (read2 >= 0) {
                            long j = i + read;
                            long j2 = (j ^ (j >> 33)) * (-4417276706812531889L);
                            long j3 = (j2 ^ (j2 >> 29)) * (-8796714831421723037L);
                            long j4 = j3 ^ (j3 >> 32);
                            byteArrayOutputStream.write((byte) ((bArr2[0] ^ m4974a[(i + 0) % m4974a.length]) ^ ((j4 >> 0) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[1] ^ m4974a[(i + 1) % m4974a.length]) ^ ((j4 >> 8) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[(i + 2) % m4974a.length] ^ bArr2[2]) ^ ((j4 >> 16) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[3] ^ m4974a[(i + 3) % m4974a.length]) ^ ((j4 >> 24) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[(i + 4) % m4974a.length] ^ bArr2[4]) ^ ((j4 >> 32) & 255)));
                            byteArrayOutputStream.write((byte) ((bArr2[5] ^ m4974a[(i + 5) % m4974a.length]) ^ ((j4 >> 40) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[(i + 6) % m4974a.length] ^ bArr2[6]) ^ ((j4 >> 48) & 255)));
                            byteArrayOutputStream.write((byte) ((m4974a[(i + 7) % m4974a.length] ^ bArr2[7]) ^ ((j4 >> 56) & 255)));
                            read2 = byteArrayInputStream.read(bArr2);
                            i += 8;
                        }
                        return new String(byteArrayOutputStream.toByteArray(), "UTF-8").trim();
                    } catch (IOException e) {
                        return null;
                    }
                } catch (IOException e2) {
                    return null;
                }
            }
            return str;
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    /* renamed from: a */
    private static String m4973a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr);
            return StringUtils.toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("SHA-1 algorithm not found", e);
        }
    }

    /* renamed from: a */
    private static byte[] m4979a(String str) {
        return Base64.decode(m4972b(str), 0);
    }

    /* renamed from: a */
    private static byte[] m4974a(String str, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding not found", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("SHA-1 algorithm not found", e2);
        }
    }

    /* renamed from: b */
    private static String m4972b(String str) {
        return str.replace('-', '+').replace('_', '/').replace('*', '=');
    }

    /* renamed from: b */
    private static String m4971b(byte[] bArr) throws UnsupportedEncodingException {
        return m4970c(Base64.encode(bArr, 2));
    }

    /* renamed from: c */
    private static String m4970c(byte[] bArr) throws UnsupportedEncodingException {
        return new String(bArr, "UTF-8").replace('+', '-').replace('/', '_').replace('=', '*');
    }
}
