package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
/* renamed from: com.flurry.sdk.ji */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ji.class */
public class C3340ji<ObjectType> {

    /* renamed from: a */
    public static final String f5710a = "ji";

    /* renamed from: b */
    public AbstractC3417kl<ObjectType> f5711b;

    /* renamed from: com.flurry.sdk.ji$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ji$a.class */
    public enum EnumC3341a {
        NONE(""),
        CRYPTO_ALGO_PADDING_7("AES/CBC/PKCS7Padding"),
        CRYPTO_ALGO_PADDING_5("AES/CBC/PKCS5Padding");
        

        /* renamed from: d */
        public String f5716d;

        EnumC3341a(String str) {
            this.f5716d = str;
        }

        /* renamed from: a */
        public static EnumC3341a m32642a(int i) {
            EnumC3341a[] values;
            for (EnumC3341a aVar : values()) {
                if (aVar.ordinal() == i) {
                    return aVar;
                }
            }
            return NONE;
        }
    }

    public C3340ji(AbstractC3417kl<ObjectType> klVar) {
        this.f5711b = klVar;
    }

    /* renamed from: a */
    public final ObjectType m32643a(byte[] bArr, Key key, IvParameterSpec ivParameterSpec, EnumC3341a aVar) throws IOException {
        if (bArr == null || key == null || aVar == null) {
            C3356jq.m32615a(5, f5710a, "Cannot decrypt, invalid params.");
            return null;
        }
        try {
            Cipher instance = Cipher.getInstance(aVar.f5716d);
            instance.init(2, key, ivParameterSpec);
            return this.f5711b.mo32526a(new ByteArrayInputStream(instance.doFinal(bArr)));
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            String str = f5710a;
            C3356jq.m32615a(5, str, "Error in decrypt " + e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public final byte[] m32644a(ObjectType objecttype, Key key, IvParameterSpec ivParameterSpec, EnumC3341a aVar) throws IOException {
        if (objecttype == null || key == null || aVar == null) {
            C3356jq.m32615a(5, f5710a, "Cannot encrypt, invalid params.");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f5711b.mo32525a(byteArrayOutputStream, objecttype);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            Cipher instance = Cipher.getInstance(aVar.f5716d);
            instance.init(1, key, ivParameterSpec);
            return instance.doFinal(byteArray);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            String str = f5710a;
            C3356jq.m32615a(5, str, "Error in encrypt " + e.getMessage());
            return null;
        }
    }
}
