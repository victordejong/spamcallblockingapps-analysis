package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzks.class */
public final class zzks implements zzkn {
    private final /* synthetic */ zzkq zzasr;

    private zzks(zzkq zzkqVar) {
        this.zzasr = zzkqVar;
    }

    public /* synthetic */ zzks(zzkq zzkqVar, zzkp zzkpVar) {
        this(zzkqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zza(int i, double d) throws zzhw {
        this.zzasr.zza(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zza(int i, int i2, zzjz zzjzVar) throws IOException, InterruptedException {
        this.zzasr.zza(i, i2, zzjzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zza(int i, String str) throws zzhw {
        this.zzasr.zza(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final int zzal(int i) {
        return zzkq.zzal(i);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final boolean zzam(int i) {
        return zzkq.zzam(i);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zzan(int i) throws zzhw {
        this.zzasr.zzan(i);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zzd(int i, long j) throws zzhw {
        this.zzasr.zzd(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void zzd(int i, long j, long j2) throws zzhw {
        this.zzasr.zzd(i, j, j2);
    }
}
