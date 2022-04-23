package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uk.class */
final class uk implements Comparator<byte[]> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
        return bArr.length - bArr2.length;
    }
}
