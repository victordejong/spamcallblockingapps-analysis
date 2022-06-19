package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.C2396s;
import com.google.android.gms.ads.EnumC2243a;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.AbstractC2366j;
import com.google.android.gms.ads.mediation.AbstractC2371o;
import com.google.android.gms.ads.mediation.AbstractC2383y;
import com.google.android.gms.ads.mediation.C2363g;
import com.google.android.gms.ads.mediation.C2365i;
import com.google.android.gms.ads.mediation.C2367k;
import com.google.android.gms.ads.mediation.C2369m;
import com.google.android.gms.ads.mediation.C2372p;
import com.google.android.gms.ads.mediation.rtb.C2375a;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.mt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mt.class */
public final class BinderC3339mt extends AbstractBinderC3332mm {

    /* renamed from: a */
    private final RtbAdapter f16960a;

    /* renamed from: b */
    private AbstractC2366j f16961b;

    /* renamed from: c */
    private AbstractC2371o f16962c;

    /* renamed from: d */
    private String f16963d = "";

    public BinderC3339mt(RtbAdapter rtbAdapter) {
        this.f16960a = rtbAdapter;
    }

    /* renamed from: a */
    private final AbstractC2359d<AbstractC2371o, Object> m7453a(AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        return new C3345mz(this, abstractC3328mi, abstractC3286ku);
    }

    /* renamed from: a */
    private static String m7451a(String str, dya dyaVar) {
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
    private static boolean m7454a(dya dyaVar) {
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
    private final android.os.Bundle m7443b(com.google.android.gms.internal.ads.dya r4) {
        /*
            r3 = this;
            r0 = r4
            android.os.Bundle r0 = r0.f16079m
            if (r0 == 0) goto L1f
            r0 = r4
            android.os.Bundle r0 = r0.f16079m
            r1 = r3
            com.google.android.gms.ads.mediation.rtb.RtbAdapter r1 = r1.f16960a
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.BinderC3339mt.m7443b(com.google.android.gms.internal.ads.dya):android.os.Bundle");
    }

    /* renamed from: b */
    private static Bundle m7442b(String str) {
        String valueOf = String.valueOf(str);
        C3645yb.m6745e(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            C3645yb.m6748c("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final C3348nb mo7457a() {
        return C3348nb.m7434a(this.f16960a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7456a(AbstractC2731a abstractC2731a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7455a(AbstractC2731a abstractC2731a, String str, Bundle bundle, Bundle bundle2, dyd dydVar, AbstractC3334mo abstractC3334mo) {
        EnumC2243a enumC2243a;
        try {
            C3343mx c3343mx = new C3343mx(this, abstractC3334mo);
            RtbAdapter rtbAdapter = this.f16960a;
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
                    throw new IllegalArgumentException("Internal Error");
            }
            C2365i c2365i = new C2365i(enumC2243a, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(c2365i);
            rtbAdapter.collectSignals(new C2375a((Context) BinderC2734b.m13795a(abstractC2731a), arrayList, bundle, C2396s.m14608a(dydVar.f16094e, dydVar.f16091b, dydVar.f16090a)), c3343mx);
        } catch (Throwable th) {
            C3645yb.m6748c("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7452a(String str) {
        this.f16963d = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7450a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3321mb abstractC3321mb, AbstractC3286ku abstractC3286ku, dyd dydVar) {
        try {
            this.f16960a.loadBannerAd(new C2363g((Context) BinderC2734b.m13795a(abstractC2731a), str, m7442b(str2), m7443b(dyaVar), m7454a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7451a(str2, dyaVar), C2396s.m14608a(dydVar.f16094e, dydVar.f16091b, dydVar.f16090a), this.f16963d), new C3342mw(this, abstractC3321mb, abstractC3286ku));
        } catch (Throwable th) {
            C3645yb.m6748c("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7449a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3322mc abstractC3322mc, AbstractC3286ku abstractC3286ku) {
        try {
            this.f16960a.loadInterstitialAd(new C2367k((Context) BinderC2734b.m13795a(abstractC2731a), str, m7442b(str2), m7443b(dyaVar), m7454a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7451a(str2, dyaVar), this.f16963d), new C3341mv(this, abstractC3322mc, abstractC3286ku));
        } catch (Throwable th) {
            C3645yb.m6748c("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7448a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3327mh abstractC3327mh, AbstractC3286ku abstractC3286ku) {
        try {
            this.f16960a.loadNativeAd(new C2369m((Context) BinderC2734b.m13795a(abstractC2731a), str, m7442b(str2), m7443b(dyaVar), m7454a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7451a(str2, dyaVar), this.f16963d), new C3344my(this, abstractC3327mh, abstractC3286ku));
        } catch (Throwable th) {
            C3645yb.m6748c("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7447a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        try {
            this.f16960a.loadRewardedAd(new C2372p((Context) BinderC2734b.m13795a(abstractC2731a), str, m7442b(str2), m7443b(dyaVar), m7454a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7451a(str2, dyaVar), this.f16963d), m7453a(abstractC3328mi, abstractC3286ku));
        } catch (Throwable th) {
            C3645yb.m6748c("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7446a(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final C3348nb mo7445b() {
        return C3348nb.m7434a(this.f16960a.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final void mo7441b(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        try {
            this.f16960a.zza(new C2372p((Context) BinderC2734b.m13795a(abstractC2731a), str, m7442b(str2), m7443b(dyaVar), m7454a(dyaVar), dyaVar.f16077k, dyaVar.f16073g, dyaVar.f16086t, m7451a(str2, dyaVar), this.f16963d), m7453a(abstractC3328mi, abstractC3286ku));
        } catch (Throwable th) {
            C3645yb.m6748c("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final boolean mo7444b(AbstractC2731a abstractC2731a) {
        boolean z;
        if (this.f16961b == null) {
            z = false;
        } else {
            try {
                this.f16961b.m14709a((Context) BinderC2734b.m13795a(abstractC2731a));
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
            }
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: c */
    public final eba mo7440c() {
        eba ebaVar;
        if (!(this.f16960a instanceof AbstractC2383y)) {
            ebaVar = null;
        } else {
            try {
                ebaVar = ((AbstractC2383y) this.f16960a).getVideoController();
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
                ebaVar = null;
            }
        }
        return ebaVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: c */
    public final boolean mo7439c(AbstractC2731a abstractC2731a) {
        boolean z;
        if (this.f16962c == null) {
            z = false;
        } else {
            try {
                this.f16962c.m14708a((Context) BinderC2734b.m13795a(abstractC2731a));
            } catch (Throwable th) {
                C3645yb.m6748c("", th);
            }
            z = true;
        }
        return z;
    }
}
