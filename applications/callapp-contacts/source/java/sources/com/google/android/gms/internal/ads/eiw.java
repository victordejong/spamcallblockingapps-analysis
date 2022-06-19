package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiw.class */
public final class eiw extends RemoteCreator<eku> {
    public eiw() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* renamed from: a */
    public final ekp m14866a(Context context, String str, AbstractC12746mm abstractC12746mm) {
        try {
            IBinder mo14814a = m18996a(context).mo14814a(BinderC12129d.m18979a(context), str, abstractC12746mm);
            if (mo14814a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14814a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof ekp ? (ekp) queryLocalInterface : new ekr(mo14814a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ eku mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof eku ? (eku) queryLocalInterface : new ekt(iBinder);
    }
}
