package com.amazonaws.services.p101s3.internal.crypto;

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
/* renamed from: com.amazonaws.services.s3.internal.crypto.AesGcm */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesGcm.class */
class AesGcm extends ContentCryptoScheme {
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: a */
    protected final CipherLite mo38368a(Cipher cipher, SecretKey secretKey, int i) {
        return new GCMCipherLite(cipher, secretKey, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: a */
    public final CipherLite mo38366a(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidAlgorithmParameterException {
        return f12407c.m38367a(secretKey, f12407c.mo38365a(bArr, j), i, provider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: a */
    public final String mo38371a() {
        return "AES";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: b */
    public final String mo38364b() {
        return "AES/GCM/NoPadding";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: c */
    public final int mo38362c() {
        return PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: d */
    public final int mo38361d() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: e */
    public final int mo38360e() {
        return 12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: f */
    public final int mo38359f() {
        return 128;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: g */
    final String mo38358g() {
        return "BC";
    }
}
