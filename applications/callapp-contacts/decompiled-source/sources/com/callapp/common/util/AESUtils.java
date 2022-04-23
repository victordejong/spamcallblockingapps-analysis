package com.callapp.common.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/AESUtils.class */
public class AESUtils {

    /* renamed from: a  reason: collision with root package name */
    private IBase64 f10381a;

    /* loaded from: classes-dex2jar.jar:com/callapp/common/util/AESUtils$IBase64.class */
    public interface IBase64 {
        String a(byte[] bArr);

        byte[] a(String str);
    }

    public AESUtils(IBase64 iBase64) {
        this.f10381a = iBase64;
    }

    private static SecretKeySpec a(byte[] bArr) {
        return new SecretKeySpec(bArr, "AES");
    }

    public static byte[] a(String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[16];
        byte[] bytes = str.getBytes("UTF-8");
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        return bArr;
    }

    private static IvParameterSpec b(byte[] bArr) {
        return new IvParameterSpec(bArr);
    }

    private Cipher getCipher() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public final String a(String str, String str2) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        byte[] bytes = str.getBytes("UTF-8");
        byte[] a2 = a(str2);
        return this.f10381a.a(a(a2, a2).doFinal(bytes));
    }

    public final Cipher a(byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException {
        Cipher cipher = getCipher();
        cipher.init(1, a(bArr), b(bArr2));
        return cipher;
    }

    public final String b(String str, String str2) throws GeneralSecurityException, IllegalBlockSizeException, IOException {
        byte[] a2 = this.f10381a.a(str);
        byte[] a3 = a(str2);
        Cipher cipher = getCipher();
        cipher.init(2, a(a3), b(a3));
        return new String(cipher.doFinal(a2), "UTF-8");
    }
}
