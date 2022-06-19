package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/GooglePlayServicesAvailabilityException.class */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int zzu;

    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzu = i;
    }

    public int getConnectionStatusCode() {
        return this.zzu;
    }
}
