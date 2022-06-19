package com.adcolony.sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.AbstractC0081a;
import p068d2.ActivityC2429w;
import p068d2.C2200d4;
import p068d2.C2203e1;
import p068d2.C2227e4;
import p068d2.C2267f4;
import p068d2.C2329k0;
import p068d2.C2387q;
import p068d2.C2408t;
import p068d2.C2410t0;
import p068d2.C2411t1;
/* loaded from: classes-dex2jar.jar:com/adcolony/sdk/AdColonyInterstitialActivity.class */
public class AdColonyInterstitialActivity extends ActivityC2429w {

    /* renamed from: j */
    public C2387q f3160j;

    /* renamed from: k */
    public C2203e1 f3161k;

    public AdColonyInterstitialActivity() {
        this.f3160j = !C2408t.m3589f() ? null : C2408t.m3591d().f8100o;
    }

    @Override // p068d2.ActivityC2429w
    /* renamed from: c */
    public void mo3561c(C2410t0 c2410t0) {
        String str;
        super.mo3561c(c2410t0);
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        C2267f4 m3700l = c2410t0.f8537b.m3700l("v4iap");
        C2200d4 m3750c = C2227e4.m3750c(m3700l, "product_ids");
        C2387q c2387q = this.f3160j;
        if (c2387q != null && c2387q.f8436a != null) {
            synchronized (m3750c.f8025a) {
                if (!m3750c.f8025a.isNull(0)) {
                    Object opt = m3750c.f8025a.opt(0);
                    if (opt instanceof String) {
                        str = (String) opt;
                    } else if (opt != null) {
                        str = String.valueOf(opt);
                    }
                }
                str = null;
            }
            if (str != null) {
                C2387q c2387q2 = this.f3160j;
                c2387q2.f8436a.mo1955C(c2387q2, str, C2227e4.m3735r(m3700l, "engagement_type"));
            }
        }
        m3722l.m3635d(this.f8596a);
        C2387q c2387q3 = this.f3160j;
        if (c2387q3 != null) {
            m3722l.f8330c.remove(c2387q3.f8442g);
            C2387q c2387q4 = this.f3160j;
            AbstractC0081a abstractC0081a = c2387q4.f8436a;
            if (abstractC0081a != null) {
                abstractC0081a.mo1947x(c2387q4);
                C2387q c2387q5 = this.f3160j;
                c2387q5.f8438c = null;
                c2387q5.f8436a = null;
            }
            this.f3160j.m3616b();
            this.f3160j = null;
        }
        C2203e1 c2203e1 = this.f3161k;
        if (c2203e1 != null) {
            Context context = C2408t.f8531a;
            if (context != null) {
                context.getApplicationContext().getContentResolver().unregisterContentObserver(c2203e1);
            }
            c2203e1.f8030b = null;
            c2203e1.f8029a = null;
            this.f3161k = null;
        }
    }

    @Override // p068d2.ActivityC2429w, android.app.Activity
    public void onCreate(Bundle bundle) {
        C2387q c2387q;
        C2387q c2387q2 = this.f3160j;
        this.f8597b = c2387q2 == null ? -1 : c2387q2.f8441f;
        super.onCreate(bundle);
        if (!C2408t.m3589f() || (c2387q = this.f3160j) == null) {
            return;
        }
        C2411t1 c2411t1 = c2387q.f8440e;
        if (c2411t1 != null) {
            c2411t1.m3584b(this.f8596a);
        }
        this.f3161k = new C2203e1(new Handler(Looper.getMainLooper()), this.f3160j);
        C2387q c2387q3 = this.f3160j;
        AbstractC0081a abstractC0081a = c2387q3.f8436a;
        if (abstractC0081a == null) {
            return;
        }
        abstractC0081a.mo1953E(c2387q3);
    }
}
