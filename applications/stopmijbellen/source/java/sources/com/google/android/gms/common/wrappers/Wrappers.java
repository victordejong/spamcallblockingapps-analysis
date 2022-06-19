package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {
    private static Wrappers zza = new Wrappers();
    private PackageManagerWrapper zzb = null;

    @KeepForSdk
    public static PackageManagerWrapper packageManager(Context context) {
        return zza.zza(context);
    }

    @VisibleForTesting
    public final PackageManagerWrapper zza(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.zzb == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.zzb = new PackageManagerWrapper(context2);
            }
            packageManagerWrapper = this.zzb;
        }
        return packageManagerWrapper;
    }
}
