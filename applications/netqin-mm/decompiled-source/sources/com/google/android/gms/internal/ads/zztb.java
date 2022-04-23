package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztb.class */
public final class zztb extends zzc<zztf> {
    public zztb(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzatx.m16348b(context), looper, 123, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    /* renamed from: A */
    public final String mo8646A() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    /* renamed from: H */
    public final zztf m11440H() throws DeadObjectException {
        return (zztf) super.m17344y();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    /* renamed from: a */
    public final /* synthetic */ IInterface mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return queryLocalInterface instanceof zztf ? (zztf) queryLocalInterface : new zzti(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    /* renamed from: z */
    public final String mo8640z() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }
}
