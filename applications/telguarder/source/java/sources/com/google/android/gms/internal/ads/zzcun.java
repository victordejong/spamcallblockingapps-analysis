package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcun.class */
public abstract class zzcun<AdT> implements zzcrj<AdT> {
    private static Bundle zzm(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    protected abstract zzdzw<AdT> zza(zzdnp zzdnpVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return !TextUtils.isEmpty(zzdmwVar.zzhjj.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        String optString = zzdmwVar.zzhjj.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzdnp zzdnpVar = zzdnlVar.zzhkr.zzfwy;
        zzdnr zzgs = new zzdnr().zzc(zzdnpVar).zzgs(optString);
        Bundle zzm = zzm(zzdnpVar.zzhkw.zzchu);
        Bundle zzm2 = zzm(zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzm2.putInt("gw", 1);
        String optString2 = zzdmwVar.zzhjj.optString("mad_hac", null);
        if (optString2 != null) {
            zzm2.putString("mad_hac", optString2);
        }
        String optString3 = zzdmwVar.zzhjj.optString("adJson", null);
        if (optString3 != null) {
            zzm2.putString("_ad", optString3);
        }
        zzm2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzdmwVar.zzhjm.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzdmwVar.zzhjm.optString(next, null);
            if (next != null) {
                zzm2.putString(next, optString4);
            }
        }
        zzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzm2);
        zzdnp zzavh = zzgs.zzh(new zzvl(zzdnpVar.zzhkw.versionCode, zzdnpVar.zzhkw.zzchn, zzm2, zzdnpVar.zzhkw.zzcho, zzdnpVar.zzhkw.zzchp, zzdnpVar.zzhkw.zzchq, zzdnpVar.zzhkw.zzado, zzdnpVar.zzhkw.zzbni, zzdnpVar.zzhkw.zzchr, zzdnpVar.zzhkw.zzchs, zzdnpVar.zzhkw.zznb, zzdnpVar.zzhkw.zzcht, zzm, zzdnpVar.zzhkw.zzchv, zzdnpVar.zzhkw.zzchw, zzdnpVar.zzhkw.zzchx, zzdnpVar.zzhkw.zzchy, zzdnpVar.zzhkw.zzchz, zzdnpVar.zzhkw.zzcia, zzdnpVar.zzhkw.zzadp, zzdnpVar.zzhkw.zzadq, zzdnpVar.zzhkw.zzcib, zzdnpVar.zzhkw.zzcic)).zzavh();
        Bundle bundle = new Bundle();
        zzdnb zzdnbVar = zzdnlVar.zzhks.zzess;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzdnbVar.zzdms));
        bundle2.putInt("refresh_interval", zzdnbVar.zzhkg);
        bundle2.putString("gws_query_id", zzdnbVar.zzbvs);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzdnlVar.zzhkr.zzfwy.zzhkx;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzdmwVar.zzdlu);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzdmwVar.zzdmp));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzdmwVar.zzdmq));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzdmwVar.zzdwa));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzdmwVar.zzhjc));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzdmwVar.zzdwn));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzdmwVar.zzdwo));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzdmwVar.zzhjb));
        bundle3.putString(FirebaseAnalytics.Param.TRANSACTION_ID, zzdmwVar.zzdmf);
        bundle3.putString("valid_from_timestamp", zzdmwVar.zzdmg);
        bundle3.putBoolean("is_closable_area_disabled", zzdmwVar.zzbpm);
        if (zzdmwVar.zzdwm != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzdmwVar.zzdwm.zzdzc);
            bundle4.putString("rb_type", zzdmwVar.zzdwm.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zza(zzavh, bundle);
    }
}
