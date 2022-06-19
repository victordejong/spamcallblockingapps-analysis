package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzk.class */
abstract class zzk extends zzi {
    private static final WeakReference<byte[]> zza = new WeakReference<>(null);
    private WeakReference<byte[]> zzb = zza;

    public zzk(byte[] bArr) {
        super(bArr);
    }

    public abstract byte[] zzb();

    @Override // com.google.android.gms.common.zzi
    public final byte[] zzf() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.zzb.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = zzb();
                this.zzb = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
