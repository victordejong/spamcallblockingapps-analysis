package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dma.class */
final class dma implements dmc {
    private dma() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dma(dlv dlvVar) {
        this();
    }

    @Override // com.google.android.gms.internal.ads.dmc
    public final byte[] a(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
