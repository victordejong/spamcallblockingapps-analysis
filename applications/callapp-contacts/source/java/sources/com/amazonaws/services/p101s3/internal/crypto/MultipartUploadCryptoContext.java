package com.amazonaws.services.p101s3.internal.crypto;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.MultipartUploadCryptoContext */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext.class */
class MultipartUploadCryptoContext extends MultipartUploadContext {

    /* renamed from: f */
    final ContentCryptoMaterial f12428f;

    /* renamed from: g */
    int f12429g;

    /* renamed from: h */
    volatile boolean f12430h;

    public MultipartUploadCryptoContext(String str, String str2, ContentCryptoMaterial contentCryptoMaterial) {
        super(str, str2);
        this.f12428f = contentCryptoMaterial;
    }
}
