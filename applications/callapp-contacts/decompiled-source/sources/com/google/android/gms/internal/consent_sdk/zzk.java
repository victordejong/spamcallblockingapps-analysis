package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import com.google.android.c.e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzk.class */
public final class zzk extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final int f28864a;

    public zzk(int i, String str) {
        super(str);
        this.f28864a = i;
    }

    public zzk(int i, String str, Throwable th) {
        super(str, th);
        this.f28864a = i;
    }

    public final e a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new e(this.f28864a, getMessage());
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }
}
