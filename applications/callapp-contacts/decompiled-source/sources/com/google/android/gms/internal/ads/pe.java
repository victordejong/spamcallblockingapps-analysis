package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pe.class */
final class pe implements SignalCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ox f28274a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pe(pb pbVar, ox oxVar) {
        this.f28274a = oxVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        try {
            this.f28274a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.f28274a.b(str);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.f28274a.a(str);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
