package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvb.class */
public final class bvb implements cae<Bundle> {

    /* renamed from: a */
    private final chh f12323a;

    public bvb(chh chhVar) {
        C2662s.m13980a(chhVar, "the targeting must not be null");
        this.f12323a = chhVar;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        dya dyaVar = this.f12323a.f13040d;
        bundle2.putString("slotname", this.f12323a.f13042f);
        switch (bva.f12322a[this.f12323a.f13050n.f13011a - 1]) {
            case 1:
                bundle2.putBoolean("is_new_rewarded", true);
                break;
            case 2:
                bundle2.putBoolean("is_rewarded_interstitial", true);
                break;
        }
        chm.m11303a(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(dyaVar.f16068b)), dyaVar.f16068b != -1);
        chm.m11307a(bundle2, "extras", dyaVar.f16069c);
        chm.m11305a(bundle2, "cust_gender", Integer.valueOf(dyaVar.f16070d), dyaVar.f16070d != -1);
        chm.m11302a(bundle2, "kw", dyaVar.f16071e);
        chm.m11305a(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(dyaVar.f16073g), dyaVar.f16073g != -1);
        if (dyaVar.f16072f) {
            bundle2.putBoolean("test_request", dyaVar.f16072f);
        }
        chm.m11305a(bundle2, "d_imp_hdr", (Integer) 1, dyaVar.f16067a >= 2 && dyaVar.f16074h);
        chm.m11303a(bundle2, "ppid", dyaVar.f16075i, dyaVar.f16067a >= 2 && !TextUtils.isEmpty(dyaVar.f16075i));
        if (dyaVar.f16077k != null) {
            Location location = dyaVar.f16077k;
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
        chm.m11304a(bundle2, "url", dyaVar.f16078l);
        chm.m11302a(bundle2, "neighboring_content_urls", dyaVar.f16088v);
        chm.m11307a(bundle2, "custom_targeting", dyaVar.f16080n);
        chm.m11302a(bundle2, "category_exclusions", dyaVar.f16081o);
        chm.m11304a(bundle2, "request_agent", dyaVar.f16082p);
        chm.m11304a(bundle2, "request_pkg", dyaVar.f16083q);
        chm.m11306a(bundle2, "is_designed_for_families", Boolean.valueOf(dyaVar.f16084r), dyaVar.f16067a >= 7);
        if (dyaVar.f16067a >= 8) {
            chm.m11305a(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(dyaVar.f16086t), dyaVar.f16086t != -1);
            chm.m11304a(bundle2, "max_ad_content_rating", dyaVar.f16087u);
        }
    }
}
