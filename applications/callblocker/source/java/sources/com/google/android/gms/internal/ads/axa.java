package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.ads.dwv;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axa.class */
public final class axa implements AbstractC2328o, arg {

    /* renamed from: a */
    private final Context f10490a;

    /* renamed from: b */
    private final act f10491b;

    /* renamed from: c */
    private final cgr f10492c;

    /* renamed from: d */
    private final C3647yd f10493d;

    /* renamed from: e */
    private final dwv.C3021a.EnumC3022a f10494e;

    /* renamed from: f */
    private AbstractC2731a f10495f;

    public axa(Context context, act actVar, cgr cgrVar, C3647yd c3647yd, dwv.C3021a.EnumC3022a enumC3022a) {
        this.f10490a = context;
        this.f10491b = actVar;
        this.f10492c = cgrVar;
        this.f10493d = c3647yd;
        this.f10494e = enumC3022a;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        if ((this.f10494e == dwv.C3021a.EnumC3022a.REWARD_BASED_VIDEO_AD || this.f10494e == dwv.C3021a.EnumC3022a.INTERSTITIAL) && this.f10492c.f12964J && this.f10491b != null && C2341q.m14729r().m7394a(this.f10490a)) {
            this.f10495f = C2341q.m14729r().m7391a(new StringBuilder(23).append(this.f10493d.f17637b).append(".").append(this.f10493d.f17638c).toString(), this.f10491b.getWebView(), "", "javascript", this.f10492c.f12966L.optInt("media_type", -1) == 0 ? null : "javascript");
            if (this.f10495f == null || this.f10491b.getView() == null) {
                return;
            }
            C2341q.m14729r().m7392a(this.f10495f, this.f10491b.getView());
            this.f10491b.mo13473a(this.f10495f);
            C2341q.m14729r().m7393a(this.f10495f);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: c */
    public final void mo7433c() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: d */
    public final void mo7432d() {
        if (this.f10495f == null || this.f10491b == null) {
            return;
        }
        this.f10491b.mo7737a("onSdkImpression", new HashMap());
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: f_ */
    public final void mo7431f_() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: h_ */
    public final void mo7430h_() {
        this.f10495f = null;
    }
}
