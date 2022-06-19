package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvj.class */
public final class zzvj extends RemoteCreator<zzxq> {
    public zzvj() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzxq getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzxq ? (zzxq) queryLocalInterface : new zzxp(iBinder);
    }

    public final zzxl zza(Context context, zzvs zzvsVar, String str, zzane zzaneVar, int i) {
        try {
            IBinder zza = getRemoteCreatorInstance(context).zza(ObjectWrapper.wrap(context), zzvsVar, str, zzaneVar, 204204000, i);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof zzxl ? (zzxl) queryLocalInterface : new zzxn(zza);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzazk.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }
}
