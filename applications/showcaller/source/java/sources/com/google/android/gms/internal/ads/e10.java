package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e10.class */
public final class e10 extends RemoteCreator<AbstractC6793nz> {
    public e10() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC6793nz mo10567a(IBinder iBinder) {
        C6719lz c6719lz;
        if (iBinder == null) {
            c6719lz = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            c6719lz = queryLocalInterface instanceof AbstractC6793nz ? (AbstractC6793nz) queryLocalInterface : new C6719lz(iBinder);
        }
        return c6719lz;
    }

    /* renamed from: c */
    public final AbstractC6682kz m15609c(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        C6608iz c6608iz;
        try {
            IBinder mo12778E5 = m16747b(context).mo12778E5(BinderC6255b.m16744m2(context), BinderC6255b.m16744m2(frameLayout), BinderC6255b.m16744m2(frameLayout2), 213806000);
            if (mo12778E5 == null) {
                c6608iz = null;
            } else {
                IInterface queryLocalInterface = mo12778E5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
                c6608iz = queryLocalInterface instanceof AbstractC6682kz ? (AbstractC6682kz) queryLocalInterface : new C6608iz(mo12778E5);
            }
            return c6608iz;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            ei0.m15463g("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
