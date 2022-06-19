package com.google.android.gms.internal.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzp.class */
abstract class zzp extends Plus.zza<People.LoadPeopleResult> {
    private zzp(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    public /* synthetic */ zzp(GoogleApiClient googleApiClient, zzk zzkVar) {
        this(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result createFailedResult(Status status) {
        return new zzq(this, status);
    }
}
