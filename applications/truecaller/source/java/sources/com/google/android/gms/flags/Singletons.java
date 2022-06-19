package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Singletons.class */
public final class Singletons {

    /* renamed from: b */
    public static Singletons f6197b;

    /* renamed from: a */
    public final FlagRegistry f6198a = new FlagRegistry();

    static {
        Singletons singletons = new Singletons();
        synchronized (Singletons.class) {
            try {
                f6197b = singletons;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Singletons() {
        new zzb();
    }
}
