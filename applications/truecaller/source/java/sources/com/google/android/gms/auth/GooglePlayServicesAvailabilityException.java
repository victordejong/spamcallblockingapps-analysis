package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/GooglePlayServicesAvailabilityException.class */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
    }
}
