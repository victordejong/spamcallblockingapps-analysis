package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvs.class */
public abstract class bvs<AdT> implements bsk<AdT> {
    private static Bundle a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    protected abstract dbt<AdT> a(cpo cpoVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return !TextUtils.isEmpty(covVar.u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<AdT> b(cpk cpkVar, cov covVar) {
        String optString = covVar.u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        cpo cpoVar = cpkVar.f26221a.f26209a;
        cpq cpqVar = new cpq();
        cpqVar.p.f26208a = cpoVar.o.f26202a;
        cpqVar.f26228a = cpoVar.f26227d;
        cpqVar.f26229b = cpoVar.e;
        cpqVar.f26230c = cpoVar.f26224a;
        cpqVar.f26231d = cpoVar.f;
        cpqVar.e = cpoVar.f26225b;
        cpqVar.g = cpoVar.g;
        cpqVar.h = cpoVar.h;
        cpqVar.i = cpoVar.i;
        cpqVar.j = cpoVar.j;
        cpq a2 = cpqVar.a(cpoVar.l).a(cpoVar.m);
        a2.q = cpoVar.p;
        a2.f26231d = optString;
        Bundle a3 = a(cpoVar.f26227d.zzcih);
        Bundle a4 = a(a3.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        a4.putInt("gw", 1);
        String optString2 = covVar.u.optString("mad_hac", null);
        if (optString2 != null) {
            a4.putString("mad_hac", optString2);
        }
        String optString3 = covVar.u.optString("adJson", null);
        if (optString3 != null) {
            a4.putString("_ad", optString3);
        }
        a4.putBoolean("_noRefresh", true);
        Iterator<String> keys = covVar.C.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = covVar.C.optString(next, null);
            if (next != null) {
                a4.putString(next, optString4);
            }
        }
        a3.putBundle("com.google.ads.mediation.admob.AdMobAdapter", a4);
        a2.f26228a = new zzvq(cpoVar.f26227d.versionCode, cpoVar.f26227d.zzcia, a4, cpoVar.f26227d.zzcib, cpoVar.f26227d.zzcic, cpoVar.f26227d.zzcid, cpoVar.f26227d.zzadv, cpoVar.f26227d.zzbns, cpoVar.f26227d.zzcie, cpoVar.f26227d.zzcif, cpoVar.f26227d.zzng, cpoVar.f26227d.zzcig, a3, cpoVar.f26227d.zzcii, cpoVar.f26227d.zzcij, cpoVar.f26227d.zzcik, cpoVar.f26227d.zzcil, cpoVar.f26227d.zzcim, cpoVar.f26227d.zzcip, cpoVar.f26227d.zzadw, cpoVar.f26227d.zzadx, cpoVar.f26227d.zzcin, cpoVar.f26227d.zzcio);
        cpo a5 = a2.a();
        Bundle bundle = new Bundle();
        coz cozVar = cpkVar.f26222b.f26217b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(cozVar.f26196a));
        bundle2.putInt("refresh_interval", cozVar.f26198c);
        bundle2.putString("gws_query_id", cozVar.f26197b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = cpkVar.f26221a.f26209a.f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", covVar.v);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(covVar.f26185c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(covVar.f26186d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(covVar.o));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(covVar.m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(covVar.g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(covVar.h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(covVar.i));
        bundle3.putString("transaction_id", covVar.j);
        bundle3.putString("valid_from_timestamp", covVar.k);
        bundle3.putBoolean("is_closable_area_disabled", covVar.K);
        if (covVar.l != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", covVar.l.zzean);
            bundle4.putString("rb_type", covVar.l.type);
            bundle3.putParcelableArray(Constants.REWARDS, new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return a(a5, bundle);
    }
}
