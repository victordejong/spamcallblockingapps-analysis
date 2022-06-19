package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zzi.class */
public final class zzi {
    private static Logger zzci = new Logger("GoogleSignInCommon", new String[0]);

    public static GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        if (intent == null) {
            return new GoogleSignInResult((GoogleSignInAccount) null, Status.RESULT_INTERNAL_ERROR);
        }
        Status parcelableExtra = intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount parcelableExtra2 = intent.getParcelableExtra("googleSignInAccount");
        if (parcelableExtra2 != null) {
            return new GoogleSignInResult(parcelableExtra2, Status.RESULT_SUCCESS);
        }
        Status status = parcelableExtra;
        if (parcelableExtra == null) {
            status = Status.RESULT_INTERNAL_ERROR;
        }
        return new GoogleSignInResult((GoogleSignInAccount) null, status);
    }

    public static Intent zzc(Context context, GoogleSignInOptions googleSignInOptions) {
        zzci.m4425d("getSignInIntent()", new Object[0]);
        Parcelable signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.OptionalPendingResult<com.google.android.gms.auth.api.signin.GoogleSignInResult> zzc(com.google.android.gms.common.api.GoogleApiClient r9, android.content.Context r10, com.google.android.gms.auth.api.signin.GoogleSignInOptions r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.zzi.zzc(com.google.android.gms.common.api.GoogleApiClient, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):com.google.android.gms.common.api.OptionalPendingResult");
    }

    public static PendingResult<Status> zzc(GoogleApiClient googleApiClient, Context context, boolean z) {
        zzci.m4425d("Signing out", new Object[0]);
        zzc(context);
        return z ? PendingResults.immediatePendingResult(Status.RESULT_SUCCESS, googleApiClient) : googleApiClient.execute(new zzj(googleApiClient));
    }

    private static void zzc(Context context) {
        zzq.zzd(context).clear();
        for (GoogleApiClient googleApiClient : GoogleApiClient.getAllClients()) {
            googleApiClient.maybeSignOut();
        }
        GoogleApiManager.reportSignOut();
    }

    public static Intent zzd(Context context, GoogleSignInOptions googleSignInOptions) {
        zzci.m4425d("getFallbackSignInIntent()", new Object[0]);
        Intent zzc = zzc(context, googleSignInOptions);
        zzc.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return zzc;
    }

    public static PendingResult<Status> zzd(GoogleApiClient googleApiClient, Context context, boolean z) {
        zzci.m4425d("Revoking access", new Object[0]);
        String savedRefreshToken = Storage.getInstance(context).getSavedRefreshToken();
        zzc(context);
        return z ? zze.zzi(savedRefreshToken) : googleApiClient.execute(new zzl(googleApiClient));
    }

    public static Intent zze(Context context, GoogleSignInOptions googleSignInOptions) {
        zzci.m4425d("getNoImplementationSignInIntent()", new Object[0]);
        Intent zzc = zzc(context, googleSignInOptions);
        zzc.setAction("com.google.android.gms.auth.NO_IMPL");
        return zzc;
    }
}
