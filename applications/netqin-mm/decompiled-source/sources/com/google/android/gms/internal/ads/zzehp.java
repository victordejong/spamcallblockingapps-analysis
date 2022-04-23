package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehp.class */
public final class zzehp implements zzeam {

    /* renamed from: a */
    public final zzecx f28038a;

    /* renamed from: b */
    public final int f28039b;

    public zzehp(zzecx zzecxVar, int i) throws GeneralSecurityException {
        this.f28038a = zzecxVar;
        this.f28039b = i;
        if (i >= 10) {
            zzecxVar.mo12554a(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzeam
    /* renamed from: a */
    public final byte[] mo12552a(byte[] bArr) throws GeneralSecurityException {
        return this.f28038a.mo12554a(bArr, this.f28039b);
    }
}
