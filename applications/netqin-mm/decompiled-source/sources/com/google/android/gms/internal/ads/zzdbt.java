package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p252g.p253a.C3779ls;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbt.class */
public final class zzdbt implements zzdgu<Bundle> {

    /* renamed from: a */
    public final zzdok f26894a;

    public zzdbt(zzdok zzdokVar) {
        Preconditions.m17287a(zzdokVar, "the targeting must not be null");
        this.f26894a = zzdokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdok zzdokVar = this.f26894a;
        zzvg zzvgVar = zzdokVar.f27642d;
        bundle2.putString("slotname", zzdokVar.f27644f);
        boolean z = true;
        int i = C3779ls.f13999a[this.f26894a.f27652n.f27623a - 1];
        if (i == 1) {
            bundle2.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle2.putBoolean("is_rewarded_interstitial", true);
        }
        zzdot.m13392a(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzvgVar.f29002b)), zzvgVar.f29002b != -1);
        zzdot.m13396a(bundle2, "extras", zzvgVar.f29003c);
        zzdot.m13394a(bundle2, "cust_gender", Integer.valueOf(zzvgVar.f29004d), zzvgVar.f29004d != -1);
        zzdot.m13391a(bundle2, "kw", zzvgVar.f29005e);
        zzdot.m13394a(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzvgVar.f29007g), zzvgVar.f29007g != -1);
        boolean z2 = zzvgVar.f29006f;
        if (z2) {
            bundle2.putBoolean("test_request", z2);
        }
        zzdot.m13394a(bundle2, "d_imp_hdr", (Integer) 1, zzvgVar.f29001a >= 2 && zzvgVar.f29008h);
        String str = zzvgVar.f29009i;
        zzdot.m13392a(bundle2, "ppid", str, zzvgVar.f29001a >= 2 && !TextUtils.isEmpty(str));
        Location location = zzvgVar.f29011k;
        if (location != null) {
            float accuracy = location.getAccuracy();
            long time = location.getTime();
            long latitude = (long) (location.getLatitude() * 1.0E7d);
            long longitude = (long) (location.getLongitude() * 1.0E7d);
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", Float.valueOf(accuracy * 1000.0f).floatValue());
            bundle3.putLong("lat", Long.valueOf(latitude).longValue());
            bundle3.putLong("long", Long.valueOf(longitude).longValue());
            bundle3.putLong("time", Long.valueOf(time * 1000).longValue());
            bundle2.putBundle("uule", bundle3);
        }
        zzdot.m13393a(bundle2, "url", zzvgVar.f29012l);
        zzdot.m13391a(bundle2, "neighboring_content_urls", zzvgVar.f29022v);
        zzdot.m13396a(bundle2, "custom_targeting", zzvgVar.f29014n);
        zzdot.m13391a(bundle2, "category_exclusions", zzvgVar.f29015o);
        zzdot.m13393a(bundle2, "request_agent", zzvgVar.f29016p);
        zzdot.m13393a(bundle2, "request_pkg", zzvgVar.f29017q);
        zzdot.m13395a(bundle2, "is_designed_for_families", Boolean.valueOf(zzvgVar.f29018r), zzvgVar.f29001a >= 7);
        if (zzvgVar.f29001a >= 8) {
            int i2 = zzvgVar.f29020t;
            if (zzvgVar.f29020t == -1) {
                z = false;
            }
            zzdot.m13394a(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(i2), z);
            zzdot.m13393a(bundle2, "max_ad_content_rating", zzvgVar.f29021u);
        }
    }
}
