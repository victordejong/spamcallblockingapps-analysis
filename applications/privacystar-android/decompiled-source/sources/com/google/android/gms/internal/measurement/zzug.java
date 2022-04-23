package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzug.class */
final class zzug implements zzui {
    private zzug() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzug(zzue zzueVar) {
        this();
    }

    @Override // com.google.android.gms.internal.measurement.zzui
    public final byte[] zzc(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
