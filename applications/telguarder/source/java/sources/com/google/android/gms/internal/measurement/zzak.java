package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.zzfd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzak.class */
public final class zzak extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Context zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ zzbr zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(zzbr zzbrVar, String str, String str2, Context context, Bundle bundle) {
        super(zzbrVar, true);
        this.zze = zzbrVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = context;
        this.zzd = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        boolean zzX;
        String str;
        String str2;
        String str3;
        Boolean bool;
        zzp zzpVar;
        int i;
        boolean z;
        zzp zzpVar2;
        String str4;
        String str5;
        try {
            zzbr zzbrVar = this.zze;
            zzX = zzbr.zzX(this.zza, this.zzb);
            if (zzX) {
                str3 = this.zzb;
                str2 = this.zza;
                str5 = this.zze.zzd;
                str = str5;
            } else {
                str3 = null;
                str2 = null;
                str = null;
            }
            zzbr.zzO(this.zzc);
            bool = zzbr.zzh;
            boolean z2 = bool.booleanValue() || str2 != null;
            zzbr zzbrVar2 = this.zze;
            zzbrVar2.zzk = zzbrVar2.zzc(this.zzc, z2);
            zzpVar = this.zze.zzk;
            if (zzpVar == null) {
                str4 = this.zze.zzd;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int localVersion = DynamiteModule.getLocalVersion(this.zzc, ModuleDescriptor.MODULE_ID);
            int remoteVersion = DynamiteModule.getRemoteVersion(this.zzc, ModuleDescriptor.MODULE_ID);
            if (z2) {
                i = Math.max(localVersion, remoteVersion);
                z = remoteVersion < localVersion;
            } else {
                i = remoteVersion;
                if (localVersion > 0) {
                    i = localVersion;
                }
                z = localVersion > 0;
            }
            zzy zzyVar = new zzy(39000L, i, z, str, str2, str3, this.zzd, zzfd.zza(this.zzc));
            zzpVar2 = this.zze.zzk;
            zzpVar2.initialize(ObjectWrapper.wrap(this.zzc), zzyVar, this.zzh);
        } catch (Exception e) {
            this.zze.zzV(e, true, false);
        }
    }
}
