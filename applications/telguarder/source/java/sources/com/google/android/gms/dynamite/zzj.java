package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzj.class */
final class zzj implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final zzn zza(Context context, String str, zzm zzmVar) throws DynamiteModule.LoadingException {
        int i;
        zzn zznVar = new zzn();
        int zzb = zzmVar.zzb(context, str);
        zznVar.zza = zzb;
        int i2 = 0;
        if (zzb != 0) {
            i = zzmVar.zza(context, str, false);
            zznVar.zzb = i;
        } else {
            i = zzmVar.zza(context, str, true);
            zznVar.zzb = i;
        }
        int i3 = zznVar.zza;
        if (i3 != 0) {
            i2 = i3;
        } else if (i == 0) {
            zznVar.zzc = 0;
            return zznVar;
        }
        if (i >= i2) {
            zznVar.zzc = 1;
        } else {
            zznVar.zzc = -1;
        }
        return zznVar;
    }
}
