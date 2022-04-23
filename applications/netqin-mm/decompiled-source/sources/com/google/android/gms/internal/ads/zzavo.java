package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.C4164w3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavo.class */
public final class zzavo {
    /* renamed from: a */
    public static zzauy m16294a(Context context, String str, zzanb zzanbVar) {
        try {
            IBinder d = ((zzave) zzbbt.m15847a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", C4164w3.f15901a)).mo16300d(ObjectWrapper.m17020a(context), str, zzanbVar, 202510000);
            if (d == null) {
                return null;
            }
            IInterface queryLocalInterface = d.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzauy ? (zzauy) queryLocalInterface : new zzava(d);
        } catch (RemoteException | zzbbv e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }
}
