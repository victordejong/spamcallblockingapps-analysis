package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpa.class */
public abstract class zzgpa extends zzgoy {
    private int zza;

    public zzgpa(String str) {
        super("mvhd");
    }

    public final int zzh() {
        if (!this.zzc) {
            zzg();
        }
        return this.zza;
    }

    public final long zzi(ByteBuffer byteBuffer) {
        this.zza = zzaie.zzc(byteBuffer.get());
        zzaie.zzd(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
