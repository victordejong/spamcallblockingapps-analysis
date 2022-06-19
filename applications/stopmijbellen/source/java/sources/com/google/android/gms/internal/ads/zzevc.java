package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevc.class */
public final class zzevc implements zzevn<zzevd> {
    private final zzfxb zza;
    private final Context zzb;
    private final zzcjf zzc;

    public zzevc(zzfxb zzfxbVar, Context context, zzcjf zzcjfVar) {
        this.zza = zzfxbVar;
        this.zzb = context;
        this.zzc = zzcjfVar;
    }

    public final /* synthetic */ zzevd zza() throws Exception {
        boolean isCallerInstantApp = Wrappers.packageManager(this.zzb).isCallerInstantApp();
        zzt.zzp();
        boolean zzI = com.google.android.gms.ads.internal.util.zzt.zzI(this.zzb);
        String str = this.zzc.zza;
        zzt.zzq();
        boolean zzu = zzae.zzu();
        zzt.zzp();
        ApplicationInfo applicationInfo = this.zzb.getApplicationInfo();
        return new zzevd(isCallerInstantApp, zzI, str, zzu, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, DynamiteModule.getRemoteVersion(this.zzb, ModuleDescriptor.MODULE_ID), DynamiteModule.getLocalVersion(this.zzb, ModuleDescriptor.MODULE_ID));
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevd> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevc.this.zza();
            }
        });
    }
}
