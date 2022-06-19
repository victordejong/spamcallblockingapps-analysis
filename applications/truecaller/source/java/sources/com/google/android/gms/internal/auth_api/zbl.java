package com.google.android.gms.internal.auth_api;

import android.app.PendingIntent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbl.class */
public final class zbl implements CredentialsApi {
    public final PendingResult<Status> delete(GoogleApiClient googleApiClient, Credential credential) {
        Preconditions.m38897k(googleApiClient, "client must not be null");
        Preconditions.m38897k(credential, "credential must not be null");
        return googleApiClient.mo38956i(new zbi(this, googleApiClient, credential));
    }

    public final PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        Preconditions.m38897k(googleApiClient, "client must not be null");
        return googleApiClient.mo38956i(new zbj(this, googleApiClient));
    }

    public final PendingIntent getHintPickerIntent(GoogleApiClient googleApiClient, HintRequest hintRequest) {
        Preconditions.m38897k(googleApiClient, "client must not be null");
        Preconditions.m38897k(hintRequest, "request must not be null");
        Auth.AuthCredentialsOptions zba = ((zbo) googleApiClient.mo38997k(Auth.f5350e)).zba();
        return zbn.zba(googleApiClient.mo38955l(), zba, hintRequest, zba.f5356b);
    }

    public final PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        Preconditions.m38897k(googleApiClient, "client must not be null");
        Preconditions.m38897k(credentialRequest, "request must not be null");
        return googleApiClient.mo38957h(new zbg(this, googleApiClient, credentialRequest));
    }

    public final PendingResult<Status> save(GoogleApiClient googleApiClient, Credential credential) {
        Preconditions.m38897k(googleApiClient, "client must not be null");
        Preconditions.m38897k(credential, "credential must not be null");
        return googleApiClient.mo38956i(new zbh(this, googleApiClient, credential));
    }
}
