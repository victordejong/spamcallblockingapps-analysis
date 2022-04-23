package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sg.class */
public final class sg extends zzc<sj> {
    public sg(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(tm.a(context), looper, 8, aVar, bVar, null);
    }

    public final sj a() throws DeadObjectException {
        return (sj) super.getService();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return queryLocalInterface instanceof sj ? (sj) queryLocalInterface : new sl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }
}
