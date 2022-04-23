package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvf.class */
public final class zzvf extends RemoteCreator<zzxa> {
    public zzvf() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* renamed from: a */
    public final zzwz m11203a(Context context, String str, zzanb zzanbVar) {
        try {
            IBinder c = m17019a(context).mo11146c(ObjectWrapper.m17020a(context), str, zzanbVar, 202510000);
            if (c == null) {
                return null;
            }
            IInterface queryLocalInterface = c.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzwz ? (zzwz) queryLocalInterface : new zzxb(c);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzbbq.m15853c("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzxa mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzxa ? (zzxa) queryLocalInterface : new zzxd(iBinder);
    }
}
