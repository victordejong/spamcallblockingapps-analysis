package com.google.android.gms.auth.api.credentials;

import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialsClient.class */
public class CredentialsClient extends GoogleApi<Auth.AuthCredentialsOptions> {
    public CredentialsClient(Context context, Auth.AuthCredentialsOptions authCredentialsOptions) {
        super(context, Auth.f5346a, authCredentialsOptions, new ApiExceptionMapper());
    }
}
