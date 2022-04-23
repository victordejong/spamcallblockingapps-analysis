package com.google.android.gms.internal.ads;

import com.explorestack.iab.mraid.h;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akr.class */
public final class akr {

    /* renamed from: a  reason: collision with root package name */
    private final cty f23505a;

    /* renamed from: b  reason: collision with root package name */
    private final bli f23506b;

    /* renamed from: c  reason: collision with root package name */
    private final cpk f23507c;

    public akr(bli bliVar, cpk cpkVar, cty ctyVar) {
        this.f23505a = ctyVar;
        this.f23506b = bliVar;
        this.f23507c = cpkVar;
    }

    private static String a(int i) {
        int i2 = aku.f23512a[i - 1];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "u" : "cb" : "ac" : "cc" : h.f19142a : "bb";
    }

    public final void a(long j, int i) {
        if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
            this.f23505a.a(ctz.a("ad_closed").a(this.f23507c.f26222b.f26217b).a("show_time", String.valueOf(j)).a(Reporting.Key.AD_FORMAT, "app_open_ad").a("acr", a(i)));
        } else {
            this.f23506b.a().a(this.f23507c.f26222b.f26217b).a("action", "ad_closed").a("show_time", String.valueOf(j)).a(Reporting.Key.AD_FORMAT, "app_open_ad").a("acr", a(i)).a();
        }
    }
}
