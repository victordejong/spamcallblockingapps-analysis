package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiz.class */
public final class eiz extends RemoteCreator<ekx> {
    public eiz() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /* renamed from: a */
    public final ekw m14865a(Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) {
        try {
            IBinder mo14812a = m18996a(context).mo14812a(BinderC12129d.m18979a(context), zzvtVar, str, abstractC12746mm, i);
            if (mo14812a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14812a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(mo14812a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ ekx mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof ekx ? (ekx) queryLocalInterface : new ela(iBinder);
    }
}
