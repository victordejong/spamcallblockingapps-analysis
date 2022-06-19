package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2479a;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/hash/FileSHA256.class */
public abstract class FileSHA256 {

    /* renamed from: a */
    private static final int f7922a = 8192;

    /* renamed from: c */
    private static final String f7924c = "FileSHA256";

    /* renamed from: d */
    private static final String f7925d = "";

    /* renamed from: b */
    private static final String f7923b = "SHA-256";

    /* renamed from: e */
    private static final String[] f7926e = {f7923b, "SHA-384", "SHA-512"};

    /* renamed from: a */
    private static boolean m37087a(File file) {
        return file != null && file.exists() && file.length() > 0;
    }

    /* renamed from: a */
    private static boolean m37086a(String str) {
        for (String str2 : f7926e) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String fileSHA256Encrypt(File file) {
        return fileSHAEncrypt(file, f7923b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.io.InputStream] */
    public static String fileSHAEncrypt(File file, String str) {
        Throwable th;
        String str2;
        FileInputStream fileInputStream;
        NoSuchAlgorithmException e;
        IOException e2;
        boolean z;
        if (TextUtils.isEmpty(str) || !m37086a(str)) {
            C2480b.m37037b(f7924c, "algorithm is empty or not safe");
            return "";
        } else if (!m37087a(file)) {
            C2480b.m37037b(f7924c, "file is not valid");
            return "";
        } else {
            try {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(str);
                    fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        boolean z2 = false;
                        while (true) {
                            z = z2;
                            int read = fileInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                            z2 = true;
                        }
                        str2 = null;
                        if (z) {
                            str2 = HexUtil.byteArray2HexStr(messageDigest.digest());
                        }
                        C2479a.m37049a((InputStream) fileInputStream);
                    } catch (IOException e3) {
                        e2 = e3;
                        String str3 = f7924c;
                        FileInputStream fileInputStream2 = fileInputStream;
                        FileInputStream fileInputStream3 = fileInputStream;
                        StringBuilder sb = new StringBuilder();
                        FileInputStream fileInputStream4 = fileInputStream;
                        sb.append("IOException");
                        FileInputStream fileInputStream5 = fileInputStream;
                        sb.append(e2.getMessage());
                        FileInputStream fileInputStream6 = fileInputStream;
                        C2480b.m37037b(str3, sb.toString());
                        C2479a.m37049a((InputStream) fileInputStream);
                        str2 = null;
                        return str2;
                    } catch (NoSuchAlgorithmException e4) {
                        e = e4;
                        String str4 = f7924c;
                        FileInputStream fileInputStream7 = fileInputStream;
                        FileInputStream fileInputStream8 = fileInputStream;
                        StringBuilder sb2 = new StringBuilder();
                        FileInputStream fileInputStream9 = fileInputStream;
                        sb2.append("NoSuchAlgorithmException");
                        FileInputStream fileInputStream10 = fileInputStream;
                        sb2.append(e.getMessage());
                        FileInputStream fileInputStream11 = fileInputStream;
                        C2480b.m37037b(str4, sb2.toString());
                        C2479a.m37049a((InputStream) fileInputStream);
                        str2 = null;
                        return str2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C2479a.m37049a((InputStream) file);
                    throw th;
                }
            } catch (IOException e5) {
                e2 = e5;
                fileInputStream = null;
            } catch (NoSuchAlgorithmException e6) {
                e = e6;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                file = null;
                C2479a.m37049a((InputStream) file);
                throw th;
            }
            return str2;
        }
    }

    public static String inputStreamSHA256Encrypt(InputStream inputStream) {
        return inputStream == null ? "" : inputStreamSHAEncrypt(inputStream, f7923b);
    }

    /* JADX WARN: Finally extract failed */
    public static String inputStreamSHAEncrypt(InputStream inputStream, String str) {
        if (inputStream == null) {
            return "";
        }
        byte[] bArr = new byte[8192];
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        String byteArray2HexStr = HexUtil.byteArray2HexStr(messageDigest.digest());
                        C2479a.m37049a(inputStream);
                        return byteArray2HexStr;
                    } else if (read > 0) {
                        messageDigest.update(bArr, 0, read);
                    }
                }
            } catch (IOException | NoSuchAlgorithmException e) {
                C2480b.m37037b(f7924c, "inputstraem exception");
                C2479a.m37049a(inputStream);
                return "";
            }
        } catch (Throwable th) {
            C2479a.m37049a(inputStream);
            throw th;
        }
    }

    public static boolean validateFileSHA(File file, String str, String str2) {
        if (TextUtils.isEmpty(str) || !m37086a(str2)) {
            C2480b.m37037b(f7924c, "hash value is null || algorithm is illegal");
            return false;
        }
        return str.equals(fileSHAEncrypt(file, str2));
    }

    public static boolean validateFileSHA256(File file, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(fileSHA256Encrypt(file));
    }

    public static boolean validateInputStreamSHA(InputStream inputStream, String str, String str2) {
        if (TextUtils.isEmpty(str) || !m37086a(str2)) {
            C2480b.m37037b(f7924c, "hash value is null || algorithm is illegal");
            return false;
        }
        return str.equals(inputStreamSHAEncrypt(inputStream, str2));
    }

    public static boolean validateInputStreamSHA256(InputStream inputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(inputStreamSHA256Encrypt(inputStream));
    }
}
