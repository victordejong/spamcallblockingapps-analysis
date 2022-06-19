package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlf.class */
public final class zzlf {
    public static final zzlf zza = new zzlf(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzlf(int i, int i2, int i3) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = zzfn.zzR(i3) ? zzfn.zzm(i3, i2) : -1;
    }

    public final String toString() {
        int i = this.zzb;
        int i2 = this.zzc;
        int i3 = this.zzd;
        StringBuilder m8753i = C0082b.m8753i(83, "AudioFormat[sampleRate=", i, ", channelCount=", i2);
        m8753i.append(", encoding=");
        m8753i.append(i3);
        m8753i.append(']');
        return m8753i.toString();
    }
}
