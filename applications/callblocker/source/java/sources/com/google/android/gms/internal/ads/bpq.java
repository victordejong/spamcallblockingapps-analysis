package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpq.class */
public abstract class bpq<AdT> implements bmv<AdT> {
    /* renamed from: a */
    private static Bundle m11729a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    /* renamed from: a */
    protected abstract crt<AdT> mo11728a(chh chhVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return !TextUtils.isEmpty(cgrVar.f12997s.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<AdT> mo11688b(chd chdVar, cgr cgrVar) {
        String optString = cgrVar.f12997s.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        chh chhVar = chdVar.f13034a.f13017a;
        chj m11336a = new chj().m11344a(chhVar).m11336a(optString);
        Bundle m11729a = m11729a(chhVar.f13040d.f16079m);
        Bundle m11729a2 = m11729a(m11729a.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        m11729a2.putInt("gw", 1);
        String optString2 = cgrVar.f12997s.optString("mad_hac", null);
        if (optString2 != null) {
            m11729a2.putString("mad_hac", optString2);
        }
        String optString3 = cgrVar.f12997s.optString("adJson", null);
        if (optString3 != null) {
            m11729a2.putString("_ad", optString3);
        }
        m11729a2.putBoolean("_noRefresh", true);
        Iterator<String> keys = cgrVar.f12955A.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = cgrVar.f12955A.optString(next, null);
            if (next != null) {
                m11729a2.putString(next, optString4);
            }
        }
        m11729a.putBundle("com.google.ads.mediation.admob.AdMobAdapter", m11729a2);
        chh m11325e = m11336a.m11342a(new dya(chhVar.f13040d.f16067a, chhVar.f13040d.f16068b, m11729a2, chhVar.f13040d.f16070d, chhVar.f13040d.f16071e, chhVar.f13040d.f16072f, chhVar.f13040d.f16073g, chhVar.f13040d.f16074h, chhVar.f13040d.f16075i, chhVar.f13040d.f16076j, chhVar.f13040d.f16077k, chhVar.f13040d.f16078l, m11729a, chhVar.f13040d.f16080n, chhVar.f13040d.f16081o, chhVar.f13040d.f16082p, chhVar.f13040d.f16083q, chhVar.f13040d.f16084r, chhVar.f13040d.f16085s, chhVar.f13040d.f16086t, chhVar.f13040d.f16087u, chhVar.f13040d.f16088v)).m11325e();
        Bundle bundle = new Bundle();
        cgs cgsVar = chdVar.f13035b.f13025b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(cgsVar.f13005a));
        bundle2.putInt("refresh_interval", cgsVar.f13007c);
        bundle2.putString("gws_query_id", cgsVar.f13006b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = chdVar.f13034a.f13017a.f13042f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", cgrVar.f12998t);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(cgrVar.f12981c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(cgrVar.f12982d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(cgrVar.f12992n));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(cgrVar.f12991m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(cgrVar.f12985g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(cgrVar.f12986h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(cgrVar.f12987i));
        bundle3.putString("transaction_id", cgrVar.f12988j);
        bundle3.putString("valid_from_timestamp", cgrVar.f12989k);
        bundle3.putBoolean("is_closable_area_disabled", cgrVar.f12961G);
        if (cgrVar.f12990l != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", cgrVar.f12990l.f17314b);
            bundle4.putString("rb_type", cgrVar.f12990l.f17313a);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo11728a(m11325e, bundle);
    }
}
