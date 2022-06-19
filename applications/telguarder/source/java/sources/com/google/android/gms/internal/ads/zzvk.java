package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvk.class */
public final class zzvk extends RemoteCreator<zzxj> {
    public zzvk() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzxj getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzxj ? (zzxj) queryLocalInterface : new zzxm(iBinder);
    }

    public final zzxi zza(Context context, String str, zzane zzaneVar) {
        try {
            IBinder zzc = getRemoteCreatorInstance(context).zzc(ObjectWrapper.wrap(context), str, zzaneVar, 204204000);
            if (zzc == null) {
                return null;
            }
            IInterface queryLocalInterface = zzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzxi ? (zzxi) queryLocalInterface : new zzxk(zzc);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzazk.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
