package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import com.google.android.p314c.C10620e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzk.class */
public final class zzk extends Exception {

    /* renamed from: a */
    private final int f50524a;

    public zzk(int i, String str) {
        super(str);
        this.f50524a = i;
    }

    public zzk(int i, String str, Throwable th) {
        super(str, th);
        this.f50524a = i;
    }

    /* renamed from: a */
    public final C10620e m13511a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new C10620e(this.f50524a, getMessage());
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }
}
