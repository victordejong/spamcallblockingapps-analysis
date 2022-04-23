package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fx.class */
public final class fx extends RemoteCreator<eb> {
    public fx() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    public final dv a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder a2 = a(context).a(d.a(context), d.a(frameLayout), d.a(frameLayout2));
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof dv ? (dv) queryLocalInterface : new dx(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ eb a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof eb ? (eb) queryLocalInterface : new ea(iBinder);
    }
}
