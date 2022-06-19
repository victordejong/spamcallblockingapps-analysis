package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInApi.class */
public interface GoogleSignInApi {
    @RecentlyNonNull
    /* renamed from: a */
    Intent mo39106a(@RecentlyNonNull GoogleApiClient googleApiClient);

    @RecentlyNullable
    /* renamed from: b */
    GoogleSignInResult mo39105b(@RecentlyNonNull Intent intent);

    @RecentlyNonNull
    /* renamed from: c */
    PendingResult<Status> mo39104c(@RecentlyNonNull GoogleApiClient googleApiClient);

    @RecentlyNonNull
    /* renamed from: d */
    PendingResult<Status> mo39103d(@RecentlyNonNull GoogleApiClient googleApiClient);
}
