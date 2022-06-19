package com.google.android.gms.common.wrappers;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {
    private static Wrappers zzb = new Wrappers();
    private PackageManagerWrapper zza = null;

    public static PackageManagerWrapper packageManager(Context context) {
        return zzb.zza(context);
    }

    public final PackageManagerWrapper zza(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.zza == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.zza = new PackageManagerWrapper(context2);
            }
            packageManagerWrapper = this.zza;
        }
        return packageManagerWrapper;
    }
}
