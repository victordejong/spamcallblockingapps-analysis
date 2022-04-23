package com.amazonaws.services.s3.internal.crypto;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.NullCipher;
import javax.crypto.SecretKey;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CipherLite.class */
public class CipherLite {

    /* renamed from: a  reason: collision with root package name */
    static final CipherLite f6842a = new CipherLite() { // from class: com.amazonaws.services.s3.internal.crypto.CipherLite.1
        @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
        final CipherLite a(long j) {
            return this;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final Cipher f6843b;

    /* renamed from: c  reason: collision with root package name */
    final ContentCryptoScheme f6844c;

    /* renamed from: d  reason: collision with root package name */
    final SecretKey f6845d;
    final int e;

    private CipherLite() {
        this.f6843b = new NullCipher();
        this.f6844c = null;
        this.f6845d = null;
        this.e = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CipherLite(Cipher cipher, ContentCryptoScheme contentCryptoScheme, SecretKey secretKey, int i) {
        this.f6843b = cipher;
        this.f6844c = contentCryptoScheme;
        this.f6845d = secretKey;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CipherLite a(long j) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidAlgorithmParameterException {
        return this.f6844c.a(this.f6845d, this.f6843b.getIV(), this.e, this.f6843b.getProvider(), j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() throws IllegalBlockSizeException, BadPaddingException {
        return this.f6843b.doFinal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a(byte[] bArr, int i, int i2) {
        return this.f6843b.update(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long c() {
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        throw new IllegalStateException("mark/reset not supported");
    }
}
