package com.adcolony.sdk;

import android.os.Bundle;
import android.support.p012v4.media.AbstractC0081a;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.C1676a;
import p068d2.AbstractC2328k;
import p068d2.ActivityC2429w;
import p068d2.C2227e4;
import p068d2.C2267f4;
import p068d2.C2278h;
import p068d2.C2319j;
import p068d2.C2322j0;
import p068d2.C2408t;
import p068d2.C2410t0;
import p068d2.C2441x3;
/* loaded from: classes-dex2jar.jar:com/adcolony/sdk/AdColonyAdViewActivity.class */
public class AdColonyAdViewActivity extends ActivityC2429w {

    /* renamed from: j */
    public C2319j f3159j;

    public AdColonyAdViewActivity() {
        this.f3159j = !C2408t.m3589f() ? null : C2408t.m3591d().f8099n;
    }

    /* renamed from: f */
    public void m7241f() {
        ViewParent parent = this.f8596a.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.f8596a);
        }
        C2319j c2319j = this.f3159j;
        if (c2319j.f8279k || c2319j.f8282n) {
            float m4794c = C1676a.m4794c();
            C2278h c2278h = c2319j.f8271c;
            c2319j.f8269a.setLayoutParams(new FrameLayout.LayoutParams((int) (c2278h.f8189a * m4794c), (int) (c2278h.f8190b * m4794c)));
            C2441x3 webView = c2319j.getWebView();
            if (webView != null) {
                C2410t0 c2410t0 = new C2410t0("WebView.set_bounds", 0);
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3740m(c2267f4, "x", webView.f8657n);
                C2227e4.m3740m(c2267f4, "y", webView.f8659p);
                C2227e4.m3740m(c2267f4, "width", webView.f8661r);
                C2227e4.m3740m(c2267f4, "height", webView.f8663t);
                c2410t0.f8537b = c2267f4;
                webView.m3551i(c2410t0);
                C2267f4 c2267f42 = new C2267f4();
                C2227e4.m3744i(c2267f42, "ad_session_id", c2319j.f8272d);
                new C2410t0("MRAID.on_close", c2319j.f8269a.f8301k, c2267f42).m3586b();
            }
            ImageView imageView = c2319j.f8276h;
            if (imageView != null) {
                c2319j.f8269a.removeView(imageView);
                C2322j0 c2322j0 = c2319j.f8269a;
                ImageView imageView2 = c2319j.f8276h;
                AbstractC0081a abstractC0081a = c2322j0.f8314x;
                if (abstractC0081a != null && imageView2 != null) {
                    try {
                        abstractC0081a.mo8768K(imageView2);
                    } catch (RuntimeException e) {
                    }
                }
            }
            c2319j.addView(c2319j.f8269a);
            AbstractC2328k abstractC2328k = c2319j.f8270b;
            if (abstractC2328k != null) {
                abstractC2328k.mo1960b(c2319j);
            }
        }
        C2408t.m3591d().f8099n = null;
        finish();
    }

    @Override // p068d2.ActivityC2429w, android.app.Activity
    public void onBackPressed() {
        m7241f();
    }

    @Override // p068d2.ActivityC2429w, android.app.Activity
    public void onCreate(Bundle bundle) {
        C2319j c2319j;
        if (!C2408t.m3589f() || (c2319j = this.f3159j) == null) {
            C2408t.m3591d().f8099n = null;
            finish();
            return;
        }
        this.f8597b = c2319j.getOrientation();
        super.onCreate(bundle);
        this.f3159j.m3641a();
        AbstractC2328k listener = this.f3159j.getListener();
        if (listener == null) {
            return;
        }
        listener.mo1958d(this.f3159j);
    }
}
