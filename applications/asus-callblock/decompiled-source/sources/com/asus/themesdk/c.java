package com.asus.themesdk;

import android.text.TextUtils;
import android.util.Base64;
import com.asus.updatesdk.BuildConfig;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/asus/themesdk/c.class */
public final class c {
    public static String a(String str, String str2) {
        byte[] a2;
        byte[] a3;
        String str3;
        if (!TextUtils.isEmpty(str2)) {
            try {
                a2 = a(str);
                a3 = a(str, false);
            } catch (UnsupportedEncodingException e) {
            } catch (InvalidAlgorithmParameterException e2) {
            } catch (InvalidKeyException e3) {
            } catch (NoSuchAlgorithmException e4) {
            } catch (BadPaddingException e5) {
            } catch (IllegalBlockSizeException e6) {
            } catch (NoSuchPaddingException e7) {
            }
            if (!(a2 == null || a3 == null)) {
                SecretKeySpec secretKeySpec = new SecretKeySpec(Arrays.copyOf(a2, 32), "AES");
                Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
                instance.init(2, secretKeySpec, new IvParameterSpec(a3));
                str3 = new String(Base64.decode(instance.doFinal(Base64.decode(str2, 0)), 0), "UTF-8");
                return str3;
            }
        }
        str3 = BuildConfig.FLAVOR;
        return str3;
    }

    public static boolean a(String str, String str2, String str3) {
        byte[] a2;
        byte[] a3;
        boolean z = true;
        try {
            a2 = a(str);
            a3 = a(str, true);
        } catch (IOException e) {
        } catch (InvalidAlgorithmParameterException e2) {
        } catch (InvalidKeyException e3) {
        } catch (NoSuchAlgorithmException e4) {
        } catch (NoSuchPaddingException e5) {
        }
        if (!(a2 == null || a3 == null)) {
            FileInputStream fileInputStream = new FileInputStream(str2);
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(a2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(a3));
            CipherOutputStream cipherOutputStream = new CipherOutputStream(fileOutputStream, instance);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                cipherOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.flush();
            cipherOutputStream.close();
            return z;
        }
        z = false;
        return z;
    }

    private static byte[] a(String str) {
        byte[] bArr;
        if (!TextUtils.isEmpty(str)) {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes("UTF-8"));
            bArr = instance.digest();
        } else {
            bArr = null;
        }
        return bArr;
    }

    private static byte[] a(String str, boolean z) {
        byte[] bArr;
        String sb;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                String substring = str.substring(0, str.length() / 2);
                sb = new StringBuilder(substring).insert(substring.length() / 2, '#').toString();
            } else {
                sb = new StringBuilder(str).insert(str.length() / 2, 35).toString();
            }
            bArr = Arrays.copyOf(sb.getBytes("UTF-8"), 16);
        } else {
            bArr = null;
        }
        return bArr;
    }
}
