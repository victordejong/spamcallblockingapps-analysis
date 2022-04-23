package com.bytedance.sdk.openadsdk.utils;

import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f10303a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(File file) {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            if (instance == null) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[PropertyFlags.UNSIGNED];
                while (true) {
                    int read = fileInputStream.read(bArr, 0, PropertyFlags.UNSIGNED);
                    if (read <= 0) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                }
                String a2 = a(instance.digest());
                try {
                    fileInputStream.close();
                } catch (Exception e) {
                }
                return a2;
            } catch (Exception e2) {
                if (fileInputStream == null) {
                    return null;
                }
                try {
                    fileInputStream.close();
                    return null;
                } catch (Exception e3) {
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.length() == 0) {
                return null;
            }
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes("UTF-8"));
            return a(instance.digest());
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes is null");
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "bytes is null");
        if (i < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2 * 2;
        char[] cArr = new char[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = bArr[i5 + i] & 255;
            int i7 = i4 + 1;
            char[] cArr2 = f10303a;
            cArr[i4] = cArr2[i6 >> 4];
            i4 = i7 + 1;
            cArr[i7] = cArr2[i6 & 15];
        }
        return new String(cArr, 0, i3);
    }
}
