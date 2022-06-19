package com.google.android.gms.internal.ads;

import com.explorestack.iab.mraid.C9568h;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akr.class */
public final class akr {

    /* renamed from: a */
    private final cty f42326a;

    /* renamed from: b */
    private final bli f42327b;

    /* renamed from: c */
    private final cpk f42328c;

    public akr(bli bliVar, cpk cpkVar, cty ctyVar) {
        this.f42326a = ctyVar;
        this.f42327b = bliVar;
        this.f42328c = cpkVar;
    }

    /* renamed from: a */
    private static String m18608a(int i) {
        int i2 = aku.f42336a[i - 1];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "u" : "cb" : "ac" : "cc" : C9568h.f32519a : "bb";
    }

    /* renamed from: a */
    public final void m18607a(long j, int i) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
            this.f42326a.mo17215a(ctz.m17226a("ad_closed").m17228a(this.f42328c.f46319b.f46314b).m17225a("show_time", String.valueOf(j)).m17225a(Reporting.Key.AD_FORMAT, "app_open_ad").m17225a("acr", m18608a(i)));
        } else {
            this.f42327b.m17765a().m17768a(this.f42328c.f46319b.f46314b).m17767a("action", "ad_closed").m17767a("show_time", String.valueOf(j)).m17767a(Reporting.Key.AD_FORMAT, "app_open_ad").m17767a("acr", m18608a(i)).m17771a();
        }
    }
}
