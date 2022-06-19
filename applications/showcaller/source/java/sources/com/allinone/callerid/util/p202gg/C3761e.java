package com.allinone.callerid.util.p202gg;

import android.app.Activity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.p265x.AbstractC5859a;
import com.google.android.gms.ads.p265x.AbstractC5860b;
/* renamed from: com.allinone.callerid.util.gg.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/e.class */
public class C3761e {

    /* renamed from: a */
    private static C3761e f11978a = new C3761e();

    /* renamed from: b */
    private AbstractC5859a f11979b;

    /* renamed from: c */
    private boolean f11980c = false;

    /* renamed from: com.allinone.callerid.util.gg.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/e$a.class */
    public class C3762a extends AbstractC5860b {

        /* renamed from: a */
        final /* synthetic */ boolean f11981a;

        /* renamed from: b */
        final /* synthetic */ Activity f11982b;

        C3762a(boolean z, Activity activity) {
            C3761e.this = r4;
            this.f11981a = z;
            this.f11982b = activity;
        }

        @Override // com.google.android.gms.ads.AbstractC5598c
        /* renamed from: a */
        public void mo18297a(C5756j c5756j) {
            super.mo18297a(c5756j);
            C3761e.this.f11980c = false;
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "backInterstitialAd_onAdFailedToLoad:" + c5756j.m18308c());
            }
        }

        /* renamed from: c */
        public void mo18296b(AbstractC5859a abstractC5859a) {
            super.mo18296b(abstractC5859a);
            C3761e.this.f11980c = false;
            C3761e.this.f11979b = abstractC5859a;
            C2578f.m27068m(System.currentTimeMillis());
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "backInterstitialAd_onAdLoaded");
            }
            if (!this.f11981a || C3761e.this.f11979b == null) {
                return;
            }
            C3761e.this.f11979b.mo11725d(this.f11982b);
            C3761e.this.f11979b = null;
        }
    }

    private C3761e() {
    }

    /* renamed from: d */
    public static C3761e m24321d() {
        return f11978a;
    }

    /* renamed from: e */
    public void m24320e(boolean z, Activity activity) {
        if (!C3725e.m24417b(EZCallApplication.m26146c())) {
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("wbb", "无网");
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "backInterstitialAd_request");
        }
        if (this.f11980c) {
            return;
        }
        if (this.f11979b == null || System.currentTimeMillis() - C2578f.m27080a() >= 1800000) {
            this.f11980c = true;
            AbstractC5859a.m17736a(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/1576366355", new C5603e.C5604a().m18282c(), new C3762a(z, activity));
        } else if (!C3718c0.f11914a) {
        } else {
            C3718c0.m24436a("wbb", "backInterstitialAd_has_cache");
        }
    }

    /* renamed from: f */
    public void m24319f(Activity activity) {
        AbstractC5859a abstractC5859a = this.f11979b;
        if (abstractC5859a == null) {
            m24320e(true, activity);
            return;
        }
        abstractC5859a.mo11725d(activity);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "applyInterstitialAd_show");
        }
        this.f11979b = null;
        C2578f.m27068m(0L);
    }
}
