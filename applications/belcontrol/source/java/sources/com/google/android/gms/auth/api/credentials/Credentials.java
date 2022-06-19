package com.google.android.gms.auth.api.credentials;

import android.app.Activity;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credentials.class */
public class Credentials {
    public static CredentialsClient getClient(Activity activity) {
        return new CredentialsClient(activity, CredentialsOptions.DEFAULT);
    }

    public static CredentialsClient getClient(Activity activity, CredentialsOptions credentialsOptions) {
        return new CredentialsClient(activity, credentialsOptions);
    }

    public static CredentialsClient getClient(Context context) {
        return new CredentialsClient(context, CredentialsOptions.DEFAULT);
    }

    public static CredentialsClient getClient(Context context, CredentialsOptions credentialsOptions) {
        return new CredentialsClient(context, credentialsOptions);
    }
}
