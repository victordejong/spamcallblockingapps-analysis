package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzh.class */
public final class zzh implements WorkAccountApi {
    private static final Status zzad = new Status(13, null);

    public final PendingResult<WorkAccountApi.AddAccountResult> addWorkAccount(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.mo38956i(new zzj(this, WorkAccount.f5344c, googleApiClient, str));
    }

    public final PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, Account account) {
        return googleApiClient.mo38956i(new zzl(this, WorkAccount.f5344c, googleApiClient, account));
    }

    public final void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, boolean z) {
        setWorkAuthenticatorEnabledWithResult(googleApiClient, z);
    }

    public final PendingResult<Result> setWorkAuthenticatorEnabledWithResult(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.mo38956i(new zzi(this, WorkAccount.f5344c, googleApiClient, z));
    }
}
