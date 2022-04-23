package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {

    /* renamed from: b */
    private static Wrappers f7667b = new Wrappers();

    /* renamed from: a */
    private PackageManagerWrapper f7668a = null;

    @KeepForSdk
    /* renamed from: a */
    public static PackageManagerWrapper m14278a(Context context) {
        return f7667b.m14277b(context);
    }

    @VisibleForTesting
    /* renamed from: b */
    private final PackageManagerWrapper m14277b(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.f7668a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f7668a = new PackageManagerWrapper(context);
            }
            packageManagerWrapper = this.f7668a;
        }
        return packageManagerWrapper;
    }
}
