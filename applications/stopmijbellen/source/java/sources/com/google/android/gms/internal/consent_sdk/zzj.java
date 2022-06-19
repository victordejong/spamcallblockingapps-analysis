package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import p231s4.C4295e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzj.class */
public final class zzj extends Exception {
    private final int zza;

    public zzj(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzj(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }

    public final C4295e zza() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new C4295e(this.zza, getMessage());
    }
}
