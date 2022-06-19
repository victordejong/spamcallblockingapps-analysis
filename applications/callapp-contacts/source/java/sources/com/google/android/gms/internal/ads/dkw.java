package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkw.class */
public final class dkw implements ddb {

    /* renamed from: a */
    private final dfx f47166a;

    /* renamed from: b */
    private final int f47167b;

    public dkw(dfx dfxVar, int i) throws GeneralSecurityException {
        this.f47166a = dfxVar;
        this.f47167b = i;
        if (i >= 10) {
            dfxVar.mo16528a(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.ddb
    /* renamed from: a */
    public final byte[] mo16527a(byte[] bArr) throws GeneralSecurityException {
        return this.f47166a.mo16528a(bArr, this.f47167b);
    }
}
