package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.C10582a;
import com.google.ads.mediation.AbstractC10595c;
import com.google.ads.mediation.AbstractC10601d;
import com.google.ads.mediation.AbstractC10602e;
import com.google.ads.mediation.MediationServerParameters;
/* renamed from: com.google.android.gms.internal.ads.oa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oa.class */
public final class C12789oa<NETWORK_EXTRAS extends AbstractC10602e, SERVER_PARAMETERS extends MediationServerParameters> implements AbstractC10595c, AbstractC10601d {

    /* renamed from: a */
    final AbstractC12752ms f49624a;

    public C12789oa(AbstractC12752ms abstractC12752ms) {
        this.f49624a = abstractC12752ms;
    }

    @Override // com.google.ads.mediation.AbstractC10595c
    /* renamed from: a */
    public final void mo14332a(C10582a.EnumC10583a enumC10583a) {
        String valueOf = String.valueOf(enumC10583a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        C13088za.zzdz(sb.toString());
        ekb.m14835a();
        if (!C13077yq.m13938b()) {
            C13088za.zze("#008 Must be called on the main UI thread.", null);
            C13077yq.f50094a.post(new RunnableC12790ob(this, enumC10583a));
            return;
        }
        try {
            this.f49624a.mo14434a(C12793oe.m14330a(enumC10583a));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.AbstractC10601d
    /* renamed from: b */
    public final void mo14331b(C10582a.EnumC10583a enumC10583a) {
        String valueOf = String.valueOf(enumC10583a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        C13088za.zzdz(sb.toString());
        ekb.m14835a();
        if (!C13077yq.m13938b()) {
            C13088za.zze("#008 Must be called on the main UI thread.", null);
            C13077yq.f50094a.post(new RunnableC12791oc(this, enumC10583a));
            return;
        }
        try {
            this.f49624a.mo14434a(C12793oe.m14330a(enumC10583a));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
