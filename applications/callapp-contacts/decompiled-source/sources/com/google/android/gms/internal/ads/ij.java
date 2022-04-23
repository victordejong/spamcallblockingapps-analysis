package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ij.class */
final class ij extends ig {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f28061a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ij(ik ikVar, zp zpVar) {
        this.f28061a = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.id
    public final void a(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.f28061a.set(parcelFileDescriptor);
    }
}
