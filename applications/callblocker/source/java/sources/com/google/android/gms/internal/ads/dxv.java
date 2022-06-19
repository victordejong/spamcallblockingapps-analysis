package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dxv.class */
public final class dxv extends RemoteCreator<dzl> {
    public dxv() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* renamed from: a */
    public final dzg m8199a(Context context, String str, AbstractC3280ko abstractC3280ko) {
        dzi dziVar;
        try {
            IBinder mo8132a = m13797a(context).mo8132a(BinderC2734b.m13794a(context), str, abstractC3280ko, 201004000);
            if (mo8132a == null) {
                dziVar = null;
            } else {
                IInterface queryLocalInterface = mo8132a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                dziVar = queryLocalInterface instanceof dzg ? (dzg) queryLocalInterface : new dzi(mo8132a);
            }
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C3645yb.m6746d("Could not create remote builder for AdLoader.", e);
            dziVar = null;
        }
        return dziVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dzl] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ dzl mo7264a(IBinder iBinder) {
        dzk dzkVar;
        if (iBinder == null) {
            dzkVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            dzkVar = queryLocalInterface instanceof dzl ? (dzl) queryLocalInterface : new dzk(iBinder);
        }
        return dzkVar;
    }
}
