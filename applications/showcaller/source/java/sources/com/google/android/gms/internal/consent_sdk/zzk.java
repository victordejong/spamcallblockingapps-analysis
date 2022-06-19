package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import p078c.p084c.p085a.p113d.C1968a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzk.class */
public final class zzk extends Exception {
    private final int zza;

    public zzk(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzk(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }

    public final C1968a zza() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new C1968a(this.zza, getMessage());
    }
}
