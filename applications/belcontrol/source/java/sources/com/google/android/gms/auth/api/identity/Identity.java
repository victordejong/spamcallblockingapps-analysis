package com.google.android.gms.auth.api.identity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth_api.zzak;
import com.google.android.gms.internal.auth_api.zzao;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/Identity.class */
public final class Identity {
    private Identity() {
    }

    public static CredentialSavingClient getCredentialSavingClient(Activity activity) {
        return new zzak((Activity) Preconditions.checkNotNull(activity), zzf.zzg().zzi());
    }

    public static CredentialSavingClient getCredentialSavingClient(Context context) {
        return new zzak((Context) Preconditions.checkNotNull(context), zzf.zzg().zzi());
    }

    public static SignInClient getSignInClient(Activity activity) {
        return new zzao((Activity) Preconditions.checkNotNull(activity), zzl.zzj().zzk());
    }

    public static SignInClient getSignInClient(Context context) {
        return new zzao((Context) Preconditions.checkNotNull(context), zzl.zzj().zzk());
    }
}
