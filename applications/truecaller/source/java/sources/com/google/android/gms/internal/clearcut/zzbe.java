package com.google.android.gms.internal.clearcut;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbe.class */
public final class zzbe extends zzbi {
    private final int zzfm;
    private final int zzfn;

    public zzbe(byte[] bArr, int i, int i2) {
        super(bArr);
        zzbb.zzb(i, i + i2, bArr.length);
        this.zzfm = i;
        this.zzfn = i2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbi, com.google.android.gms.internal.clearcut.zzbb
    public final int size() {
        return this.zzfn;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbi
    public final int zzac() {
        return this.zzfm;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbi, com.google.android.gms.internal.clearcut.zzbb
    public final byte zzj(int i) {
        int size = size();
        if (((size - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C22128a.m8683N1(40, "Index > length: ", i, ", ", size));
            }
            throw new ArrayIndexOutOfBoundsException(C22128a.m8690L1(22, "Index < 0: ", i));
        }
        return this.zzfp[this.zzfm + i];
    }
}
