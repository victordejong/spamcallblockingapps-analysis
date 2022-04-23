package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiw.class */
public final class eiw extends RemoteCreator<eku> {
    public eiw() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final ekp a(Context context, String str, mm mmVar) {
        try {
            IBinder a2 = a(context).a(d.a(context), str, mmVar);
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof ekp ? (ekp) queryLocalInterface : new ekr(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ eku a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof eku ? (eku) queryLocalInterface : new ekt(iBinder);
    }
}
