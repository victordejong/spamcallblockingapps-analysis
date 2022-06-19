package com.nostra13.universalimageloader.cache.disc.naming;

import com.nostra13.universalimageloader.utils.C1836L;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator.class */
public class Md5FileNameGenerator implements FileNameGenerator {
    private static final String HASH_ALGORITHM = "MD5";
    private static final int RADIX = 36;

    private byte[] getMD5(byte[] bArr) {
        byte[] bArr2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HASH_ALGORITHM);
            messageDigest.update(bArr);
            bArr2 = messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            C1836L.m1112e(e);
            bArr2 = null;
        }
        return bArr2;
    }

    @Override // com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator
    public String generate(String str) {
        return new BigInteger(getMD5(str.getBytes())).abs().toString(36);
    }
}
