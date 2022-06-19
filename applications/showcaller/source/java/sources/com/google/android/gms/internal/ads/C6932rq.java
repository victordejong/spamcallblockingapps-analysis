package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.rq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rq.class */
public final class C6932rq extends RemoteCreator<C6897qs> {
    public C6932rq() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ C6897qs mo10567a(IBinder iBinder) {
        C6897qs c6897qs;
        if (iBinder == null) {
            c6897qs = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            c6897qs = queryLocalInterface instanceof C6897qs ? (C6897qs) queryLocalInterface : new C6897qs(iBinder);
        }
        return c6897qs;
    }

    /* renamed from: c */
    public final AbstractC6860ps m11334c(Context context, String str, s70 s70Var) {
        C6786ns c6786ns;
        try {
            IBinder m11809a3 = m16747b(context).m11809a3(BinderC6255b.m16744m2(context), str, s70Var, 213806000);
            if (m11809a3 == null) {
                c6786ns = null;
            } else {
                IInterface queryLocalInterface = m11809a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                c6786ns = queryLocalInterface instanceof AbstractC6860ps ? (AbstractC6860ps) queryLocalInterface : new C6786ns(m11809a3);
            }
            return c6786ns;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            ei0.m15463g("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
