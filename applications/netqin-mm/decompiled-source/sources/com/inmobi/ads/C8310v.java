package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.inmobi.ads.C8197c;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
import p131c.p372f.p373a.p374a.p375a.p381m.C6429c;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
/* renamed from: com.inmobi.ads.v */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/v.class */
public class C8310v extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f32322d = "v";

    /* renamed from: e */
    public final WeakReference<Activity> f32323e;

    /* renamed from: f */
    public final AbstractC8213cb f32324f;

    /* renamed from: g */
    public final AbstractC6427a<WebView> f32325g;

    /* renamed from: h */
    public final boolean f32326h;

    public C8310v(AdContainer adContainer, Activity activity, AbstractC8213cb cbVar, AbstractC6427a<WebView> aVar, boolean z) {
        super(adContainer);
        this.f32323e = new WeakReference<>(activity);
        this.f32324f = cbVar;
        this.f32325g = aVar;
        this.f32326h = z;
    }

    /* renamed from: a */
    public static AbstractC6427a<WebView> m5946a(Context context, boolean z, String str, RenderView renderView) {
        char c;
        C6433g gVar = new C6433g("7.3.0", z);
        int hashCode = str.hashCode();
        if (hashCode == -284840886) {
            if (str.equals("unknown")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 112202875) {
            if (hashCode == 1425678798 && str.equals("nonvideo")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals("video")) {
                c = 3;
            }
            c = 65535;
        }
        AbstractC6427a<WebView> c2 = c != 2 ? c != 3 ? null : C6429c.m20888c(context, gVar) : C6429c.m20890a(context, gVar);
        if (!(c2 == null || renderView == null)) {
            if (context instanceof Activity) {
                c2.m20895a(renderView, (Activity) context);
            } else {
                c2.m20895a(renderView, null);
            }
        }
        return c2;
    }

    /* renamed from: a */
    private void m5947a(Activity activity, WebView webView, View[] viewArr) {
        if (viewArr != null) {
            for (View view : viewArr) {
                this.f32325g.m20896a(view);
            }
        }
        this.f32325g.m20895a(webView, activity);
        if (this.f32326h && this.f32325g.m20892c() != null) {
            this.f32325g.m20892c().mo20912l();
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5945a() {
        return this.f32324f.mo5945a();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return this.f32324f.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        this.f32324f.mo5944a(i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        this.f32324f.mo5943a(context, i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                Activity activity = this.f32323e.get();
                C8197c.C8209l lVar = this.f32324f.mo5935c().f31992k;
                if (activity != null && lVar.f32066j) {
                    if (this.f32074a instanceof C8083ah) {
                        C8083ah ahVar = (C8083ah) this.f32074a;
                        if (ahVar.m6476s() != null) {
                            m5947a(activity, ahVar.m6476s(), viewArr);
                        }
                    } else {
                        View b = this.f32324f.mo5936b();
                        if (b != null) {
                            m5947a(activity, (WebView) b, viewArr);
                        }
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
            }
            this.f32324f.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f32324f.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f32324f.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f32324f.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                this.f32325g.m20893b(this.f32074a instanceof C8083ah ? ((C8083ah) this.f32074a).m6476s() : (WebView) this.f32324f.mo5936b());
                this.f32325g.m20897a();
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
            }
            this.f32324f.mo5934d();
        } catch (Throwable th) {
            this.f32324f.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        super.mo5933e();
        try {
            try {
                this.f32323e.clear();
            } catch (Exception e) {
                new StringBuilder("Exception in destroy with message : ").append(e.getMessage());
            }
            this.f32324f.mo5933e();
        } catch (Throwable th) {
            this.f32324f.mo5933e();
            throw th;
        }
    }
}
