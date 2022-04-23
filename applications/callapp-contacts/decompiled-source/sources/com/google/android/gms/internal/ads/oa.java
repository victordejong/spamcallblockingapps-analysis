package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.a;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oa.class */
public final class oa<NETWORK_EXTRAS extends e, SERVER_PARAMETERS extends MediationServerParameters> implements c, d {

    /* renamed from: a  reason: collision with root package name */
    final ms f28252a;

    public oa(ms msVar) {
        this.f28252a = msVar;
    }

    @Override // com.google.ads.mediation.c
    public final void a(a.EnumC0408a aVar) {
        String valueOf = String.valueOf(aVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        za.zzdz(sb.toString());
        ekb.a();
        if (!yq.b()) {
            za.zze("#008 Must be called on the main UI thread.", null);
            yq.f28555a.post(new ob(this, aVar));
            return;
        }
        try {
            this.f28252a.a(oe.a(aVar));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.d
    public final void b(a.EnumC0408a aVar) {
        String valueOf = String.valueOf(aVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        za.zzdz(sb.toString());
        ekb.a();
        if (!yq.b()) {
            za.zze("#008 Must be called on the main UI thread.", null);
            yq.f28555a.post(new oc(this, aVar));
            return;
        }
        try {
            this.f28252a.a(oe.a(aVar));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
