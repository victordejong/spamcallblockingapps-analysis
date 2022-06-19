package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebx.class */
public final class ebx extends RemoteCreator<eaf> {
    public ebx() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eaf] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ eaf mo7264a(IBinder iBinder) {
        eai eaiVar;
        if (iBinder == null) {
            eaiVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            eaiVar = queryLocalInterface instanceof eaf ? (eaf) queryLocalInterface : new eai(iBinder);
        }
        return eaiVar;
    }

    /* renamed from: b */
    public final eae m7974b(Context context) {
        eag eagVar;
        try {
            IBinder mo8103a = m13797a(context).mo8103a(BinderC2734b.m13794a(context), 201004000);
            if (mo8103a == null) {
                eagVar = null;
            } else {
                IInterface queryLocalInterface = mo8103a.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                eagVar = queryLocalInterface instanceof eae ? (eae) queryLocalInterface : new eag(mo8103a);
            }
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C3645yb.m6746d("Could not get remote MobileAdsSettingManager.", e);
            eagVar = null;
        }
        return eagVar;
    }
}
