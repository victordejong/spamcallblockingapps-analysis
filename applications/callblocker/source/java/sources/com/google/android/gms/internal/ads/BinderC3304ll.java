package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C2396s;
import com.google.android.gms.ads.EnumC2243a;
import com.google.android.gms.ads.mediation.AbstractC2348a;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.AbstractC2361f;
import com.google.android.gms.ads.mediation.AbstractC2371o;
import com.google.android.gms.ads.mediation.AbstractC2379u;
import com.google.android.gms.ads.mediation.AbstractC2380v;
import com.google.android.gms.ads.mediation.AbstractC2383y;
import com.google.android.gms.ads.mediation.C2365i;
import com.google.android.gms.ads.mediation.C2372p;
import com.google.android.gms.ads.mediation.C2373q;
import com.google.android.gms.ads.mediation.C2374r;
import com.google.android.gms.ads.mediation.C2377s;
import com.google.android.gms.ads.mediation.C2381w;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.p119b.AbstractC2263i;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ll */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ll.class */
public final class BinderC3304ll extends AbstractBinderC3284ks {

    /* renamed from: a */
    private final Object f16911a;

    /* renamed from: b */
    private C3305lm f16912b;

    /* renamed from: c */
    private AbstractC3467rm f16913c;

    /* renamed from: d */
    private AbstractC2731a f16914d;

    /* renamed from: e */
    private AbstractC2371o f16915e;

    public BinderC3304ll(AbstractC2348a abstractC2348a) {
        this.f16911a = abstractC2348a;
    }

    public BinderC3304ll(AbstractC2361f abstractC2361f) {
        this.f16911a = abstractC2361f;
    }

    /* renamed from: a */
    private final Bundle m7641a(String str, dya dyaVar, String str2) {
        String valueOf = String.valueOf(str);
        C3645yb.m6751b(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
            if (this.f16911a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (dyaVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", dyaVar.f16073g);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private final AbstractC2359d<AbstractC2371o, Object> m7644a(AbstractC3286ku abstractC3286ku) {
        return new C3306ln(this, abstractC3286ku);
    }

    /* renamed from: a */
    private static String m7642a(String str, dya dyaVar) {
        String str2;
        String str3 = dyaVar.f16087u;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: a */
    private static boolean m7645a(dya dyaVar) {
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

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4 != null) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Bundle m7640b(com.google.android.gms.internal.ads.dya r4) {
        /*
            r3 = this;
            r0 = r4
            android.os.Bundle r0 = r0.f16079m
            if (r0 == 0) goto L1f
            r0 = r4
            android.os.Bundle r0 = r0.f16079m
            r1 = r3
            java.lang.Object r1 = r1.f16911a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            android.os.Bundle r0 = r0.getBundle(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
        L1d:
            r0 = r4
            return r0
        L1f:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r4 = r0
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.BinderC3304ll.m7640b(com.google.android.gms.internal.ads.dya):android.os.Bundle");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final AbstractC2731a mo7534a() {
        if (!(this.f16911a instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        try {
            return BinderC2734b.m13794a(((MediationBannerAdapter) this.f16911a).getBannerView());
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7533a(AbstractC2731a abstractC2731a) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        if (this.f16911a instanceof AbstractC2379u) {
            ((AbstractC2379u) this.f16911a).m14664a(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7532a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        mo7530a(abstractC2731a, dyaVar, str, (String) null, abstractC3286ku);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7531a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3467rm abstractC3467rm, String str2) {
        Bundle bundle;
        C3301li c3301li;
        if (!(this.f16911a instanceof MediationRewardedVideoAdAdapter)) {
            if (this.f16911a instanceof AbstractC2348a) {
                this.f16914d = abstractC2731a;
                this.f16913c = abstractC3467rm;
                abstractC3467rm.mo7230a(BinderC2734b.m13794a(this.f16911a));
                return;
            }
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC2348a.class.getCanonicalName();
            String canonicalName3 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length()).append(canonicalName).append(" or ").append(canonicalName2).append(" #009 Class mismatch: ").append(canonicalName3).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f16911a;
            Bundle m7641a = m7641a(str2, dyaVar, (String) null);
            if (dyaVar != null) {
                C3301li c3301li2 = new C3301li(dyaVar.f16068b == -1 ? null : new Date(dyaVar.f16068b), dyaVar.f16070d, dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null, dyaVar.f16077k, m7645a(dyaVar), dyaVar.f16073g, dyaVar.f16084r, dyaVar.f16086t, m7642a(str2, dyaVar));
                if (dyaVar.f16079m != null) {
                    bundle = dyaVar.f16079m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                    c3301li = c3301li2;
                } else {
                    bundle = null;
                    c3301li = c3301li2;
                }
            } else {
                bundle = null;
                c3301li = null;
            }
            mediationRewardedVideoAdAdapter.initialize((Context) BinderC2734b.m13795a(abstractC2731a), c3301li, str, new C3468rn(abstractC3467rm), m7641a, bundle);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7530a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        if (!(this.f16911a instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f16911a;
            mediationInterstitialAdapter.requestInterstitialAd((Context) BinderC2734b.m13795a(abstractC2731a), new C3305lm(abstractC3286ku), m7641a(str, dyaVar, str2), new C3301li(dyaVar.f16068b == -1 ? null : new Date(dyaVar.f16068b), dyaVar.f16070d, dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null, dyaVar.f16077k, m7645a(dyaVar), dyaVar.f16073g, dyaVar.f16084r, dyaVar.f16086t, m7642a(str, dyaVar)), dyaVar.f16079m != null ? dyaVar.f16079m.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7529a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku, C2835bl c2835bl, List<String> list) {
        if (!(this.f16911a instanceof MediationNativeAdapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.f16911a;
            C3309lq c3309lq = new C3309lq(dyaVar.f16068b == -1 ? null : new Date(dyaVar.f16068b), dyaVar.f16070d, dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null, dyaVar.f16077k, m7645a(dyaVar), dyaVar.f16073g, c2835bl, list, dyaVar.f16084r, dyaVar.f16086t, m7642a(str, dyaVar));
            Bundle bundle = dyaVar.f16079m != null ? dyaVar.f16079m.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f16912b = new C3305lm(abstractC3286ku);
            mediationNativeAdapter.requestNativeAd((Context) BinderC2734b.m13795a(abstractC2731a), this.f16912b, m7641a(str, dyaVar, str2), c3309lq, bundle);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7528a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        mo7527a(abstractC2731a, dydVar, dyaVar, str, null, abstractC3286ku);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7527a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        if (!(this.f16911a instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f16911a;
            mediationBannerAdapter.requestBannerAd((Context) BinderC2734b.m13795a(abstractC2731a), new C3305lm(abstractC3286ku), m7641a(str, dyaVar, str2), dydVar.f16102m ? C2396s.m14609a(dydVar.f16094e, dydVar.f16091b) : C2396s.m14608a(dydVar.f16094e, dydVar.f16091b, dydVar.f16090a), new C3301li(dyaVar.f16068b == -1 ? null : new Date(dyaVar.f16068b), dyaVar.f16070d, dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null, dyaVar.f16077k, m7645a(dyaVar), dyaVar.f16073g, dyaVar.f16084r, dyaVar.f16086t, m7642a(str, dyaVar)), dyaVar.f16079m != null ? dyaVar.f16079m.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7526a(AbstractC2731a abstractC2731a, AbstractC3161gd abstractC3161gd, List<C3169gl> list) {
        EnumC2243a enumC2243a;
        if (!(this.f16911a instanceof AbstractC2348a)) {
            throw new RemoteException();
        }
        C3303lk c3303lk = new C3303lk(this, abstractC3161gd);
        ArrayList arrayList = new ArrayList();
        for (C3169gl c3169gl : list) {
            String str = c3169gl.f16692a;
            boolean z = true;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        z = false;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        z = true;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        z = true;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    enumC2243a = EnumC2243a.BANNER;
                    break;
                case true:
                    enumC2243a = EnumC2243a.INTERSTITIAL;
                    break;
                case true:
                    enumC2243a = EnumC2243a.REWARDED;
                    break;
                case true:
                    enumC2243a = EnumC2243a.NATIVE;
                    break;
                default:
                    throw new RemoteException();
            }
            arrayList.add(new C2365i(enumC2243a, c3169gl.f16693b));
        }
        ((AbstractC2348a) this.f16911a).initialize((Context) BinderC2734b.m13795a(abstractC2731a), c3303lk, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7525a(AbstractC2731a abstractC2731a, AbstractC3467rm abstractC3467rm, List<String> list) {
        if (!(this.f16911a instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f16911a;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                arrayList.add(m7641a(str, (dya) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) BinderC2734b.m13795a(abstractC2731a), new C3468rn(abstractC3467rm), arrayList);
        } catch (Throwable th) {
            C3645yb.m6746d("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7523a(dya dyaVar, String str) {
        mo7522a(dyaVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7522a(dya dyaVar, String str, String str2) {
        if (this.f16911a instanceof MediationRewardedVideoAdAdapter) {
            C3645yb.m6751b("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f16911a;
                mediationRewardedVideoAdAdapter.loadAd(new C3301li(dyaVar.f16068b == -1 ? null : new Date(dyaVar.f16068b), dyaVar.f16070d, dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null, dyaVar.f16077k, m7645a(dyaVar), dyaVar.f16073g, dyaVar.f16084r, dyaVar.f16086t, m7642a(str, dyaVar)), m7641a(str, dyaVar, str2), dyaVar.f16079m != null ? dyaVar.f16079m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
                throw new RemoteException();
            }
        } else if (this.f16911a instanceof AbstractC2348a) {
            mo7517b(this.f16914d, dyaVar, str, new BinderC3308lp((AbstractC2348a) this.f16911a, this.f16913c));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC2348a.class.getCanonicalName();
            String canonicalName3 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length()).append(canonicalName).append(" or ").append(canonicalName2).append(" #009 Class mismatch: ").append(canonicalName3).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7520a(boolean z) {
        if (!(this.f16911a instanceof AbstractC2380v)) {
            String canonicalName = AbstractC2380v.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6751b(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            return;
        }
        try {
            ((AbstractC2380v) this.f16911a).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7519b() {
        if (!(this.f16911a instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f16911a).showInterstitial();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7518b(AbstractC2731a abstractC2731a) {
        if (!(this.f16911a instanceof AbstractC2348a)) {
            String canonicalName = AbstractC2348a.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Show rewarded ad from adapter.");
        if (this.f16915e != null) {
            this.f16915e.m14708a((Context) BinderC2734b.m13795a(abstractC2731a));
        } else {
            C3645yb.m6749c("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7517b(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        if (!(this.f16911a instanceof AbstractC2348a)) {
            String canonicalName = AbstractC2348a.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting rewarded ad from adapter.");
        try {
            ((AbstractC2348a) this.f16911a).loadRewardedAd(new C2372p((Context) BinderC2734b.m13795a(abstractC2731a), "", m7641a(str, dyaVar, (String) null), m7640b(dyaVar), m7645a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7642a(str, dyaVar), ""), m7644a(abstractC3286ku));
        } catch (Exception e) {
            C3645yb.m6748c("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7516c() {
        if (!(this.f16911a instanceof AbstractC2361f)) {
            return;
        }
        try {
            ((AbstractC2361f) this.f16911a).onDestroy();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7515c(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        if (!(this.f16911a instanceof AbstractC2348a)) {
            String canonicalName = AbstractC2348a.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            throw new RemoteException();
        }
        C3645yb.m6751b("Requesting rewarded interstitial ad from adapter.");
        try {
            ((AbstractC2348a) this.f16911a).zza(new C2372p((Context) BinderC2734b.m13795a(abstractC2731a), "", m7641a(str, dyaVar, (String) null), m7640b(dyaVar), m7645a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7642a(str, dyaVar), ""), m7644a(abstractC3286ku));
        } catch (Exception e) {
            C3645yb.m6748c("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: d */
    public final void mo7514d() {
        if (!(this.f16911a instanceof AbstractC2361f)) {
            return;
        }
        try {
            ((AbstractC2361f) this.f16911a).onPause();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: e */
    public final void mo7513e() {
        if (!(this.f16911a instanceof AbstractC2361f)) {
            return;
        }
        try {
            ((AbstractC2361f) this.f16911a).onResume();
        } catch (Throwable th) {
            C3645yb.m6748c("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: f */
    public final void mo7512f() {
        if (this.f16911a instanceof MediationRewardedVideoAdAdapter) {
            C3645yb.m6751b("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f16911a).showVideo();
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
                throw new RemoteException();
            }
        } else if (!(this.f16911a instanceof AbstractC2348a)) {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC2348a.class.getCanonicalName();
            String canonicalName3 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length()).append(canonicalName).append(" or ").append(canonicalName2).append(" #009 Class mismatch: ").append(canonicalName3).toString());
            throw new RemoteException();
        } else if (this.f16915e != null) {
            this.f16915e.m14708a((Context) BinderC2734b.m13795a(this.f16914d));
        } else {
            C3645yb.m6749c("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: g */
    public final boolean mo7511g() {
        boolean z;
        if (this.f16911a instanceof MediationRewardedVideoAdAdapter) {
            C3645yb.m6751b("Check if adapter is initialized.");
            try {
                z = ((MediationRewardedVideoAdAdapter) this.f16911a).isInitialized();
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
                throw new RemoteException();
            }
        } else if (!(this.f16911a instanceof AbstractC2348a)) {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC2348a.class.getCanonicalName();
            String canonicalName3 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length()).append(canonicalName).append(" or ").append(canonicalName2).append(" #009 Class mismatch: ").append(canonicalName3).toString());
            throw new RemoteException();
        } else {
            z = this.f16913c != null;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: h */
    public final AbstractC3289kx mo7510h() {
        C2373q m7639a = this.f16912b.m7639a();
        return m7639a instanceof C2374r ? new BinderC3307lo((C2374r) m7639a) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: i */
    public final AbstractC3296ld mo7509i() {
        C2373q m7639a = this.f16912b.m7639a();
        return m7639a instanceof C2377s ? new BinderC3310lr((C2377s) m7639a) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: j */
    public final Bundle mo7508j() {
        Bundle zzti;
        if (!(this.f16911a instanceof zzbgx)) {
            String canonicalName = zzbgx.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            zzti = new Bundle();
        } else {
            zzti = ((zzbgx) this.f16911a).zzti();
        }
        return zzti;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: k */
    public final Bundle mo7507k() {
        Bundle interstitialAdapterInfo;
        if (!(this.f16911a instanceof zzbgz)) {
            String canonicalName = zzbgz.class.getCanonicalName();
            String canonicalName2 = this.f16911a.getClass().getCanonicalName();
            C3645yb.m6745e(new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length()).append(canonicalName).append(" #009 Class mismatch: ").append(canonicalName2).toString());
            interstitialAdapterInfo = new Bundle();
        } else {
            interstitialAdapterInfo = ((zzbgz) this.f16911a).getInterstitialAdapterInfo();
        }
        return interstitialAdapterInfo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: l */
    public final Bundle mo7506l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: m */
    public final boolean mo7505m() {
        return this.f16911a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: n */
    public final AbstractC2893cr mo7504n() {
        AbstractC2263i m7622c = this.f16912b.m7622c();
        return m7622c instanceof C2909cw ? ((C2909cw) m7622c).m10578b() : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: o */
    public final eba mo7503o() {
        eba ebaVar;
        if (!(this.f16911a instanceof AbstractC2383y)) {
            ebaVar = null;
        } else {
            try {
                ebaVar = ((AbstractC2383y) this.f16911a).getVideoController();
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
                ebaVar = null;
            }
        }
        return ebaVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: p */
    public final AbstractC3297le mo7502p() {
        C2381w m7626b = this.f16912b.m7626b();
        return m7626b != null ? new BinderC3317ly(m7626b) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: q */
    public final C3348nb mo7501q() {
        return !(this.f16911a instanceof AbstractC2348a) ? null : C3348nb.m7434a(((AbstractC2348a) this.f16911a).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: r */
    public final C3348nb mo7500r() {
        return !(this.f16911a instanceof AbstractC2348a) ? null : C3348nb.m7434a(((AbstractC2348a) this.f16911a).getSDKVersionInfo());
    }
}
