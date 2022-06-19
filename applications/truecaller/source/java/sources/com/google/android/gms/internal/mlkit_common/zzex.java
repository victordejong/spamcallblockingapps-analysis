package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzex.class */
public final class zzex {
    private final zzfc zza;
    private final byte[] zzb;

    private zzex(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzfc.zza(bArr);
    }

    public /* synthetic */ zzex(int i, zzeo zzeoVar) {
        this(i);
    }

    public final zzep zza() {
        this.zza.zzb();
        return new zzez(this.zzb);
    }

    public final zzfc zzb() {
        return this.zza;
    }
}
