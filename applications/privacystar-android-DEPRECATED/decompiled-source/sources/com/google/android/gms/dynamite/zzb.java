package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzb.class */
final class zzb implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.zzb zza(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        zzbVar.zzir = zzaVar.zza(context, str, true);
        if (zzbVar.zzir != 0) {
            zzbVar.zzis = 1;
        } else {
            zzbVar.zziq = zzaVar.getLocalVersion(context, str);
            if (zzbVar.zziq != 0) {
                zzbVar.zzis = -1;
            }
        }
        return zzbVar;
    }
}
