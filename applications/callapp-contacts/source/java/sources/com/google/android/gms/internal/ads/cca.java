package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cca.class */
public final class cca implements cgy<Bundle> {

    /* renamed from: a */
    private final cpo f45492a;

    public cca(cpo cpoVar) {
        C12045o.m19161a(cpoVar, "the targeting must not be null");
        this.f45492a = cpoVar;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzvq zzvqVar = this.f45492a.f46324d;
        bundle2.putInt("http_timeout_millis", this.f45492a.f46324d.zzcio);
        bundle2.putString("slotname", this.f45492a.f46326f);
        int i = cbz.f45486a[this.f45492a.f46335o.f46299a - 1];
        if (i == 1) {
            bundle2.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle2.putBoolean("is_rewarded_interstitial", true);
        }
        cpw.m17347a(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzvqVar.zzcia)), zzvqVar.zzcia != -1);
        cpw.m17351a(bundle2, "extras", zzvqVar.extras);
        cpw.m17349a(bundle2, "cust_gender", Integer.valueOf(zzvqVar.zzcib), zzvqVar.zzcib != -1);
        cpw.m17346a(bundle2, "kw", zzvqVar.zzcic);
        cpw.m17349a(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzvqVar.zzadv), zzvqVar.zzadv != -1);
        if (zzvqVar.zzcid) {
            bundle2.putBoolean("test_request", zzvqVar.zzcid);
        }
        cpw.m17349a(bundle2, "d_imp_hdr", (Integer) 1, zzvqVar.versionCode >= 2 && zzvqVar.zzbns);
        cpw.m17347a(bundle2, "ppid", zzvqVar.zzcie, zzvqVar.versionCode >= 2 && !TextUtils.isEmpty(zzvqVar.zzcie));
        if (zzvqVar.zzng != null) {
            Location location = zzvqVar.zzng;
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
        cpw.m17348a(bundle2, "url", zzvqVar.zzcig);
        cpw.m17346a(bundle2, "neighboring_content_urls", zzvqVar.zzcin);
        cpw.m17351a(bundle2, "custom_targeting", zzvqVar.zzcii);
        cpw.m17346a(bundle2, "category_exclusions", zzvqVar.zzcij);
        cpw.m17348a(bundle2, "request_agent", zzvqVar.zzcik);
        cpw.m17348a(bundle2, "request_pkg", zzvqVar.zzcil);
        cpw.m17350a(bundle2, "is_designed_for_families", Boolean.valueOf(zzvqVar.zzcim), zzvqVar.versionCode >= 7);
        if (zzvqVar.versionCode >= 8) {
            cpw.m17349a(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zzvqVar.zzadw), zzvqVar.zzadw != -1);
            cpw.m17348a(bundle2, "max_ad_content_rating", zzvqVar.zzadx);
        }
    }
}
