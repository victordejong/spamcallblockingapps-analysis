package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/c.class */
public final class C12260c extends RemoteCreator<els> {
    public C12260c() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ els mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof els ? (els) queryLocalInterface : new elr(iBinder);
    }

    /* renamed from: b */
    public final eln m17534b(Context context) {
        try {
            IBinder mo14804a = m18996a(context).mo14804a(BinderC12129d.m18979a(context));
            if (mo14804a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14804a.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(mo14804a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
