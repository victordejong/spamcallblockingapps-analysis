package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmx.class */
final class zzmx implements zznn {
    private final int track;
    private final /* synthetic */ zzms zzbdl;

    public zzmx(zzms zzmsVar, int i) {
        this.zzbdl = zzmsVar;
        this.track = i;
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final boolean isReady() {
        return this.zzbdl.zzaz(this.track);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final int zzb(zzhv zzhvVar, zzjp zzjpVar, boolean z) {
        return this.zzbdl.zza(this.track, zzhvVar, zzjpVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzeh(long j) {
        this.zzbdl.zze(this.track, j);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzhs() throws IOException {
        this.zzbdl.zzhs();
    }
}
