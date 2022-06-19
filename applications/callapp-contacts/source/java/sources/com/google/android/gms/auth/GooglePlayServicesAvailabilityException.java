package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/GooglePlayServicesAvailabilityException.class */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {

    /* renamed from: a */
    private final int f38974a;

    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.f38974a = i;
    }
}
