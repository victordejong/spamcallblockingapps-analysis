package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zae.class */
public final class zae implements zab {
    @Override // com.google.android.gms.common.internal.service.zab
    /* renamed from: a */
    public final PendingResult<Status> mo14438a(GoogleApiClient googleApiClient) {
        return googleApiClient.mo14785g(new zad(this, googleApiClient));
    }
}
