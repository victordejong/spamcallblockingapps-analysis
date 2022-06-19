package com.google.android.gms.internal.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zze.class */
public final class zze implements Account {
    @Override // com.google.android.gms.plus.Account
    public final void clearDefaultAccount(GoogleApiClient googleApiClient) {
        zzh zza = Plus.zza(googleApiClient, false);
        if (zza != null) {
            zza.zza();
        }
    }

    @Override // com.google.android.gms.plus.Account
    public final String getAccountName(GoogleApiClient googleApiClient) {
        return Plus.zza(googleApiClient, true).getAccountName();
    }

    @Override // com.google.android.gms.plus.Account
    public final PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.execute(new zzf(this, googleApiClient));
    }
}
