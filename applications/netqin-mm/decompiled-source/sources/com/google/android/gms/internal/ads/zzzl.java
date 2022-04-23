package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzl.class */
public final class zzzl extends RemoteCreator<zzxx> {
    public zzzl() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzxx mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof zzxx ? (zzxx) queryLocalInterface : new zzxw(iBinder);
    }

    /* renamed from: b */
    public final zzxs m10985b(Context context) {
        try {
            IBinder e = m17019a(context).mo11124e(ObjectWrapper.m17020a(context), 202510000);
            if (e == null) {
                return null;
            }
            IInterface queryLocalInterface = e.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzxs ? (zzxs) queryLocalInterface : new zzxu(e);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzbbq.m15853c("Could not get remote MobileAdsSettingManager.", e2);
            return null;
        }
    }
}
