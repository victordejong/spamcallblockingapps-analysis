package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzc.class */
final class zzc implements zzm {
    @Override // com.google.android.gms.dynamite.zzm
    public final int zza(Context context, String str, boolean z) throws DynamiteModule.LoadingException {
        return DynamiteModule.zza(context, str, z);
    }

    @Override // com.google.android.gms.dynamite.zzm
    public final int zzb(Context context, String str) {
        return DynamiteModule.getLocalVersion(context, str);
    }
}
