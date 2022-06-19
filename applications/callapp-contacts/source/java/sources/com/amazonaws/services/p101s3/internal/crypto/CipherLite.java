package com.amazonaws.services.p101s3.internal.crypto;

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
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.CipherLite */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CipherLite.class */
public class CipherLite {

    /* renamed from: a */
    static final CipherLite f12388a = new CipherLite() { // from class: com.amazonaws.services.s3.internal.crypto.CipherLite.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
        /* renamed from: a */
        public final CipherLite mo38388a(long j) {
            return this;
        }
    };

    /* renamed from: b */
    final Cipher f12389b;

    /* renamed from: c */
    final ContentCryptoScheme f12390c;

    /* renamed from: d */
    final SecretKey f12391d;

    /* renamed from: e */
    final int f12392e;

    private CipherLite() {
        this.f12389b = new NullCipher();
        this.f12390c = null;
        this.f12391d = null;
        this.f12392e = -1;
    }

    public CipherLite(Cipher cipher, ContentCryptoScheme contentCryptoScheme, SecretKey secretKey, int i) {
        this.f12389b = cipher;
        this.f12390c = contentCryptoScheme;
        this.f12391d = secretKey;
        this.f12392e = i;
    }

    /* renamed from: a */
    public CipherLite mo38388a(long j) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidAlgorithmParameterException {
        return this.f12390c.mo38366a(this.f12391d, this.f12389b.getIV(), this.f12392e, this.f12389b.getProvider(), j);
    }

    /* renamed from: a */
    public byte[] mo38348a() throws IllegalBlockSizeException, BadPaddingException {
        return this.f12389b.doFinal();
    }

    /* renamed from: a */
    public byte[] mo38346a(byte[] bArr, int i, int i2) {
        return this.f12389b.update(bArr, i, i2);
    }

    /* renamed from: b */
    public boolean mo38345b() {
        return false;
    }

    /* renamed from: c */
    public long mo38344c() {
        return -1L;
    }

    /* renamed from: d */
    public void mo38343d() {
        throw new IllegalStateException("mark/reset not supported");
    }
}
