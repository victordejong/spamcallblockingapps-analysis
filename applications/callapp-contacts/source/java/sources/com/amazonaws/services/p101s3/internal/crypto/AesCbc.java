package com.amazonaws.services.p101s3.internal.crypto;

import io.objectbox.model.PropertyFlags;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.AesCbc */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesCbc.class */
class AesCbc extends ContentCryptoScheme {
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
        return "AES/CBC/PKCS5Padding";
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
        return 16;
    }
}
