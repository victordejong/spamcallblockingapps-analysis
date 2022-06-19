package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzk.class */
abstract class zzk extends zzi {
    private static final WeakReference<byte[]> zzb = new WeakReference<>(null);
    private WeakReference<byte[]> zza = zzb;

    public zzk(byte[] bArr) {
        super(bArr);
    }

    protected abstract byte[] zzb();

    @Override // com.google.android.gms.common.zzi
    public final byte[] zzc() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.zza.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = zzb();
                this.zza = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
