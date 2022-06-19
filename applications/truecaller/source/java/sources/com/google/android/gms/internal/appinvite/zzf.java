package com.google.android.gms.internal.appinvite;

import android.app.Activity;
import com.google.android.gms.appinvite.AppInviteApi;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzf.class */
public final class zzf implements AppInviteApi {
    public final PendingResult<Status> convertInvitation(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.mo38957h(new zzi(this, googleApiClient, str));
    }

    public final PendingResult<AppInviteInvitationResult> getInvitation(GoogleApiClient googleApiClient, Activity activity, boolean z) {
        return googleApiClient.mo38957h(new zzk(this, googleApiClient, activity, z));
    }

    public final PendingResult<Status> updateInvitationOnInstall(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.mo38957h(new zzg(this, googleApiClient, str));
    }
}
