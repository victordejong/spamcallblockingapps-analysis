package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djt.class */
public final class djt extends djw {
    public djt(byte[] bArr) throws InvalidKeyException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.djw
    final dju a(byte[] bArr, int i) throws InvalidKeyException {
        return new djr(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.djw, com.google.android.gms.internal.ads.dcn
    public final /* bridge */ /* synthetic */ byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return super.a(bArr, bArr2);
    }
}
