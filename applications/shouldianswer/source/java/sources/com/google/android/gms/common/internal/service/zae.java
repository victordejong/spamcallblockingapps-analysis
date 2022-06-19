package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zae.class */
final class zae extends zah {
    public zae(zad zadVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zai zaiVar) {
        ((zal) zaiVar.getService()).zaa(new zaf(this));
    }
}
