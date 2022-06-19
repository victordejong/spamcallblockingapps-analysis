package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.nw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nw.class */
public final class C3369nw extends RemoteCreator<AbstractC3372nz> {
    public C3369nw() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC3371ny m7385a(Activity activity) {
        C3374oa c3374oa;
        try {
            IBinder mo7364a = m13797a((Context) activity).mo7364a(BinderC2734b.m13794a(activity));
            if (mo7364a == null) {
                c3374oa = null;
            } else {
                IInterface queryLocalInterface = mo7364a.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                c3374oa = queryLocalInterface instanceof AbstractC3371ny ? (AbstractC3371ny) queryLocalInterface : new C3374oa(mo7364a);
            }
        } catch (RemoteException e) {
            C3645yb.m6746d("Could not create remote AdOverlay.", e);
            c3374oa = null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            C3645yb.m6746d("Could not create remote AdOverlay.", e2);
            c3374oa = null;
        }
        return c3374oa;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.nz] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ AbstractC3372nz mo7264a(IBinder iBinder) {
        C3376oc c3376oc;
        if (iBinder == null) {
            c3376oc = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            c3376oc = queryLocalInterface instanceof AbstractC3372nz ? (AbstractC3372nz) queryLocalInterface : new C3376oc(iBinder);
        }
        return c3376oc;
    }
}
