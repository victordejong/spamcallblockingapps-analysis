package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ia.class */
public final class ia extends zzc<AbstractC0760if> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ia(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(tm.a(context), looper, 166, aVar, bVar, null);
    }

    public final AbstractC0760if a() throws DeadObjectException {
        return (AbstractC0760if) super.getService();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return queryLocalInterface instanceof AbstractC0760if ? (AbstractC0760if) queryLocalInterface : new ii(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.HTTP";
    }
}
