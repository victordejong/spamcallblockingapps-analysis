package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.C2216b;
import com.google.ads.mediation.AbstractC2225b;
import com.google.ads.mediation.AbstractC2234e;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.C2396s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.lt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lt.class */
public final class BinderC3312lt<NETWORK_EXTRAS extends AbstractC2234e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractBinderC3284ks {

    /* renamed from: a */
    private final AbstractC2225b<NETWORK_EXTRAS, SERVER_PARAMETERS> f16939a;

    /* renamed from: b */
    private final NETWORK_EXTRAS f16940b;

    public BinderC3312lt(AbstractC2225b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC2225b, NETWORK_EXTRAS network_extras) {
        this.f16939a = abstractC2225b;
        this.f16940b = network_extras;
    }

    /* renamed from: a */
    private final SERVER_PARAMETERS m7521a(String str) {
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
            Class<SERVER_PARAMETERS> serverParametersType = this.f16939a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.m14918a(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private static boolean m7524a(dya dyaVar) {
        boolean z;
        if (!dyaVar.f16072f) {
            dyx.m8162a();
            if (!C3634xr.m6803a()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final AbstractC2731a mo7534a() {
        if (!(this.f16939a instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.f16939a.getClass().getCanonicalName());
            C3645yb.m6745e(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return BinderC2734b.m13794a(((MediationBannerAdapter) this.f16939a).getBannerView());
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7533a(AbstractC2731a abstractC2731a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7532a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        mo7530a(abstractC2731a, dyaVar, str, (String) null, abstractC3286ku);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7531a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3467rm abstractC3467rm, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7530a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        if (!(this.f16939a instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.f16939a.getClass().getCanonicalName());
            C3645yb.m6745e(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f16939a).requestInterstitialAd(new C3311ls(abstractC3286ku), (Activity) BinderC2734b.m13795a(abstractC2731a), m7521a(str), C3316lx.m7496a(dyaVar, m7524a(dyaVar)), this.f16940b);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7529a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku, C2835bl c2835bl, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7528a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        mo7527a(abstractC2731a, dydVar, dyaVar, str, null, abstractC3286ku);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7527a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        C2216b c2216b;
        int i = 0;
        if (!(this.f16939a instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.f16939a.getClass().getCanonicalName());
            C3645yb.m6745e(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f16939a;
            C3311ls c3311ls = new C3311ls(abstractC3286ku);
            Activity activity = (Activity) BinderC2734b.m13795a(abstractC2731a);
            SERVER_PARAMETERS m7521a = m7521a(str);
            C2216b[] c2216bArr = {C2216b.f6494a, C2216b.f6495b, C2216b.f6496c, C2216b.f6497d, C2216b.f6498e, C2216b.f6499f};
            while (true) {
                if (i >= 6) {
                    c2216b = new C2216b(C2396s.m14608a(dydVar.f16094e, dydVar.f16091b, dydVar.f16090a));
                    break;
                } else if (c2216bArr[i].m14920a() == dydVar.f16094e && c2216bArr[i].m14919b() == dydVar.f16091b) {
                    c2216b = c2216bArr[i];
                    break;
                } else {
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(c3311ls, activity, m7521a, c2216b, C3316lx.m7496a(dyaVar, m7524a(dyaVar)), this.f16940b);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7526a(AbstractC2731a abstractC2731a, AbstractC3161gd abstractC3161gd, List<C3169gl> list) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7525a(AbstractC2731a abstractC2731a, AbstractC3467rm abstractC3467rm, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7523a(dya dyaVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7522a(dya dyaVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7520a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7519b() {
        if (!(this.f16939a instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.f16939a.getClass().getCanonicalName());
            C3645yb.m6745e(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C3645yb.m6751b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f16939a).showInterstitial();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7518b(AbstractC2731a abstractC2731a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7517b(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7516c() {
        try {
            this.f16939a.destroy();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7515c(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: d */
    public final void mo7514d() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: e */
    public final void mo7513e() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: f */
    public final void mo7512f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: g */
    public final boolean mo7511g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: h */
    public final AbstractC3289kx mo7510h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: i */
    public final AbstractC3296ld mo7509i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: j */
    public final Bundle mo7508j() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: k */
    public final Bundle mo7507k() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: l */
    public final Bundle mo7506l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: m */
    public final boolean mo7505m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: n */
    public final AbstractC2893cr mo7504n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: o */
    public final eba mo7503o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: p */
    public final AbstractC3297le mo7502p() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: q */
    public final C3348nb mo7501q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: r */
    public final C3348nb mo7500r() {
        return null;
    }
}
