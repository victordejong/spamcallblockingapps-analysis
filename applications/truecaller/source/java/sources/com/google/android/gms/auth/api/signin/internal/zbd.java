package com.google.android.gms.auth.api.signin.internal;

import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbd.class */
public final class zbd implements GoogleSignInApi {
    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    /* renamed from: a */
    public final Intent mo39106a(GoogleApiClient googleApiClient) {
        return zbm.m39102a(googleApiClient.mo38955l(), ((zbe) googleApiClient.mo38997k(Auth.f5351f)).f5569a);
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    /* renamed from: b */
    public final GoogleSignInResult mo39105b(Intent intent) {
        GoogleSignInResult googleSignInResult;
        Logger logger = zbm.f5570a;
        if (intent == null) {
            googleSignInResult = new GoogleSignInResult(null, Status.f5724h);
        } else {
            Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
            if (googleSignInAccount == null) {
                Status status2 = status;
                if (status == null) {
                    status2 = Status.f5724h;
                }
                googleSignInResult = new GoogleSignInResult(null, status2);
            } else {
                googleSignInResult = new GoogleSignInResult(googleSignInAccount, Status.f5722f);
            }
        }
        return googleSignInResult;
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    /* renamed from: c */
    public final PendingResult<Status> mo39104c(GoogleApiClient googleApiClient) {
        return zbm.m39101b(googleApiClient, googleApiClient.mo38955l(), false);
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    /* renamed from: d */
    public final PendingResult<Status> mo39103d(GoogleApiClient googleApiClient) {
        return zbm.m39100c(googleApiClient, googleApiClient.mo38955l(), false);
    }
}
