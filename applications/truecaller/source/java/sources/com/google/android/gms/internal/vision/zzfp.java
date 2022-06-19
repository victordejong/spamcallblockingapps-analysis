package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzfp.class */
public final class zzfp {
    private final byte[] buffer;
    private final zzga zzsd;

    private zzfp(int i) {
        byte[] bArr = new byte[i];
        this.buffer = bArr;
        this.zzsd = zzga.zze(bArr);
    }

    public /* synthetic */ zzfp(int i, zzfk zzfkVar) {
        this(i);
    }

    public final zzfh zzev() {
        this.zzsd.zzfh();
        return new zzfr(this.buffer);
    }

    public final zzga zzew() {
        return this.zzsd;
    }
}
