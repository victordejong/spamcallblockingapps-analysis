package com.amazonaws.services.s3.internal.crypto;

import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/MultipartUploadContext.class */
public abstract class MultipartUploadContext {

    /* renamed from: b  reason: collision with root package name */
    final String f6863b;

    /* renamed from: c  reason: collision with root package name */
    final String f6864c;

    /* renamed from: d  reason: collision with root package name */
    boolean f6865d;
    Map<String, String> e;

    /* JADX INFO: Access modifiers changed from: protected */
    public MultipartUploadContext(String str, String str2) {
        this.f6863b = str;
        this.f6864c = str2;
    }
}
