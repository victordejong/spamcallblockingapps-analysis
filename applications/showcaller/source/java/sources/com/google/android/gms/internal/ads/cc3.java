package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cc3.class */
public final class cc3 implements a23 {

    /* renamed from: a */
    private final i53 f21171a;

    /* renamed from: b */
    private final int f21172b;

    public cc3(i53 i53Var, int i) {
        this.f21171a = i53Var;
        this.f21172b = i;
        if (i >= 10) {
            i53Var.mo8453a(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.a23
    /* renamed from: a */
    public final byte[] mo14981a(byte[] bArr) {
        return this.f21171a.mo8453a(bArr, this.f21172b);
    }
}
