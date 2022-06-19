package com.amazonaws.services.p101s3.internal.crypto;

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
/* renamed from: com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ContentCryptoScheme.class */
public abstract class ContentCryptoScheme {

    /* renamed from: a */
    static final ContentCryptoScheme f12405a = new AesCbc();

    /* renamed from: b */
    static final ContentCryptoScheme f12406b = new AesGcm();

    /* renamed from: c */
    static final ContentCryptoScheme f12407c = new AesCtr();

    /* renamed from: a */
    public static ContentCryptoScheme m38370a(String str) {
        return m38369a(str, false);
    }

    /* renamed from: a */
    public static ContentCryptoScheme m38369a(String str, boolean z) {
        ContentCryptoScheme contentCryptoScheme = f12406b;
        if (contentCryptoScheme.mo38364b().equals(str)) {
            return z ? f12407c : contentCryptoScheme;
        } else if (str != null && !f12405a.mo38364b().equals(str)) {
            throw new UnsupportedOperationException("Unsupported content encryption scheme: ".concat(String.valueOf(str)));
        } else {
            return f12405a;
        }
    }

    /* renamed from: b */
    public static byte[] m38363b(byte[] bArr, long j) {
        if (j == 0) {
            return bArr;
        }
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (j > 4294967294L) {
            throw new IllegalStateException();
        }
        ByteBuffer allocate = ByteBuffer.allocate(8);
        for (int i = 12; i <= 15; i++) {
            allocate.put(i - 8, bArr[i]);
        }
        long j2 = allocate.getLong() + j;
        if (j2 > 4294967294L) {
            throw new IllegalStateException();
        }
        allocate.rewind();
        byte[] array = allocate.putLong(j2).array();
        for (int i2 = 12; i2 <= 15; i2++) {
            bArr[i2] = array[i2 - 8];
        }
        return bArr;
    }

    /* renamed from: a */
    protected CipherLite mo38368a(Cipher cipher, SecretKey secretKey, int i) {
        return new CipherLite(cipher, this, secretKey, i);
    }

    /* renamed from: a */
    public final CipherLite m38367a(SecretKey secretKey, byte[] bArr, int i, Provider provider) {
        RuntimeException runtimeException;
        String mo38358g = mo38358g();
        try {
            Cipher cipher = provider != null ? Cipher.getInstance(mo38364b(), provider) : mo38358g != null ? Cipher.getInstance(mo38364b(), mo38358g) : Cipher.getInstance(mo38364b());
            cipher.init(i, secretKey, new IvParameterSpec(bArr));
            return mo38368a(cipher, secretKey, i);
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                runtimeException = (RuntimeException) e;
            } else {
                runtimeException = new AmazonClientException("Unable to build cipher: " + e.getMessage() + "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM", e);
            }
            throw runtimeException;
        }
    }

    /* renamed from: a */
    public CipherLite mo38366a(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException {
        return null;
    }

    /* renamed from: a */
    public abstract String mo38371a();

    /* renamed from: a */
    public byte[] mo38365a(byte[] bArr, long j) {
        return bArr;
    }

    /* renamed from: b */
    public abstract String mo38364b();

    /* renamed from: c */
    public abstract int mo38362c();

    /* renamed from: d */
    public abstract int mo38361d();

    /* renamed from: e */
    public abstract int mo38360e();

    /* renamed from: f */
    public int mo38359f() {
        return 0;
    }

    /* renamed from: g */
    String mo38358g() {
        return null;
    }

    /* renamed from: h */
    public final String m38357h() {
        return mo38371a() + "_" + mo38362c();
    }

    public String toString() {
        return "cipherAlgo=" + mo38364b() + ", blockSizeInBytes=" + mo38361d() + ", ivLengthInBytes=" + mo38360e() + ", keyGenAlgo=" + mo38371a() + ", keyLengthInBits=" + mo38362c() + ", specificProvider=" + mo38358g() + ", tagLengthInBits=" + mo38359f();
    }
}
