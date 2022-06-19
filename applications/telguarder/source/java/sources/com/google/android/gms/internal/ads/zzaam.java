package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaam.class */
public final class zzaam extends zzyu {
    private final OnAdMetadataChangedListener zzclq;

    public zzaam(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzclq = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void onAdMetadataChanged() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.zzclq;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
