package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
/* renamed from: com.google.android.gms.internal.ads.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/t.class */
public final class BinderC12923t extends emb {

    /* renamed from: a */
    private final OnAdMetadataChangedListener f49821a;

    public BinderC12923t(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f49821a = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.emc
    /* renamed from: a */
    public final void mo14186a() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f49821a;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
