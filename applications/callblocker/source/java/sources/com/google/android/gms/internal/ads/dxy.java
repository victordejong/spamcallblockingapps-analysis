package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dxy.class */
public final class dxy extends RemoteCreator<dzp> {
    public dxy() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /* renamed from: a */
    public final dzn m8198a(Context context, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        dzq dzqVar;
        try {
            IBinder mo8129a = m13797a(context).mo8129a(BinderC2734b.m13794a(context), dydVar, str, abstractC3280ko, 201004000, i);
            if (mo8129a == null) {
                dzqVar = null;
            } else {
                IInterface queryLocalInterface = mo8129a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(mo8129a);
            }
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C3645yb.m6750b("Could not create remote AdManager.", e);
            dzqVar = null;
        }
        return dzqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dzp] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ dzp mo7264a(IBinder iBinder) {
        dzs dzsVar;
        if (iBinder == null) {
            dzsVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            dzsVar = queryLocalInterface instanceof dzp ? (dzp) queryLocalInterface : new dzs(iBinder);
        }
        return dzsVar;
    }
}
