package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {

    /* renamed from: b */
    public static Wrappers f6152b = new Wrappers();

    /* renamed from: a */
    public PackageManagerWrapper f6153a = null;

    @KeepForSdk
    /* renamed from: a */
    public static PackageManagerWrapper m38764a(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        Wrappers wrappers = f6152b;
        synchronized (wrappers) {
            if (wrappers.f6153a == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                wrappers.f6153a = new PackageManagerWrapper(context2);
            }
            packageManagerWrapper = wrappers.f6153a;
        }
        return packageManagerWrapper;
    }
}
