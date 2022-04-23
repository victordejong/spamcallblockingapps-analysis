package com.google.api.client.googleapis.extensions.android.gms.auth;

import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/GooglePlayServicesAvailabilityIOException.class */
public class GooglePlayServicesAvailabilityIOException extends UserRecoverableAuthIOException {
    public GooglePlayServicesAvailabilityIOException(GooglePlayServicesAvailabilityException googlePlayServicesAvailabilityException) {
        super(googlePlayServicesAvailabilityException);
    }

    @Override // com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException, com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAuthIOException
    public final /* synthetic */ GoogleAuthException a() {
        return (GooglePlayServicesAvailabilityException) super.getCause();
    }

    @Override // com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException
    public final /* bridge */ /* synthetic */ UserRecoverableAuthException b() {
        return (GooglePlayServicesAvailabilityException) super.getCause();
    }

    @Override // com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException, com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAuthIOException, java.lang.Throwable
    public /* synthetic */ Throwable getCause() {
        return (GooglePlayServicesAvailabilityException) super.getCause();
    }
}
