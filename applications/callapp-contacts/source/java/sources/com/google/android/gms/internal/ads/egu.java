package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.util.C12098b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egu.class */
public final class egu extends zzc<egy> {
    public egu(Context context, Looper looper, AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b) {
        super(C12936tm.m14155a(context), looper, 123, abstractC12026a, abstractC12027b, null);
    }

    /* renamed from: a */
    public final egy m15059a() throws DeadObjectException {
        return (egy) super.getService();
    }

    /* renamed from: b */
    public final boolean m15058b() {
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() && C12098b.m19048a(getAvailableFeatures(), zzb.zzadp);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return queryLocalInterface instanceof egy ? (egy) queryLocalInterface : new egx(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Feature[] getApiFeatures() {
        return zzb.zzadq;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.CACHE";
    }
}
