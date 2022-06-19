package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C5593a0;
import com.google.android.gms.ads.mediation.AbstractC5779l;
import com.google.android.gms.ads.mediation.AbstractC5784q;
import com.google.android.gms.ads.mediation.AbstractC5794y;
import com.google.android.gms.ads.mediation.C5775h;
import com.google.android.gms.ads.mediation.C5777j;
import com.google.android.gms.ads.mediation.C5780m;
import com.google.android.gms.ads.mediation.C5782o;
import com.google.android.gms.ads.mediation.C5785r;
import com.google.android.gms.ads.mediation.rtb.C5786a;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ca0.class */
public final class ca0 extends q90 {

    /* renamed from: d */
    private final RtbAdapter f21132d;

    /* renamed from: e */
    private AbstractC5779l f21133e;

    /* renamed from: f */
    private AbstractC5784q f21134f;

    /* renamed from: g */
    private String f21135g = "";

    public ca0(RtbAdapter rtbAdapter) {
        this.f21132d = rtbAdapter;
    }

    /* renamed from: F6 */
    private final Bundle m16097F6(zzbdg zzbdgVar) {
        Bundle bundle;
        Bundle bundle2 = zzbdgVar.f33671p;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f21132d.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    /* renamed from: G6 */
    private static final Bundle m16096G6(String str) {
        String valueOf = String.valueOf(str);
        ei0.m15464f(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            return bundle;
        } catch (JSONException e) {
            ei0.m15466d("", e);
            throw new RemoteException();
        }
    }

    /* renamed from: H6 */
    private static final boolean m16095H6(zzbdg zzbdgVar) {
        if (!zzbdgVar.f33664i) {
            C7118wr.m9485a();
            return xh0.m9167k();
        }
        return true;
    }

    /* renamed from: I6 */
    private static final String m16094I6(String str, zzbdg zzbdgVar) {
        String str2;
        String str3 = zzbdgVar.f33679x;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: B0 */
    public final void mo11650B0(String str) {
        this.f21135g = str;
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: F5 */
    public final void mo11649F5(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, i90 i90Var, y70 y70Var) {
        try {
            this.f21132d.loadRtbInterstitialAd(new C5780m((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), this.f21135g), new y90(this, i90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: O4 */
    public final void mo11648O4(AbstractC6253a abstractC6253a, String str, Bundle bundle, Bundle bundle2, zzbdl zzbdlVar, u90 u90Var) {
        boolean z;
        AdFormat adFormat;
        try {
            aa0 aa0Var = new aa0(this, u90Var);
            RtbAdapter rtbAdapter = this.f21132d;
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
            if (!z) {
                adFormat = AdFormat.BANNER;
            } else if (z) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (z) {
                adFormat = AdFormat.REWARDED;
            } else if (z) {
                adFormat = AdFormat.REWARDED_INTERSTITIAL;
            } else if (!z) {
                throw new IllegalArgumentException("Internal Error");
            } else {
                adFormat = AdFormat.NATIVE;
            }
            C5777j c5777j = new C5777j(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(c5777j);
            rtbAdapter.collectSignals(new C5786a((Context) BinderC6255b.m16745J0(abstractC6253a), arrayList, bundle, C5593a0.m18306a(zzbdlVar.f33686h, zzbdlVar.f33683e, zzbdlVar.f33682d)), aa0Var);
        } catch (Throwable th) {
            ei0.m15466d("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: Y4 */
    public final void mo11647Y4(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, l90 l90Var, y70 y70Var, zzblv zzblvVar) {
        try {
            this.f21132d.loadRtbNativeAd(new C5782o((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), this.f21135g, zzblvVar), new z90(this, l90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render native ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: b3 */
    public final void mo11646b3(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, f90 f90Var, y70 y70Var, zzbdl zzbdlVar) {
        try {
            this.f21132d.loadRtbInterscrollerAd(new C5775h((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), C5593a0.m18306a(zzbdlVar.f33686h, zzbdlVar.f33683e, zzbdlVar.f33682d), this.f21135g), new x90(this, f90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render interscroller ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: d */
    public final zzbya mo11645d() {
        return zzbya.m8072k0(this.f21132d.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: f */
    public final AbstractC6640ju mo11644f() {
        RtbAdapter rtbAdapter = this.f21132d;
        if (rtbAdapter instanceof AbstractC5794y) {
            try {
                return ((AbstractC5794y) rtbAdapter).getVideoController();
            } catch (Throwable th) {
                ei0.m15466d("", th);
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: f2 */
    public final void mo11643f2(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, o90 o90Var, y70 y70Var) {
        try {
            this.f21132d.loadRtbRewardedInterstitialAd(new C5785r((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), this.f21135g), new ba0(this, o90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: j3 */
    public final void mo11642j3(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, l90 l90Var, y70 y70Var) {
        mo11647Y4(str, str2, zzbdgVar, abstractC6253a, l90Var, y70Var, null);
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: q5 */
    public final void mo11641q5(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, o90 o90Var, y70 y70Var) {
        try {
            this.f21132d.loadRtbRewardedAd(new C5785r((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), this.f21135g), new ba0(this, o90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: x3 */
    public final void mo11640x3(String str, String str2, zzbdg zzbdgVar, AbstractC6253a abstractC6253a, f90 f90Var, y70 y70Var, zzbdl zzbdlVar) {
        try {
            this.f21132d.loadRtbBannerAd(new C5775h((Context) BinderC6255b.m16745J0(abstractC6253a), str, m16096G6(str2), m16097F6(zzbdgVar), m16095H6(zzbdgVar), zzbdgVar.f33669n, zzbdgVar.f33665j, zzbdgVar.f33678w, m16094I6(str2, zzbdgVar), C5593a0.m18306a(zzbdlVar.f33686h, zzbdlVar.f33683e, zzbdlVar.f33682d), this.f21135g), new w90(this, f90Var, y70Var));
        } catch (Throwable th) {
            ei0.m15466d("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: y5 */
    public final boolean mo11639y5(AbstractC6253a abstractC6253a) {
        AbstractC5784q abstractC5784q = this.f21134f;
        if (abstractC5784q != null) {
            try {
                abstractC5784q.m17898a((Context) BinderC6255b.m16745J0(abstractC6253a));
                return true;
            } catch (Throwable th) {
                ei0.m15466d("", th);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.r90
    /* renamed from: z0 */
    public final boolean mo11638z0(AbstractC6253a abstractC6253a) {
        AbstractC5779l abstractC5779l = this.f21133e;
        if (abstractC5779l != null) {
            try {
                abstractC5779l.m17899a((Context) BinderC6255b.m16745J0(abstractC6253a));
                return true;
            } catch (Throwable th) {
                ei0.m15466d("", th);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.r90
    public final zzbya zzg() {
        return zzbya.m8072k0(this.f21132d.getSDKVersionInfo());
    }
}
