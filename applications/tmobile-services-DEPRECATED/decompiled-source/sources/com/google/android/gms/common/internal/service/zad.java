package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zad.class */
final class zad extends zai {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zad(zae zaeVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: t */
    protected final /* synthetic */ void mo14041t(zah zahVar) throws RemoteException {
        ((zam) zahVar.getService()).mo14436H0(new zag(this));
    }
}
