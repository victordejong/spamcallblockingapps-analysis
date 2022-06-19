package com.google.android.gms.common;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzj.class */
final class zzj extends zzi {
    private final byte[] zza;

    public zzj(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.zza = bArr;
    }

    @Override // com.google.android.gms.common.zzi
    public final byte[] zzf() {
        return this.zza;
    }
}
