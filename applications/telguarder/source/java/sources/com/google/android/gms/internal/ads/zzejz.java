package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejz.class */
public final class zzejz {
    private final byte[] buffer;
    private final zzekl zzime;

    private zzejz(int i) {
        byte[] bArr = new byte[i];
        this.buffer = bArr;
        this.zzime = zzekl.zzv(bArr);
    }

    public /* synthetic */ zzejz(int i, zzejq zzejqVar) {
        this(i);
    }

    public final zzejr zzbgq() {
        this.zzime.zzbht();
        return new zzekb(this.buffer);
    }

    public final zzekl zzbgr() {
        return this.zzime;
    }
}
