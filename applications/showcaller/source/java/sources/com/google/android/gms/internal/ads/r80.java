package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C5593a0;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.formats.AbstractC5610d;
import com.google.android.gms.ads.mediation.AbstractC5760a;
import com.google.android.gms.ads.mediation.AbstractC5773f;
import com.google.android.gms.ads.mediation.AbstractC5778k;
import com.google.android.gms.ads.mediation.AbstractC5779l;
import com.google.android.gms.ads.mediation.AbstractC5784q;
import com.google.android.gms.ads.mediation.AbstractC5789t;
import com.google.android.gms.ads.mediation.AbstractC5790u;
import com.google.android.gms.ads.mediation.AbstractC5791v;
import com.google.android.gms.ads.mediation.AbstractC5794y;
import com.google.android.gms.ads.mediation.C5775h;
import com.google.android.gms.ads.mediation.C5777j;
import com.google.android.gms.ads.mediation.C5780m;
import com.google.android.gms.ads.mediation.C5782o;
import com.google.android.gms.ads.mediation.C5785r;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r80.class */
public final class r80 extends u70 {

    /* renamed from: d */
    private final Object f28807d;

    /* renamed from: e */
    private t80 f28808e;

    /* renamed from: f */
    private yd0 f28809f;

    /* renamed from: g */
    private AbstractC6253a f28810g;

    /* renamed from: h */
    private View f28811h;

    /* renamed from: i */
    private AbstractC5779l f28812i;

    /* renamed from: j */
    private AbstractC5791v f28813j;

    /* renamed from: k */
    private AbstractC5784q f28814k;

    /* renamed from: l */
    private AbstractC5778k f28815l;

    /* renamed from: m */
    private final String f28816m = "";

    public r80(AbstractC5760a abstractC5760a) {
        this.f28807d = abstractC5760a;
    }

    public r80(AbstractC5773f abstractC5773f) {
        this.f28807d = abstractC5773f;
    }

    /* renamed from: E6 */
    private final Bundle m11672E6(String str, zzbdg zzbdgVar, String str2) {
        String valueOf = String.valueOf(str);
        ei0.m15469a(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.f28807d instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzbdgVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzbdgVar.f33665j);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: F6 */
    private final Bundle m11671F6(zzbdg zzbdgVar) {
        Bundle bundle;
        Bundle bundle2 = zzbdgVar.f33671p;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f28807d.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    /* renamed from: G6 */
    private static final boolean m11670G6(zzbdg zzbdgVar) {
        if (!zzbdgVar.f33664i) {
            C7118wr.m9485a();
            return xh0.m9167k();
        }
        return true;
    }

    /* renamed from: H6 */
    private static final String m11669H6(String str, zzbdg zzbdgVar) {
        String str2;
        String str3 = zzbdgVar.f33679x;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: B5 */
    public final void mo9769B5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        RemoteException remoteException;
        Object obj = this.f28807d;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof AbstractC5760a)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC5760a.class.getCanonicalName();
            String canonicalName3 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            ei0.m15464f(sb.toString());
            throw new RemoteException();
        }
        ei0.m15469a("Requesting interstitial ad from adapter.");
        Object obj2 = this.f28807d;
        if (!(obj2 instanceof MediationInterstitialAdapter)) {
            if (!(obj2 instanceof AbstractC5760a)) {
                return;
            }
            try {
                ((AbstractC5760a) obj2).loadInterstitialAd(new C5780m((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, str2), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), this.f28816m), new o80(this, y70Var));
                return;
            } finally {
            }
        }
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
            List<String> list = zzbdgVar.f33663h;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbdgVar.f33660e;
            j80 j80Var = new j80(j == -1 ? null : new Date(j), zzbdgVar.f33662g, hashSet, zzbdgVar.f33669n, m11670G6(zzbdgVar), zzbdgVar.f33665j, zzbdgVar.f33676u, zzbdgVar.f33678w, m11669H6(str, zzbdgVar));
            Bundle bundle = zzbdgVar.f33671p;
            mediationInterstitialAdapter.requestInterstitialAd((Context) BinderC6255b.m16745J0(abstractC6253a), new t80(y70Var), m11672E6(str, zzbdgVar, str2), j80Var, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: D */
    public final zzbya mo9768D() {
        Object obj = this.f28807d;
        if (!(obj instanceof AbstractC5760a)) {
            return null;
        }
        return zzbya.m8072k0(((AbstractC5760a) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: H5 */
    public final void mo9765H5(zzbdg zzbdgVar, String str) {
        mo9754W5(zzbdgVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J */
    public final boolean mo9764J() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J1 */
    public final void mo9763J1(AbstractC6253a abstractC6253a) {
        Object obj = this.f28807d;
        if ((obj instanceof AbstractC5760a) || (obj instanceof MediationInterstitialAdapter)) {
            if (obj instanceof MediationInterstitialAdapter) {
                mo9748f();
                return;
            }
            ei0.m15469a("Show interstitial ad from adapter.");
            AbstractC5779l abstractC5779l = this.f28812i;
            if (abstractC5779l != null) {
                abstractC5779l.m17899a((Context) BinderC6255b.m16745J0(abstractC6253a));
                return;
            } else {
                ei0.m15467c("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = AbstractC5760a.class.getCanonicalName();
        String canonicalName3 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K */
    public final AbstractC6640ju mo9762K() {
        Object obj = this.f28807d;
        if (obj instanceof AbstractC5794y) {
            try {
                return ((AbstractC5794y) obj).getVideoController();
            } catch (Throwable th) {
                ei0.m15466d("", th);
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K5 */
    public final void mo9761K5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        if (this.f28807d instanceof AbstractC5760a) {
            ei0.m15469a("Requesting rewarded ad from adapter.");
            try {
                ((AbstractC5760a) this.f28807d).loadRewardedAd(new C5785r((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, null), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), ""), new q80(this, y70Var));
                return;
            } catch (Exception e) {
                ei0.m15466d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: L2 */
    public final void mo9760L2(AbstractC6253a abstractC6253a, a40 a40Var, List<zzbrv> list) {
        boolean z;
        if (this.f28807d instanceof AbstractC5760a) {
            m80 m80Var = new m80(this, a40Var);
            ArrayList arrayList = new ArrayList();
            for (zzbrv zzbrvVar : list) {
                String str = zzbrvVar.f33740d;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -239580146:
                        if (str.equals("rewarded")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 604727084:
                        if (str.equals("interstitial")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                AdFormat adFormat = z ? !z ? !z ? !z ? !z ? null : AdFormat.NATIVE : AdFormat.REWARDED_INTERSTITIAL : AdFormat.REWARDED : AdFormat.INTERSTITIAL : AdFormat.BANNER;
                if (adFormat != null) {
                    arrayList.add(new C5777j(adFormat, zzbrvVar.f33741e));
                }
            }
            ((AbstractC5760a) this.f28807d).initialize((Context) BinderC6255b.m16745J0(abstractC6253a), m80Var, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: P */
    public final zzbya mo9759P() {
        Object obj = this.f28807d;
        if (!(obj instanceof AbstractC5760a)) {
            return null;
        }
        return zzbya.m8072k0(((AbstractC5760a) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q */
    public final e80 mo9758Q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q1 */
    public final void mo9757Q1(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        if (this.f28807d instanceof AbstractC5760a) {
            ei0.m15469a("Requesting interscroller ad from adapter.");
            try {
                AbstractC5760a abstractC5760a = (AbstractC5760a) this.f28807d;
                abstractC5760a.loadInterscrollerAd(new C5775h((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, str2), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), C5593a0.m18304c(zzbdlVar.f33686h, zzbdlVar.f33683e), ""), new k80(this, y70Var, abstractC5760a));
                return;
            } catch (Exception e) {
                ei0.m15466d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: R1 */
    public final void mo9756R1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        if (this.f28807d instanceof AbstractC5760a) {
            ei0.m15469a("Requesting rewarded interstitial ad from adapter.");
            try {
                ((AbstractC5760a) this.f28807d).loadRewardedInterstitialAd(new C5785r((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, null), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), ""), new q80(this, y70Var));
                return;
            } catch (Exception e) {
                ei0.m15466d("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: W */
    public final b80 mo9755W() {
        AbstractC5778k abstractC5778k = this.f28815l;
        if (abstractC5778k != null) {
            return new s80(abstractC5778k);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: W5 */
    public final void mo9754W5(zzbdg zzbdgVar, String str, String str2) {
        Object obj = this.f28807d;
        if (obj instanceof AbstractC5760a) {
            mo9761K5(this.f28810g, zzbdgVar, str, new u80((AbstractC5760a) obj, this.f28809f));
            return;
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: X2 */
    public final void mo9753X2(AbstractC6253a abstractC6253a) {
        if (this.f28807d instanceof AbstractC5760a) {
            ei0.m15469a("Show rewarded ad from adapter.");
            AbstractC5784q abstractC5784q = this.f28814k;
            if (abstractC5784q != null) {
                abstractC5784q.m17898a((Context) BinderC6255b.m16745J0(abstractC6253a));
                return;
            } else {
                ei0.m15467c("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Y2 */
    public final void mo9752Y2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, y70 y70Var) {
        mo9743k6(abstractC6253a, zzbdlVar, zzbdgVar, str, null, y70Var);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: a4 */
    public final void mo9751a4(AbstractC6253a abstractC6253a, yd0 yd0Var, List<String> list) {
        ei0.m15464f("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: c3 */
    public final void mo9750c3(boolean z) {
        Object obj = this.f28807d;
        if (obj instanceof AbstractC5790u) {
            try {
                ((AbstractC5790u) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                ei0.m15466d("", th);
                return;
            }
        }
        String canonicalName = AbstractC5790u.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15469a(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: d */
    public final AbstractC6253a mo9749d() {
        Object obj = this.f28807d;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return BinderC6255b.m16744m2(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                ei0.m15466d("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof AbstractC5760a) {
            return BinderC6255b.m16744m2(this.f28811h);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC5760a.class.getCanonicalName();
            String canonicalName3 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            ei0.m15464f(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: f */
    public final void mo9748f() {
        if (this.f28807d instanceof MediationInterstitialAdapter) {
            ei0.m15469a("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f28807d).showInterstitial();
                return;
            } catch (Throwable th) {
                ei0.m15466d("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: g0 */
    public final void mo9747g0(AbstractC6253a abstractC6253a) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        Object obj = this.f28807d;
        if (obj instanceof AbstractC5789t) {
            ((AbstractC5789t) obj).m17897a(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: i */
    public final void mo9746i() {
        Object obj = this.f28807d;
        if (!(obj instanceof AbstractC5773f)) {
            return;
        }
        try {
            ((AbstractC5773f) obj).onPause();
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: j */
    public final void mo9745j() {
        Object obj = this.f28807d;
        if (!(obj instanceof AbstractC5773f)) {
            return;
        }
        try {
            ((AbstractC5773f) obj).onResume();
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k */
    public final boolean mo9744k() {
        if (this.f28807d instanceof AbstractC5760a) {
            return this.f28809f != null;
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k6 */
    public final void mo9743k6(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        RemoteException remoteException;
        Object obj = this.f28807d;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof AbstractC5760a)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC5760a.class.getCanonicalName();
            String canonicalName3 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            ei0.m15464f(sb.toString());
            throw new RemoteException();
        }
        ei0.m15469a("Requesting banner ad from adapter.");
        C5605f m18305b = zzbdlVar.f33695q ? C5593a0.m18305b(zzbdlVar.f33686h, zzbdlVar.f33683e) : C5593a0.m18306a(zzbdlVar.f33686h, zzbdlVar.f33683e, zzbdlVar.f33682d);
        Object obj2 = this.f28807d;
        if (!(obj2 instanceof MediationBannerAdapter)) {
            if (!(obj2 instanceof AbstractC5760a)) {
                return;
            }
            try {
                ((AbstractC5760a) obj2).loadBannerAd(new C5775h((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, str2), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), m18305b, this.f28816m), new n80(this, y70Var));
                return;
            } finally {
            }
        }
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
            List<String> list = zzbdgVar.f33663h;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbdgVar.f33660e;
            j80 j80Var = new j80(j == -1 ? null : new Date(j), zzbdgVar.f33662g, hashSet, zzbdgVar.f33669n, m11670G6(zzbdgVar), zzbdgVar.f33665j, zzbdgVar.f33676u, zzbdgVar.f33678w, m11669H6(str, zzbdgVar));
            Bundle bundle = zzbdgVar.f33671p;
            mediationBannerAdapter.requestBannerAd((Context) BinderC6255b.m16745J0(abstractC6253a), new t80(y70Var), m11672E6(str, zzbdgVar, str2), m18305b, j80Var, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: l */
    public final void mo9742l() {
        if (this.f28807d instanceof AbstractC5760a) {
            AbstractC5784q abstractC5784q = this.f28814k;
            if (abstractC5784q != null) {
                abstractC5784q.m17898a((Context) BinderC6255b.m16745J0(this.f28810g));
                return;
            } else {
                ei0.m15467c("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: o */
    public final Bundle mo9741o() {
        Object obj = this.f28807d;
        if (!(obj instanceof zzcoh)) {
            String canonicalName = zzcoh.class.getCanonicalName();
            String canonicalName2 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            ei0.m15464f(sb.toString());
            return new Bundle();
        }
        return ((zzcoh) obj).zza();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: q */
    public final AbstractC7237zz mo9740q() {
        t80 t80Var = this.f28808e;
        if (t80Var != null) {
            AbstractC5610d m10768u = t80Var.m10768u();
            if (!(m10768u instanceof a00)) {
                return null;
            }
            return ((a00) m10768u).m16719b();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: s1 */
    public final void mo9739s1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, yd0 yd0Var, String str2) {
        Object obj = this.f28807d;
        if (obj instanceof AbstractC5760a) {
            this.f28810g = abstractC6253a;
            this.f28809f = yd0Var;
            yd0Var.mo8855E(BinderC6255b.m16744m2(obj));
            return;
        }
        String canonicalName = AbstractC5760a.class.getCanonicalName();
        String canonicalName2 = this.f28807d.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        ei0.m15464f(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: s6 */
    public final void mo9738s6(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        mo9769B5(abstractC6253a, zzbdgVar, str, null, y70Var);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: t */
    public final h80 mo9737t() {
        AbstractC5791v abstractC5791v;
        AbstractC5791v m10769t;
        Object obj = this.f28807d;
        if (!(obj instanceof MediationNativeAdapter)) {
            if ((obj instanceof AbstractC5760a) && (abstractC5791v = this.f28813j) != null) {
                return new b90(abstractC5791v);
            }
            return null;
        }
        t80 t80Var = this.f28808e;
        if (t80Var != null && (m10769t = t80Var.m10769t()) != null) {
            return new b90(m10769t);
        }
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
        RemoteException remoteException;
        Object obj = this.f28807d;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof AbstractC5760a)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = AbstractC5760a.class.getCanonicalName();
            String canonicalName3 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            ei0.m15464f(sb.toString());
            throw new RemoteException();
        }
        ei0.m15469a("Requesting native ad from adapter.");
        Object obj2 = this.f28807d;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (!(obj2 instanceof AbstractC5760a)) {
                return;
            }
            try {
                ((AbstractC5760a) obj2).loadNativeAd(new C5782o((Context) BinderC6255b.m16745J0(abstractC6253a), "", m11672E6(str, zzbdgVar, str2), m11671F6(zzbdgVar), m11670G6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m11669H6(str, zzbdgVar), this.f28816m, zzblvVar), new p80(this, y70Var));
                return;
            } finally {
            }
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
            List<String> list2 = zzbdgVar.f33663h;
            HashSet hashSet = list2 != null ? new HashSet(list2) : null;
            long j = zzbdgVar.f33660e;
            v80 v80Var = new v80(j == -1 ? null : new Date(j), zzbdgVar.f33662g, hashSet, zzbdgVar.f33669n, m11670G6(zzbdgVar), zzbdgVar.f33665j, zzblvVar, list, zzbdgVar.f33676u, zzbdgVar.f33678w, m11669H6(str, zzbdgVar));
            Bundle bundle = zzbdgVar.f33671p;
            Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f28808e = new t80(y70Var);
            mediationNativeAdapter.requestNativeAd((Context) BinderC6255b.m16745J0(abstractC6253a), this.f28808e, m11672E6(str, zzbdgVar, str2), v80Var, bundle2);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final void zzi() {
        Object obj = this.f28807d;
        if (!(obj instanceof AbstractC5773f)) {
            return;
        }
        try {
            ((AbstractC5773f) obj).onDestroy();
        } catch (Throwable th) {
            ei0.m15466d("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final Bundle zzt() {
        Object obj = this.f28807d;
        if (!(obj instanceof zzcoi)) {
            String canonicalName = zzcoi.class.getCanonicalName();
            String canonicalName2 = this.f28807d.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            ei0.m15464f(sb.toString());
            return new Bundle();
        }
        return ((zzcoi) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final Bundle zzu() {
        return new Bundle();
    }
}
