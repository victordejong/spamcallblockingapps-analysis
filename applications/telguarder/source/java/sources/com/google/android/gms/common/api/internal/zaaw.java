package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaw.class */
public final class zaaw implements ResultCallback<Status> {
    final /* synthetic */ StatusPendingResult zaa;
    final /* synthetic */ boolean zab;
    final /* synthetic */ GoogleApiClient zac;
    final /* synthetic */ zaaz zad;

    public zaaw(zaaz zaazVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.zad = zaazVar;
        this.zaa = statusPendingResult;
        this.zab = z;
        this.zac = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* bridge */ /* synthetic */ void onResult(Status status) {
        Context context;
        Status status2 = status;
        context = this.zad.zan;
        Storage.getInstance(context).zac();
        if (status2.isSuccess() && this.zad.isConnected()) {
            zaaz zaazVar = this.zad;
            zaazVar.disconnect();
            zaazVar.connect();
        }
        this.zaa.setResult(status2);
        if (this.zab) {
            this.zac.disconnect();
        }
    }
}
