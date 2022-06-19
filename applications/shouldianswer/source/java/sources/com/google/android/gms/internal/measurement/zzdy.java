package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdy.class */
final class zzdy implements zzea {
    private zzdy() {
    }

    public /* synthetic */ zzdy(zzdx zzdxVar) {
        this();
    }

    @Override // com.google.android.gms.internal.measurement.zzea
    public final byte[] zza(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
