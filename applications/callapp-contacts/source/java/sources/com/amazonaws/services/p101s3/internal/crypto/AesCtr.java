package com.amazonaws.services.p101s3.internal.crypto;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.AesCtr */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesCtr.class */
class AesCtr extends ContentCryptoScheme {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: a */
    public final String mo38371a() {
        return f12406b.mo38371a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: a */
    public final byte[] mo38365a(byte[] bArr, long j) {
        if (bArr.length == 12) {
            int mo38361d = f12406b.mo38361d();
            long j2 = mo38361d;
            long j3 = j / j2;
            if (j2 * j3 == j) {
                int mo38361d2 = f12406b.mo38361d();
                byte[] bArr2 = new byte[mo38361d2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                bArr2[mo38361d2 - 1] = (byte) 1;
                return m38363b(m38363b(bArr2, 1L), j3);
            }
            throw new IllegalArgumentException("Expecting byteOffset to be multiple of 16, but got blockOffset=" + j3 + ", blockSize=" + mo38361d + ", byteOffset=" + j);
        }
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: b */
    public final String mo38364b() {
        return "AES/CTR/NoPadding";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: c */
    public final int mo38362c() {
        return f12406b.mo38362c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: d */
    public final int mo38361d() {
        return f12406b.mo38361d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.p101s3.internal.crypto.ContentCryptoScheme
    /* renamed from: e */
    public final int mo38360e() {
        return 16;
    }
}
