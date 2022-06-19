package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wz1.class */
public abstract class wz1<AdT> implements qw1<AdT> {
    /* renamed from: d */
    private static Bundle m9412d(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        return !TextUtils.isEmpty(ej2Var.f22250v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<AdT> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        String optString = ej2Var.f22250v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        xj2 xj2Var = rj2Var.f28998a.f27577a;
        vj2 vj2Var = new vj2();
        vj2Var.m9970k(xj2Var);
        vj2Var.m9984L(optString);
        Bundle m9412d = m9412d(xj2Var.f32077d.f33671p);
        Bundle m9412d2 = m9412d(m9412d.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        m9412d2.putInt("gw", 1);
        String optString2 = ej2Var.f22250v.optString("mad_hac", null);
        if (optString2 != null) {
            m9412d2.putString("mad_hac", optString2);
        }
        String optString3 = ej2Var.f22250v.optString("adJson", null);
        if (optString3 != null) {
            m9412d2.putString("_ad", optString3);
        }
        m9412d2.putBoolean("_noRefresh", true);
        Iterator<String> keys = ej2Var.f22196D.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = ej2Var.f22196D.optString(next, null);
            if (next != null) {
                m9412d2.putString(next, optString4);
            }
        }
        m9412d.putBundle("com.google.ads.mediation.admob.AdMobAdapter", m9412d2);
        zzbdg zzbdgVar = xj2Var.f32077d;
        vj2Var.m9989G(new zzbdg(zzbdgVar.f33659d, zzbdgVar.f33660e, m9412d2, zzbdgVar.f33662g, zzbdgVar.f33663h, zzbdgVar.f33664i, zzbdgVar.f33665j, zzbdgVar.f33666k, zzbdgVar.f33667l, zzbdgVar.f33668m, zzbdgVar.f33669n, zzbdgVar.f33670o, m9412d, zzbdgVar.f33672q, zzbdgVar.f33673r, zzbdgVar.f33674s, zzbdgVar.f33675t, zzbdgVar.f33676u, zzbdgVar.f33677v, zzbdgVar.f33678w, zzbdgVar.f33679x, zzbdgVar.f33680y, zzbdgVar.f33681z, zzbdgVar.f33658A));
        xj2 m9969l = vj2Var.m9969l();
        Bundle bundle = new Bundle();
        jj2 jj2Var = rj2Var.f28999b.f28519b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(jj2Var.f24896a));
        bundle2.putInt("refresh_interval", jj2Var.f24898c);
        bundle2.putString("gws_query_id", jj2Var.f24897b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = rj2Var.f28998a.f27577a.f32079f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", ej2Var.f22251w);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(ej2Var.f22223c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(ej2Var.f22225d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(ej2Var.f22244p));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(ej2Var.f22242n));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(ej2Var.f22233h));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(ej2Var.f22235i));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(ej2Var.f22237j));
        bundle3.putString("transaction_id", ej2Var.f22239k);
        bundle3.putString("valid_from_timestamp", ej2Var.f22240l);
        bundle3.putBoolean("is_closable_area_disabled", ej2Var.f22204L);
        if (ej2Var.f22241m != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", ej2Var.f22241m.f33839e);
            bundle4.putString("rb_type", ej2Var.f22241m.f33838d);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo8124c(m9969l, bundle);
    }

    /* renamed from: c */
    protected abstract r03<AdT> mo8124c(xj2 xj2Var, Bundle bundle);
}
