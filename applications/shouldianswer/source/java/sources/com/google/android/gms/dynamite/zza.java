package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zza.class */
public final class zza implements DynamiteModule.VersionPolicy.zza {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
    public final int getLocalVersion(Context context, String str) {
        return DynamiteModule.getLocalVersion(context, str);
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
    public final int zza(Context context, String str, boolean z) {
        return DynamiteModule.zza(context, str, z);
    }
}
