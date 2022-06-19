package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ga */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ga.class */
public final class C12572ga extends RemoteCreator<AbstractC12440ee> {
    public C12572ga() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC12439ed m14643a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder mo15052a = m18996a(view.getContext()).mo15052a(BinderC12129d.m18979a(view), BinderC12129d.m18979a(hashMap), BinderC12129d.m18979a(hashMap2));
            if (mo15052a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo15052a.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof AbstractC12439ed ? (AbstractC12439ed) queryLocalInterface : new C12441ef(mo15052a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzd("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ AbstractC12440ee mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof AbstractC12440ee ? (AbstractC12440ee) queryLocalInterface : new C12443eh(iBinder);
    }
}
