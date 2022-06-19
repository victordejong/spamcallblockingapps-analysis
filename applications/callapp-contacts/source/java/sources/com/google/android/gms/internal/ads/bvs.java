package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvs.class */
public abstract class bvs<AdT> implements bsk<AdT> {
    /* renamed from: a */
    private static Bundle m17601a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    /* renamed from: a */
    protected abstract dbt<AdT> mo17600a(cpo cpoVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return !TextUtils.isEmpty(covVar.f46274u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<AdT> mo17574b(cpk cpkVar, cov covVar) {
        String optString = covVar.f46274u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        cpo cpoVar = cpkVar.f46318a.f46306a;
        cpq cpqVar = new cpq();
        cpqVar.f46352p.f46305a = cpoVar.f46335o.f46299a;
        cpqVar.f46337a = cpoVar.f46324d;
        cpqVar.f46338b = cpoVar.f46325e;
        cpqVar.f46339c = cpoVar.f46321a;
        cpqVar.f46340d = cpoVar.f46326f;
        cpqVar.f46341e = cpoVar.f46322b;
        cpqVar.f46343g = cpoVar.f46327g;
        cpqVar.f46344h = cpoVar.f46328h;
        cpqVar.f46345i = cpoVar.f46329i;
        cpqVar.f46346j = cpoVar.f46330j;
        cpq m17360a = cpqVar.m17361a(cpoVar.f46332l).m17360a(cpoVar.f46333m);
        m17360a.f46353q = cpoVar.f46336p;
        m17360a.f46340d = optString;
        Bundle m17601a = m17601a(cpoVar.f46324d.zzcih);
        Bundle m17601a2 = m17601a(m17601a.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        m17601a2.putInt("gw", 1);
        String optString2 = covVar.f46274u.optString("mad_hac", null);
        if (optString2 != null) {
            m17601a2.putString("mad_hac", optString2);
        }
        String optString3 = covVar.f46274u.optString("adJson", null);
        if (optString3 != null) {
            m17601a2.putString("_ad", optString3);
        }
        m17601a2.putBoolean("_noRefresh", true);
        Iterator<String> keys = covVar.f46223C.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = covVar.f46223C.optString(next, null);
            if (next != null) {
                m17601a2.putString(next, optString4);
            }
        }
        m17601a.putBundle("com.google.ads.mediation.admob.AdMobAdapter", m17601a2);
        m17360a.f46337a = new zzvq(cpoVar.f46324d.versionCode, cpoVar.f46324d.zzcia, m17601a2, cpoVar.f46324d.zzcib, cpoVar.f46324d.zzcic, cpoVar.f46324d.zzcid, cpoVar.f46324d.zzadv, cpoVar.f46324d.zzbns, cpoVar.f46324d.zzcie, cpoVar.f46324d.zzcif, cpoVar.f46324d.zzng, cpoVar.f46324d.zzcig, m17601a, cpoVar.f46324d.zzcii, cpoVar.f46324d.zzcij, cpoVar.f46324d.zzcik, cpoVar.f46324d.zzcil, cpoVar.f46324d.zzcim, cpoVar.f46324d.zzcip, cpoVar.f46324d.zzadw, cpoVar.f46324d.zzadx, cpoVar.f46324d.zzcin, cpoVar.f46324d.zzcio);
        cpo m17362a = m17360a.m17362a();
        Bundle bundle = new Bundle();
        coz cozVar = cpkVar.f46319b.f46314b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(cozVar.f46289a));
        bundle2.putInt("refresh_interval", cozVar.f46291c);
        bundle2.putString("gws_query_id", cozVar.f46290b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = cpkVar.f46318a.f46306a.f46326f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", covVar.f46275v);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(covVar.f46256c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(covVar.f46257d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(covVar.f46268o));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(covVar.f46266m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(covVar.f46260g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(covVar.f46261h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(covVar.f46262i));
        bundle3.putString("transaction_id", covVar.f46263j);
        bundle3.putString("valid_from_timestamp", covVar.f46264k);
        bundle3.putBoolean("is_closable_area_disabled", covVar.f46231K);
        if (covVar.f46265l != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", covVar.f46265l.zzean);
            bundle4.putString("rb_type", covVar.f46265l.type);
            bundle3.putParcelableArray(Constants.REWARDS, new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo17600a(m17362a, bundle);
    }
}
