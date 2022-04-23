package com.amazonaws.services.s3.internal.crypto;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesCtr.class */
class AesCtr extends ContentCryptoScheme {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String a() {
        return f6855b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final byte[] a(byte[] bArr, long j) {
        if (bArr.length == 12) {
            int d2 = f6855b.d();
            long j2 = d2;
            long j3 = j / j2;
            if (j2 * j3 == j) {
                int d3 = f6855b.d();
                byte[] bArr2 = new byte[d3];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                bArr2[d3 - 1] = (byte) 1;
                return b(b(bArr2, 1L), j3);
            }
            throw new IllegalArgumentException("Expecting byteOffset to be multiple of 16, but got blockOffset=" + j3 + ", blockSize=" + d2 + ", byteOffset=" + j);
        }
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String b() {
        return "AES/CTR/NoPadding";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int c() {
        return f6855b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int d() {
        return f6855b.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int e() {
        return 16;
    }
}
