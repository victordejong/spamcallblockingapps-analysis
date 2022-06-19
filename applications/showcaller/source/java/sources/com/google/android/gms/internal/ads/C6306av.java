package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.av */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/av.class */
public final class C6306av extends RemoteCreator<C6750mt> {
    public C6306av() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ C6750mt mo10567a(IBinder iBinder) {
        C6750mt c6750mt;
        if (iBinder == null) {
            c6750mt = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            c6750mt = queryLocalInterface instanceof C6750mt ? (C6750mt) queryLocalInterface : new C6750mt(iBinder);
        }
        return c6750mt;
    }

    /* renamed from: c */
    public final AbstractC6713lt m16481c(Context context) {
        C6639jt c6639jt;
        try {
            IBinder m13084a3 = m16747b(context).m13084a3(BinderC6255b.m16744m2(context), 213806000);
            if (m13084a3 == null) {
                c6639jt = null;
            } else {
                IInterface queryLocalInterface = m13084a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                c6639jt = queryLocalInterface instanceof AbstractC6713lt ? (AbstractC6713lt) queryLocalInterface : new C6639jt(m13084a3);
            }
            return c6639jt;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            ei0.m15463g("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
