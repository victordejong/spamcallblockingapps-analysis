package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import p131c.p161d.p162a.p163b.AbstractC2458c;
import p131c.p161d.p162a.p163b.AbstractC2459d;
import p131c.p161d.p162a.p163b.AbstractC2460e;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4163w2;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4200x2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoi.class */
public final class zzaoi<NETWORK_EXTRAS extends AbstractC2460e, SERVER_PARAMETERS extends MediationServerParameters> implements AbstractC2458c, AbstractC2459d {

    /* renamed from: a */
    public final zzanh f24237a;

    public zzaoi(zzanh zzanhVar) {
        this.f24237a = zzanhVar;
    }

    @Override // p131c.p161d.p162a.p163b.AbstractC2458c
    /* renamed from: a */
    public final void mo16523a(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest$ErrorCode adRequest$ErrorCode) {
        String valueOf = String.valueOf(adRequest$ErrorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        zzbbq.m15858a(sb.toString());
        zzwm.m11170a();
        if (!zzbbg.m15899b()) {
            zzbbq.m15851d("#008 Must be called on the main UI thread.", null);
            zzbbg.f24738b.post(new RunnableC4163w2(this, adRequest$ErrorCode));
            return;
        }
        try {
            this.f24237a.mo13792a(zzaou.m16520a(adRequest$ErrorCode));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // p131c.p161d.p162a.p163b.AbstractC2459d
    /* renamed from: a */
    public final void mo16522a(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest$ErrorCode adRequest$ErrorCode) {
        String valueOf = String.valueOf(adRequest$ErrorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        zzbbq.m15858a(sb.toString());
        zzwm.m11170a();
        if (!zzbbg.m15899b()) {
            zzbbq.m15851d("#008 Must be called on the main UI thread.", null);
            zzbbg.f24738b.post(new RunnableC4200x2(this, adRequest$ErrorCode));
            return;
        }
        try {
            this.f24237a.mo13792a(zzaou.m16520a(adRequest$ErrorCode));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
