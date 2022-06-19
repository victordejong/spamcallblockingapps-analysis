package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.fx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fx.class */
public final class C12568fx extends RemoteCreator<AbstractC12437eb> {
    public C12568fx() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC12428dv m14646a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder mo15337a = m18996a(context).mo15337a(BinderC12129d.m18979a(context), BinderC12129d.m18979a(frameLayout), BinderC12129d.m18979a(frameLayout2));
            if (mo15337a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo15337a.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof AbstractC12428dv ? (AbstractC12428dv) queryLocalInterface : new C12431dx(mo15337a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ AbstractC12437eb mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof AbstractC12437eb ? (AbstractC12437eb) queryLocalInterface : new C12436ea(iBinder);
    }
}
