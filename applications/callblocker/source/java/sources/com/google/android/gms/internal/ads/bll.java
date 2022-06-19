package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bll.class */
public final class bll implements crh<ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3417pq f11487a;

    public bll(bkz bkzVar, AbstractC3417pq abstractC3417pq) {
        this.f11487a = abstractC3417pq;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f11487a.mo7332a(parcelFileDescriptor);
        } catch (RemoteException e) {
            C3556uu.m7051a("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        try {
            this.f11487a.mo7331a(C3598wi.m6882a(th, zzcjk.m6639a(th)));
        } catch (RemoteException e) {
            C3556uu.m7051a("Service can't call client", e);
        }
    }
}
