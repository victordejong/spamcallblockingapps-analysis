package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.p013b.C0373a;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ama.class */
public final class ama implements aqi, arg {

    /* renamed from: a */
    private final Context f9979a;

    /* renamed from: b */
    private final act f9980b;

    /* renamed from: c */
    private final cgr f9981c;

    /* renamed from: d */
    private final C3647yd f9982d;
    @GuardedBy("this")

    /* renamed from: e */
    private AbstractC2731a f9983e;
    @GuardedBy("this")

    /* renamed from: f */
    private boolean f9984f;

    public ama(Context context, act actVar, cgr cgrVar, C3647yd c3647yd) {
        this.f9979a = context;
        this.f9980b = actVar;
        this.f9981c = cgrVar;
        this.f9982d = c3647yd;
    }

    /* renamed from: c */
    private final void m12951c() {
        synchronized (this) {
            if (this.f9981c.f12964J && this.f9980b != null && C2341q.m14729r().m7394a(this.f9979a)) {
                this.f9983e = C2341q.m14729r().m7391a(new StringBuilder(23).append(this.f9982d.f17637b).append(".").append(this.f9982d.f17638c).toString(), this.f9980b.getWebView(), "", "javascript", this.f9981c.f12966L.optInt("media_type", -1) == 0 ? null : "javascript");
                View view = this.f9980b.getView();
                if (this.f9983e != null && view != null) {
                    C2341q.m14729r().m7392a(this.f9983e, view);
                    this.f9980b.mo13473a(this.f9983e);
                    C2341q.m14729r().m7393a(this.f9983e);
                    this.f9984f = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        synchronized (this) {
            if (!this.f9984f) {
                m12951c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        synchronized (this) {
            if (!this.f9984f) {
                m12951c();
            }
            if (this.f9981c.f12964J && this.f9983e != null && this.f9980b != null) {
                this.f9980b.mo7737a("onSdkImpression", new C0373a());
            }
        }
    }
}
