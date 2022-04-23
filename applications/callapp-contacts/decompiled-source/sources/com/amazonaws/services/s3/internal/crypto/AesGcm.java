package com.amazonaws.services.s3.internal.crypto;

import io.objectbox.model.PropertyFlags;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesGcm.class */
class AesGcm extends ContentCryptoScheme {
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    protected final CipherLite a(Cipher cipher, SecretKey secretKey, int i) {
        return new GCMCipherLite(cipher, secretKey, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final CipherLite a(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidAlgorithmParameterException {
        return f6856c.a(secretKey, f6856c.a(bArr, j), i, provider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String a() {
        return "AES";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String b() {
        return "AES/GCM/NoPadding";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int c() {
        return PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int d() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int e() {
        return 12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int f() {
        return 128;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    final String g() {
        return "BC";
    }
}
