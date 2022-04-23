package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/GooglePlayServicesAvailabilityException.class */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {

    /* renamed from: a  reason: collision with root package name */
    private final int f22446a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.f22446a = i;
    }
}
