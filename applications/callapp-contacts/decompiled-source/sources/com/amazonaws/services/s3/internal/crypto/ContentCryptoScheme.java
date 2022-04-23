package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ContentCryptoScheme.class */
abstract class ContentCryptoScheme {

    /* renamed from: a  reason: collision with root package name */
    static final ContentCryptoScheme f6854a = new AesCbc();

    /* renamed from: b  reason: collision with root package name */
    static final ContentCryptoScheme f6855b = new AesGcm();

    /* renamed from: c  reason: collision with root package name */
    static final ContentCryptoScheme f6856c = new AesCtr();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentCryptoScheme a(String str) {
        return a(str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentCryptoScheme a(String str, boolean z) {
        ContentCryptoScheme contentCryptoScheme = f6855b;
        if (contentCryptoScheme.b().equals(str)) {
            return z ? f6856c : contentCryptoScheme;
        }
        if (str == null || f6854a.b().equals(str)) {
            return f6854a;
        }
        throw new UnsupportedOperationException("Unsupported content encryption scheme: ".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(byte[] bArr, long j) {
        if (j == 0) {
            return bArr;
        }
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException();
        } else if (j <= 4294967294L) {
            ByteBuffer allocate = ByteBuffer.allocate(8);
            for (int i = 12; i <= 15; i++) {
                allocate.put(i - 8, bArr[i]);
            }
            long j2 = allocate.getLong() + j;
            if (j2 <= 4294967294L) {
                allocate.rewind();
                byte[] array = allocate.putLong(j2).array();
                for (int i2 = 12; i2 <= 15; i2++) {
                    bArr[i2] = array[i2 - 8];
                }
                return bArr;
            }
            throw new IllegalStateException();
        } else {
            throw new IllegalStateException();
        }
    }

    protected CipherLite a(Cipher cipher, SecretKey secretKey, int i) {
        return new CipherLite(cipher, this, secretKey, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final CipherLite a(SecretKey secretKey, byte[] bArr, int i, Provider provider) {
        Throwable th;
        String g = g();
        try {
            Cipher instance = provider != null ? Cipher.getInstance(b(), provider) : g != null ? Cipher.getInstance(b(), g) : Cipher.getInstance(b());
            instance.init(i, secretKey, new IvParameterSpec(bArr));
            return a(instance, secretKey, i);
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                th = (RuntimeException) e;
            } else {
                th = new AmazonClientException("Unable to build cipher: " + e.getMessage() + "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM", e);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CipherLite a(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a(byte[] bArr, long j) {
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return 0;
    }

    String g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String h() {
        return a() + "_" + c();
    }

    public String toString() {
        return "cipherAlgo=" + b() + ", blockSizeInBytes=" + d() + ", ivLengthInBytes=" + e() + ", keyGenAlgo=" + a() + ", keyLengthInBits=" + c() + ", specificProvider=" + g() + ", tagLengthInBits=" + f();
    }
}
