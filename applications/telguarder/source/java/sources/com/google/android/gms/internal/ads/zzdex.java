package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdex.class */
public final class zzdex implements zzdfi<zzdeu> {
    private final Context context;
    private final zzazn zzbpn;
    private final zzdzv zzghl;

    public zzdex(zzdzv zzdzvVar, Context context, zzazn zzaznVar) {
        this.zzghl = zzdzvVar;
        this.context = context;
        this.zzbpn = zzaznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdeu> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdew
            private final zzdex zzhdc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhdc = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhdc.zzato();
            }
        });
    }

    public final /* synthetic */ zzdeu zzato() throws Exception {
        boolean isCallerInstantApp = Wrappers.packageManager(this.context).isCallerInstantApp();
        zzr.zzkr();
        boolean zzau = zzj.zzau(this.context);
        String str = this.zzbpn.zzbrp;
        zzr.zzkt();
        boolean zzze = com.google.android.gms.ads.internal.util.zzr.zzze();
        zzr.zzkr();
        return new zzdeu(isCallerInstantApp, zzau, str, zzze, zzj.zzar(this.context), DynamiteModule.getRemoteVersion(this.context, ModuleDescriptor.MODULE_ID), DynamiteModule.getLocalVersion(this.context, ModuleDescriptor.MODULE_ID));
    }
}
