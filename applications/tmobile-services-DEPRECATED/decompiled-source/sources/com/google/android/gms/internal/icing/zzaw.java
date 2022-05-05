package com.google.android.gms.internal.icing;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.search.SearchAuthApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaw.class */
final class zzaw extends BaseImplementation.ApiMethodImpl<SearchAuthApi.GoogleNowAuthResult, zzap> {

    /* renamed from: s */
    private final String f7877s;

    /* renamed from: t */
    private final String f7878t;

    /* renamed from: u */
    private final boolean f7879u;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: e */
    public final /* synthetic */ Result mo14042e(Status status) {
        if (this.f7879u) {
            String valueOf = String.valueOf(status.m14999I());
            Log.d("SearchAuth", valueOf.length() != 0 ? "GetGoogleNowAuthImpl received failure: ".concat(valueOf) : new String("GetGoogleNowAuthImpl received failure: "));
        }
        return new zzay(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: t */
    protected final /* synthetic */ void mo14041t(zzap zzapVar) throws RemoteException {
        zzap zzapVar2 = zzapVar;
        if (this.f7879u) {
            Log.d("SearchAuth", "GetGoogleNowAuthImpl started");
        }
        ((zzan) zzapVar2.getService()).mo14047O0(new zzav(this), this.f7878t, this.f7877s);
    }
}
