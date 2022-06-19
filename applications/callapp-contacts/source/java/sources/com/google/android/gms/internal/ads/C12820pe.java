package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
/* renamed from: com.google.android.gms.internal.ads.pe */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pe.class */
final class C12820pe implements SignalCallbacks {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12812ox f49646a;

    public C12820pe(BinderC12817pb binderC12817pb, AbstractC12812ox abstractC12812ox) {
        this.f49646a = abstractC12812ox;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        try {
            this.f49646a.mo14289a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.f49646a.mo14287b(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.f49646a.mo14288a(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
