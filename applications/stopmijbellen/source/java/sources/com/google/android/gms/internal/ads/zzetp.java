package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetp.class */
public final class zzetp implements zzevn<zzetq> {
    private final zzfxb zza;
    private final zzfef zzb;
    private final PackageInfo zzc;
    private final zzg zzd;

    public zzetp(zzfxb zzfxbVar, zzfef zzfefVar, PackageInfo packageInfo, zzg zzgVar) {
        this.zza = zzfxbVar;
        this.zzb = zzfefVar;
        this.zzc = packageInfo;
        this.zzd = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzetq> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeto
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetp.this.zzb.zzg;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0196, code lost:
        if (r0 == 3) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zzc(java.util.ArrayList r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetp.zzc(java.util.ArrayList, android.os.Bundle):void");
    }
}
