package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzg.class */
abstract class zzg extends zze {
    private static final WeakReference<byte[]> zzw = new WeakReference<>(null);
    private WeakReference<byte[]> zzv = zzw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(byte[] bArr) {
        super(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.zze
    public final byte[] getBytes() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.zzv.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = zzd();
                this.zzv = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] zzd();
}
