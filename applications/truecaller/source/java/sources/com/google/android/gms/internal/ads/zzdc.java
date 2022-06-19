package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdc.class */
public final class zzdc {
    public static final zzdc zza = new zzdc(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzdc(int i, int i2, int i3) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = zzamq.zzP(i3) ? zzamq.zzS(i3, i2) : -1;
    }

    public final String toString() {
        int i = this.zzb;
        int i2 = this.zzc;
        int i3 = this.zzd;
        StringBuilder m8546z = C22128a.m8546z(83, "AudioFormat[sampleRate=", i, ", channelCount=", i2);
        m8546z.append(", encoding=");
        m8546z.append(i3);
        m8546z.append(']');
        return m8546z.toString();
    }
}
