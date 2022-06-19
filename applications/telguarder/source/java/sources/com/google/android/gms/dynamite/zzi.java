package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzi.class */
final class zzi implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final zzn zza(Context context, String str, zzm zzmVar) throws DynamiteModule.LoadingException {
        zzn zznVar = new zzn();
        zznVar.zza = zzmVar.zzb(context, str);
        int zza = zzmVar.zza(context, str, true);
        zznVar.zzb = zza;
        int i = zznVar.zza;
        int i2 = i;
        if (i == 0) {
            if (zza == 0) {
                zznVar.zzc = 0;
                return zznVar;
            }
            i2 = 0;
        }
        if (zza >= i2) {
            zznVar.zzc = 1;
        } else {
            zznVar.zzc = -1;
        }
        return zznVar;
    }
}
