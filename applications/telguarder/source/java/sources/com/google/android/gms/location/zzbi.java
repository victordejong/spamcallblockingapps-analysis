package com.google.android.gms.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.location.zzaz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbi.class */
public abstract class zzbi<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzaz> {
    public zzbi(GoogleApiClient googleApiClient) {
        super(LocationServices.API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzbi<R>) ((Result) obj));
    }
}
