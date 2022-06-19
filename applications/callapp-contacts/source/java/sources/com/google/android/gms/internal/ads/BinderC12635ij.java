package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ij */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ij.class */
final class BinderC12635ij extends AbstractBinderC12632ig {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f49370a;

    public BinderC12635ij(C12636ik c12636ik, C13103zp c13103zp) {
        this.f49370a = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12629id
    /* renamed from: a */
    public final void mo14598a(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.f49370a.set(parcelFileDescriptor);
    }
}
