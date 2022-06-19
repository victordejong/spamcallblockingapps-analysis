package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.qx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qx.class */
public final class C12866qx extends RemoteCreator<AbstractC12870ra> {
    public C12866qx() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC12868qz m14215a(Activity activity) {
        try {
            IBinder mo14213a = m18996a((Context) activity).mo14213a(BinderC12129d.m18979a(activity));
            if (mo14213a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14213a.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof AbstractC12868qz ? (AbstractC12868qz) queryLocalInterface : new C12871rb(mo14213a);
        } catch (RemoteException e) {
            C13088za.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            C13088za.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ AbstractC12870ra mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof AbstractC12870ra ? (AbstractC12870ra) queryLocalInterface : new C12873rd(iBinder);
    }
}
