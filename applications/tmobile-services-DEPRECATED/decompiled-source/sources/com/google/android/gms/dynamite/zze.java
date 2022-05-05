package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zze.class */
final class zze implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.zzb mo14215a(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        int a = zzaVar.mo14217a(context, str);
        zzbVar.f7707a = a;
        if (a != 0) {
            zzbVar.f7708b = zzaVar.mo14216b(context, str, false);
        } else {
            zzbVar.f7708b = zzaVar.mo14216b(context, str, true);
        }
        if (zzbVar.f7707a == 0 && zzbVar.f7708b == 0) {
            zzbVar.f7709c = 0;
        } else if (zzbVar.f7707a >= zzbVar.f7708b) {
            zzbVar.f7709c = -1;
        } else {
            zzbVar.f7709c = 1;
        }
        return zzbVar;
    }
}
