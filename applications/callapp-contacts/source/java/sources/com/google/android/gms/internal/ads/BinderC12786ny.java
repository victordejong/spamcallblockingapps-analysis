package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.C10585b;
import com.google.ads.mediation.AbstractC10594b;
import com.google.ads.mediation.AbstractC10602e;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ny */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ny.class */
public final class BinderC12786ny<NETWORK_EXTRAS extends AbstractC10602e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractBinderC12750mq {

    /* renamed from: a */
    private final AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> f49609a;

    /* renamed from: b */
    private final NETWORK_EXTRAS f49610b;

    public BinderC12786ny(AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC10594b, NETWORK_EXTRAS network_extras) {
        this.f49609a = abstractC10594b;
        this.f49610b = network_extras;
    }

    /* renamed from: a */
    private final SERVER_PARAMETERS m14357a(String str) throws RemoteException {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                HashMap hashMap2 = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    hashMap = hashMap2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.f49609a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.m22624a(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private static boolean m14360a(zzvq zzvqVar) {
        if (!zzvqVar.zzcid) {
            ekb.m14835a();
            return C13077yq.m13952a();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final AbstractC12126b mo14370a() throws RemoteException {
        AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC10594b = this.f49609a;
        if (!(abstractC10594b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC10594b.getClass().getCanonicalName());
            C13088za.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return BinderC12129d.m18979a(((MediationBannerAdapter) abstractC10594b).getBannerView());
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14369a(AbstractC12126b abstractC12126b) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14368a(AbstractC12126b abstractC12126b, AbstractC12640io abstractC12640io, List<zzajw> list) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14367a(AbstractC12126b abstractC12126b, AbstractC12956uf abstractC12956uf, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14366a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        mo14364a(abstractC12126b, zzvqVar, str, (String) null, abstractC12752ms);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14365a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12956uf abstractC12956uf, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14364a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC10594b = this.f49609a;
        if (!(abstractC10594b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC10594b.getClass().getCanonicalName());
            C13088za.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C13088za.zzdz("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f49609a).requestInterstitialAd(new C12789oa(abstractC12752ms), (Activity) BinderC12129d.m18980a(abstractC12126b), m14357a(str), C12793oe.m14329a(zzvqVar, m14360a(zzvqVar)), this.f49610b);
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14363a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms, zzaei zzaeiVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14362a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        mo14361a(abstractC12126b, zzvtVar, zzvqVar, str, null, abstractC12752ms);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14361a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        C10585b c10585b;
        AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC10594b = this.f49609a;
        if (!(abstractC10594b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC10594b.getClass().getCanonicalName());
            C13088za.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        C13088za.zzdz("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f49609a;
            C12789oa c12789oa = new C12789oa(abstractC12752ms);
            Activity activity = (Activity) BinderC12129d.m18980a(abstractC12126b);
            SERVER_PARAMETERS m14357a = m14357a(str);
            C10585b[] c10585bArr = new C10585b[6];
            int i = 0;
            c10585bArr[0] = C10585b.f34336b;
            c10585bArr[1] = C10585b.f34337c;
            c10585bArr[2] = C10585b.f34338d;
            c10585bArr[3] = C10585b.f34339e;
            c10585bArr[4] = C10585b.f34340f;
            c10585bArr[5] = C10585b.f34341g;
            while (true) {
                if (i >= 6) {
                    c10585b = new C10585b(zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd));
                    break;
                } else if (c10585bArr[i].f34342a.getWidth() == zzvtVar.width && c10585bArr[i].f34342a.getHeight() == zzvtVar.height) {
                    c10585b = c10585bArr[i];
                    break;
                } else {
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(c12789oa, activity, m14357a, c10585b, C12793oe.m14329a(zzvqVar, m14360a(zzvqVar)), this.f49610b);
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14359a(zzvq zzvqVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14358a(zzvq zzvqVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14356a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14355b() throws RemoteException {
        AbstractC10594b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC10594b = this.f49609a;
        if (!(abstractC10594b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC10594b.getClass().getCanonicalName());
            C13088za.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C13088za.zzdz("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f49609a).showInterstitial();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14354b(AbstractC12126b abstractC12126b) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14353b(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14352b(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14351c() throws RemoteException {
        try {
            this.f49609a.destroy();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14350c(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14349c(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: d */
    public final void mo14348d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: e */
    public final void mo14347e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: f */
    public final void mo14346f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: g */
    public final boolean mo14345g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: h */
    public final AbstractC12763nb mo14344h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: i */
    public final AbstractC12764nc mo14343i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: j */
    public final Bundle mo14342j() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: k */
    public final Bundle mo14341k() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: l */
    public final Bundle mo14340l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: m */
    public final boolean mo14339m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: n */
    public final AbstractC12532eo mo14338n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: o */
    public final emk mo14337o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: p */
    public final AbstractC12769nh mo14336p() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: q */
    public final zzaqr mo14335q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: r */
    public final zzaqr mo14334r() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: s */
    public final AbstractC12753mt mo14333s() {
        return null;
    }
}
