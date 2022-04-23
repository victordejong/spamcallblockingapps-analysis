package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ga.class */
public final class ga extends RemoteCreator<ee> {
    public ga() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    public final ed a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder a2 = a(view.getContext()).a(d.a(view), d.a(hashMap), d.a(hashMap2));
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof ed ? (ed) queryLocalInterface : new ef(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzd("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ ee a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof ee ? (ee) queryLocalInterface : new eh(iBinder);
    }
}
