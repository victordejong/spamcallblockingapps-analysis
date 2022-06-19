package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoa.class */
final class zzoa {
    private long zza;
    private long zzb;
    private boolean zzc;

    private final long zzd(long j) {
        return Math.max(0L, ((this.zzb - 529) * 1000000) / j) + this.zza;
    }

    public final long zza(zzab zzabVar) {
        return zzd(zzabVar.zzA);
    }

    public final long zzb(zzab zzabVar, zzda zzdaVar) {
        if (this.zzb == 0) {
            this.zza = zzdaVar.zzd;
        }
        if (this.zzc) {
            return zzdaVar.zzd;
        }
        ByteBuffer byteBuffer = zzdaVar.zzb;
        Objects.requireNonNull(byteBuffer);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int zzc = zzxk.zzc(i);
        if (zzc != -1) {
            long zzd = zzd(zzabVar.zzA);
            this.zzb += zzc;
            return zzd;
        }
        this.zzc = true;
        this.zzb = 0L;
        this.zza = zzdaVar.zzd;
        Log.w("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return zzdaVar.zzd;
    }

    public final void zzc() {
        this.zza = 0L;
        this.zzb = 0L;
        this.zzc = false;
    }
}
