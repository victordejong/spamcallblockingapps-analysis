package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbm.class */
final class dbm implements dbo {
    private dbm() {
    }

    public /* synthetic */ dbm(dbl dblVar) {
        this();
    }

    @Override // com.google.android.gms.internal.ads.dbo
    /* renamed from: a */
    public final byte[] mo10202a(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i + i2);
    }
}
