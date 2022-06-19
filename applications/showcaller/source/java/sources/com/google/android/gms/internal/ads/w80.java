package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.C4584a;
import com.google.ads.mediation.AbstractC4587b;
import com.google.ads.mediation.AbstractC4595e;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.C5593a0;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w80.class */
public final class w80<NETWORK_EXTRAS extends AbstractC4595e, SERVER_PARAMETERS extends MediationServerParameters> extends u70 {

    /* renamed from: d */
    private final AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> f31467d;

    /* renamed from: e */
    private final NETWORK_EXTRAS f31468e;

    public w80(AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC4587b, NETWORK_EXTRAS network_extras) {
        this.f31467d = abstractC4587b;
        this.f31468e = network_extras;
    }

    /* renamed from: E6 */
    private final SERVER_PARAMETERS m9767E6(String str) {
        HashMap hashMap;
        SERVER_PARAMETERS server_parameters;
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
            Class<SERVER_PARAMETERS> serverParametersType = this.f31467d.getServerParametersType();
            if (serverParametersType != null) {
                SERVER_PARAMETERS newInstance = serverParametersType.newInstance();
                newInstance.m22186a(hashMap);
                server_parameters = newInstance;
            } else {
                server_parameters = null;
            }
            return server_parameters;
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: F6 */
    private static final boolean m9766F6(zzbdg zzbdgVar) {
        if (!zzbdgVar.f33664i) {
            C7118wr.m9485a();
            return xh0.m9167k();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: B5 */
    public final void mo9769B5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC4587b = this.f31467d;
        if (!(abstractC4587b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC4587b.getClass().getCanonicalName());
            ei0.m15464f(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        ei0.m15469a("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f31467d).requestInterstitialAd(new z80(y70Var), (Activity) BinderC6255b.m16745J0(abstractC6253a), m9767E6(str), a90.m16669b(zzbdgVar, m9766F6(zzbdgVar)), this.f31468e);
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: D */
    public final zzbya mo9768D() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: H5 */
    public final void mo9765H5(zzbdg zzbdgVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J */
    public final boolean mo9764J() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J1 */
    public final void mo9763J1(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K */
    public final AbstractC6640ju mo9762K() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K5 */
    public final void mo9761K5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: L2 */
    public final void mo9760L2(AbstractC6253a abstractC6253a, a40 a40Var, List<zzbrv> list) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: P */
    public final zzbya mo9759P() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q */
    public final e80 mo9758Q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q1 */
    public final void mo9757Q1(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: R1 */
    public final void mo9756R1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: W */
    public final b80 mo9755W() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: W5 */
    public final void mo9754W5(zzbdg zzbdgVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: X2 */
    public final void mo9753X2(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Y2 */
    public final void mo9752Y2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, y70 y70Var) {
        mo9743k6(abstractC6253a, zzbdlVar, zzbdgVar, str, null, y70Var);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: a4 */
    public final void mo9751a4(AbstractC6253a abstractC6253a, yd0 yd0Var, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: c3 */
    public final void mo9750c3(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: d */
    public final AbstractC6253a mo9749d() {
        AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC4587b = this.f31467d;
        if (!(abstractC4587b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC4587b.getClass().getCanonicalName());
            ei0.m15464f(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return BinderC6255b.m16744m2(((MediationBannerAdapter) abstractC4587b).getBannerView());
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: f */
    public final void mo9748f() {
        AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC4587b = this.f31467d;
        if (!(abstractC4587b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC4587b.getClass().getCanonicalName());
            ei0.m15464f(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        ei0.m15469a("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f31467d).showInterstitial();
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: g0 */
    public final void mo9747g0(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: i */
    public final void mo9746i() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: j */
    public final void mo9745j() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k */
    public final boolean mo9744k() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k6 */
    public final void mo9743k6(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        C4584a c4584a;
        AbstractC4587b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC4587b = this.f31467d;
        if (!(abstractC4587b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC4587b.getClass().getCanonicalName());
            ei0.m15464f(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        ei0.m15469a("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f31467d;
            z80 z80Var = new z80(y70Var);
            Activity activity = (Activity) BinderC6255b.m16745J0(abstractC6253a);
            SERVER_PARAMETERS m9767E6 = m9767E6(str);
            C4584a[] c4584aArr = new C4584a[6];
            int i = 0;
            c4584aArr[0] = C4584a.f13972a;
            c4584aArr[1] = C4584a.f13973b;
            c4584aArr[2] = C4584a.f13974c;
            c4584aArr[3] = C4584a.f13975d;
            c4584aArr[4] = C4584a.f13976e;
            c4584aArr[5] = C4584a.f13977f;
            while (true) {
                if (i >= 6) {
                    c4584a = new C4584a(C5593a0.m18306a(zzbdlVar.f33686h, zzbdlVar.f33683e, zzbdlVar.f33682d));
                    break;
                } else if (c4584aArr[i].m22187b() == zzbdlVar.f33686h && c4584aArr[i].m22188a() == zzbdlVar.f33683e) {
                    c4584a = c4584aArr[i];
                    break;
                } else {
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(z80Var, activity, m9767E6, c4584a, a90.m16669b(zzbdgVar, m9766F6(zzbdgVar)), this.f31468e);
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: l */
    public final void mo9742l() {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: o */
    public final Bundle mo9741o() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: q */
    public final AbstractC7237zz mo9740q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: s1 */
    public final void mo9739s1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, yd0 yd0Var, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: s6 */
    public final void mo9738s6(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        mo9769B5(abstractC6253a, zzbdgVar, str, null, y70Var);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: t */
    public final h80 mo9737t() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: v0 */
    public final d80 mo9736v0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: x4 */
    public final void mo9735x4(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, String str2, y70 y70Var, zzblv zzblvVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final void zzi() {
        try {
            this.f31467d.destroy();
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final Bundle zzt() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final Bundle zzu() {
        return new Bundle();
    }
}
