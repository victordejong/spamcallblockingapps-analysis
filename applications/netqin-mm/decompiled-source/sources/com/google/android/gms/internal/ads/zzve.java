package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzve.class */
public final class zzve extends RemoteCreator<zzxh> {
    @VisibleForTesting
    public zzve() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /* renamed from: a */
    public final zzxc m11204a(Context context, zzvn zzvnVar, String str, zzanb zzanbVar, int i) {
        try {
            IBinder a = m17019a(context).mo11144a(ObjectWrapper.m17020a(context), zzvnVar, str, zzanbVar, 202510000, i);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzbbq.m15857a("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzxh mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzxh ? (zzxh) queryLocalInterface : new zzxg(iBinder);
    }
}
