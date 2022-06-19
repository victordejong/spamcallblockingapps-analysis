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

    /* renamed from: a */
    private IBase64 f19138a;

    /* loaded from: classes-dex2jar.jar:com/callapp/common/util/AESUtils$IBase64.class */
    public interface IBase64 {
        /* renamed from: a */
        String mo27613a(byte[] bArr);

        /* renamed from: a */
        byte[] mo27614a(String str);
    }

    public AESUtils(IBase64 iBase64) {
        this.f19138a = iBase64;
    }

    /* renamed from: a */
    private static SecretKeySpec m31926a(byte[] bArr) {
        return new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    public static byte[] m31928a(String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[16];
        byte[] bytes = str.getBytes("UTF-8");
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        return bArr;
    }

    /* renamed from: b */
    private static IvParameterSpec m31923b(byte[] bArr) {
        return new IvParameterSpec(bArr);
    }

    private Cipher getCipher() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    /* renamed from: a */
    public final String m31927a(String str, String str2) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        byte[] bytes = str.getBytes("UTF-8");
        byte[] m31928a = m31928a(str2);
        return this.f19138a.mo27613a(m31925a(m31928a, m31928a).doFinal(bytes));
    }

    /* renamed from: a */
    public final Cipher m31925a(byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException {
        Cipher cipher = getCipher();
        cipher.init(1, m31926a(bArr), m31923b(bArr2));
        return cipher;
    }

    /* renamed from: b */
    public final String m31924b(String str, String str2) throws GeneralSecurityException, IllegalBlockSizeException, IOException {
        byte[] mo27614a = this.f19138a.mo27614a(str);
        byte[] m31928a = m31928a(str2);
        Cipher cipher = getCipher();
        cipher.init(2, m31926a(m31928a), m31923b(m31928a));
        return new String(cipher.doFinal(mo27614a), "UTF-8");
    }
}
