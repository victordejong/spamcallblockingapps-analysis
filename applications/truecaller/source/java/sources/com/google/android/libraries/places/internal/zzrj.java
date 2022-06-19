package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzrj.class */
public final class zzrj {
    private final zzrs zza;
    private final byte[] zzb;

    private zzrj(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzrs.zza(bArr);
    }

    public /* synthetic */ zzrj(int i, zzre zzreVar) {
        this(i);
    }

    public final zzrb zza() {
        this.zza.zzb();
        return new zzrl(this.zzb);
    }

    public final zzrs zzb() {
        return this.zza;
    }
}
