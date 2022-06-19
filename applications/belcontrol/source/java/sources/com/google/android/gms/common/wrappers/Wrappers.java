package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {
    private static Wrappers zzb = new Wrappers();
    private PackageManagerWrapper zza = null;

    @RecentlyNonNull
    @KeepForSdk
    public static PackageManagerWrapper packageManager(@RecentlyNonNull Context context) {
        return zzb.zza(context);
    }

    @RecentlyNonNull
    @VisibleForTesting
    public final PackageManagerWrapper zza(@RecentlyNonNull Context context) {
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
