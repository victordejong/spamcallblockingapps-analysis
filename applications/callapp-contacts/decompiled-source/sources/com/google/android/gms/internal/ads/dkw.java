package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkw.class */
public final class dkw implements ddb {

    /* renamed from: a  reason: collision with root package name */
    private final dfx f26908a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26909b;

    public dkw(dfx dfxVar, int i) throws GeneralSecurityException {
        this.f26908a = dfxVar;
        this.f26909b = i;
        if (i >= 10) {
            dfxVar.a(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.ddb
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        return this.f26908a.a(bArr, this.f26909b);
    }
}
