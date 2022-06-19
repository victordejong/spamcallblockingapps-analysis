package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzern.class */
public final class zzern implements zzery<zzero> {
    private final zzfsn zza;
    private final Context zzb;
    private final zzcgz zzc;

    public zzern(zzfsn zzfsnVar, Context context, zzcgz zzcgzVar) {
        this.zza = zzfsnVar;
        this.zzb = context;
        this.zzc = zzcgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzero> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzerm
            private final zzern zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzero zzb() throws Exception {
        boolean m38765d = Wrappers.m38764a(this.zzb).m38765d();
        zzt.zzc();
        boolean zzH = zzs.zzH(this.zzb);
        String str = this.zzc.zza;
        zzt.zze();
        boolean zzu = zzad.zzu();
        zzt.zzc();
        ApplicationInfo applicationInfo = this.zzb.getApplicationInfo();
        return new zzero(m38765d, zzH, str, zzu, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, DynamiteModule.m38739b(this.zzb, ModuleDescriptor.MODULE_ID), DynamiteModule.m38740a(this.zzb, ModuleDescriptor.MODULE_ID));
    }
}
