package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.util.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egu.class */
public final class egu extends zzc<egy> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public egu(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(tm.a(context), looper, 123, aVar, bVar, null);
    }

    public final egy a() throws DeadObjectException {
        return (egy) super.getService();
    }

    public final boolean b() {
        return ((Boolean) ekb.e().a(aq.bl)).booleanValue() && b.a(getAvailableFeatures(), zzb.zzadp);
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return queryLocalInterface instanceof egy ? (egy) queryLocalInterface : new egx(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] getApiFeatures() {
        return zzb.zzadq;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.CACHE";
    }
}
