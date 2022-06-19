package com.google.android.gms.common;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzf.class */
final class zzf extends zze {
    private final byte[] zzu;

    public zzf(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.zzu = bArr;
    }

    @Override // com.google.android.gms.common.zze
    public final byte[] getBytes() {
        return this.zzu;
    }
}
