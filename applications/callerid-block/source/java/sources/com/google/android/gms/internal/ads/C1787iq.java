package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.internal.ads.iq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iq.class */
public final class C1787iq {

    /* renamed from: a */
    private final Context f6828a;

    /* renamed from: b */
    private final rq f6829b;

    /* renamed from: c */
    private final ViewGroup f6830c;

    /* renamed from: d */
    private zzbdf f6831d;

    public C1787iq(Context context, ViewGroup viewGroup, jt jtVar) {
        this.f6828a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f6830c = viewGroup;
        this.f6829b = jtVar;
        this.f6831d = null;
    }

    /* renamed from: a */
    public final void m7114a(int i, int i2, int i3, int i4) {
        C1581h.m8352c("The underlay may only be modified from the UI thread.");
        zzbdf zzbdfVar = this.f6831d;
        if (zzbdfVar != null) {
            zzbdfVar.t(i, i2, i3, i4);
        }
    }

    /* renamed from: b */
    public final void m7113b(int i, int i2, int i3, int i4, int i5, boolean z, C1911qq c1911qq) {
        if (this.f6831d != null) {
            return;
        }
        C1952t3.m5547a(this.f6829b.l().m8162c(), this.f6829b.i(), "vpr2");
        Context context = this.f6828a;
        rq rqVar = this.f6829b;
        View zzbdfVar = new zzbdf(context, rqVar, i5, z, rqVar.l().m8162c(), c1911qq);
        this.f6831d = zzbdfVar;
        this.f6830c.addView(zzbdfVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f6831d.t(i, i2, i3, i4);
        this.f6829b.d0(false);
    }

    /* renamed from: c */
    public final zzbdf m7112c() {
        C1581h.m8352c("getAdVideoUnderlay must be called from the UI thread.");
        return this.f6831d;
    }

    /* renamed from: d */
    public final void m7111d() {
        C1581h.m8352c("onPause must be called from the UI thread.");
        zzbdf zzbdfVar = this.f6831d;
        if (zzbdfVar != null) {
            zzbdfVar.x();
        }
    }

    /* renamed from: e */
    public final void m7110e() {
        C1581h.m8352c("onDestroy must be called from the UI thread.");
        zzbdf zzbdfVar = this.f6831d;
        if (zzbdfVar != null) {
            zzbdfVar.l();
            this.f6830c.removeView(this.f6831d);
            this.f6831d = null;
        }
    }

    /* renamed from: f */
    public final void m7109f(int i) {
        C1581h.m8352c("setPlayerBackgroundColor must be called from the UI thread.");
        zzbdf zzbdfVar = this.f6831d;
        if (zzbdfVar != null) {
            zzbdfVar.s(i);
        }
    }
}
