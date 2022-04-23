package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/t.class */
public final class t extends emb {

    /* renamed from: a  reason: collision with root package name */
    private final OnAdMetadataChangedListener f28385a;

    public t(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f28385a = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.emc
    public final void a() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f28385a;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
