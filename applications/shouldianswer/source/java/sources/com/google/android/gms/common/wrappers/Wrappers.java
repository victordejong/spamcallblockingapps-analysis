package com.google.android.gms.common.wrappers;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {
    private static Wrappers zzhz = new Wrappers();
    private PackageManagerWrapper zzhy = null;

    public static PackageManagerWrapper packageManager(Context context) {
        return zzhz.zzi(context);
    }

    private final PackageManagerWrapper zzi(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.zzhy == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.zzhy = new PackageManagerWrapper(context);
            }
            packageManagerWrapper = this.zzhy;
        }
        return packageManagerWrapper;
    }
}
