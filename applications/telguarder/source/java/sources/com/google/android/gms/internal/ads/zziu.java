package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zziu.class */
public final class zziu extends zziv {
    private final AudioTimestamp zzalt = new AudioTimestamp();
    private long zzalu;
    private long zzalv;
    private long zzalw;

    public zziu() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzalu = 0L;
        this.zzalv = 0L;
        this.zzalw = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final boolean zzfy() {
        boolean timestamp = this.zzakc.getTimestamp(this.zzalt);
        if (timestamp) {
            long j = this.zzalt.framePosition;
            if (this.zzalv > j) {
                this.zzalu++;
            }
            this.zzalv = j;
            this.zzalw = j + (this.zzalu << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long zzfz() {
        return this.zzalt.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long zzga() {
        return this.zzalw;
    }
}
