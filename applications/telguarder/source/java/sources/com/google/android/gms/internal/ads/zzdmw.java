package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.applinks.AppLinkData;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidSettings;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmw.class */
public final class zzdmw {

    /* renamed from: id */
    public final String f119id;
    public final boolean zzbpm;
    public final String zzcht;
    public final String zzdlu;
    public final String zzdmf;
    public final String zzdmg;
    public final List<String> zzdmp;
    public final List<String> zzdmq;
    public final String zzdmv;
    public final boolean zzdnc;
    public final boolean zzdnd;
    public final boolean zzdne;
    public final String zzdoq;
    public final List<String> zzdwa;
    public final String zzdwd;
    public final String zzdwg;
    public final zzavj zzdwm;
    public final List<String> zzdwn;
    public final List<String> zzdwo;
    public final boolean zzdww;
    public final boolean zzdwz;
    public final boolean zzdxa;
    public final boolean zzdxt;
    public final String zzeuo;
    public final int zzfto;
    public final boolean zzftp;
    public final boolean zzftq;
    public final String zzfzc;
    public final List<String> zzhix;
    public final int zzhiy;
    public final int zzhiz;
    public final List<String> zzhja;
    public final List<String> zzhjb;
    public final List<String> zzhjc;
    public final List<String> zzhjd;
    public final int zzhje;
    public final List<zzdmz> zzhjf;
    public final zzdnd zzhjg;
    public final List<String> zzhjh;
    public final List<zzdmz> zzhji;
    public final JSONObject zzhjj;
    public final zzawu zzhjk;
    public final JSONObject zzhjl;
    public final JSONObject zzhjm;
    public final String zzhjn;
    public final boolean zzhjo;
    public final int zzhjp;
    public final int zzhjq;
    public final OmidSettings zzhjr;
    public final int zzhjs;
    public final boolean zzhjt;
    public final zzarx zzhju;
    public final zzvu zzhjv;
    public final String zzhjw;
    public final boolean zzhjx;
    public final JSONObject zzhjy;
    public final boolean zzhjz;
    public final JSONObject zzhka;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzdmw(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        boolean z;
        int i;
        zzarx zzarxVar;
        List<String> emptyList = Collections.emptyList();
        List<String> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        List<String> emptyList4 = Collections.emptyList();
        List<String> emptyList5 = Collections.emptyList();
        Collections.emptyList();
        List<String> emptyList6 = Collections.emptyList();
        List<String> emptyList7 = Collections.emptyList();
        List<String> emptyList8 = Collections.emptyList();
        List<String> emptyList9 = Collections.emptyList();
        List<String> emptyList10 = Collections.emptyList();
        List<zzdmz> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<zzdmz> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jsonReader.beginObject();
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        zzavj zzavjVar = null;
        zzdnd zzdndVar = null;
        zzawu zzawuVar = null;
        zzarx zzarxVar2 = null;
        zzvu zzvuVar = null;
        String str10 = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        int i5 = -1;
        int i6 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        int i7 = 0;
        int i8 = -1;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = false;
        boolean z15 = false;
        String str11 = str;
        String str12 = str;
        String str13 = str;
        List<zzdmz> list = emptyList13;
        List<String> list2 = emptyList12;
        List<zzdmz> list3 = emptyList11;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case -1980587809:
                    if (nextName.equals("debug_signals")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -1965512151:
                    if (nextName.equals("omid_settings")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1812055556:
                    if (nextName.equals("play_prewarm_options")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1662989631:
                    if (nextName.equals("is_interscroller")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1620470467:
                    if (nextName.equals("backend_query_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1440104884:
                    if (nextName.equals("is_custom_close_blocked")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1428969291:
                    if (nextName.equals("enable_omid")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1403779768:
                    if (nextName.equals("showable_impression_type")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1375413093:
                    if (nextName.equals("ad_cover")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1360811658:
                    if (nextName.equals("ad_sizes")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1306015996:
                    if (nextName.equals("adapters")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1303332046:
                    if (nextName.equals("test_mode_enabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1289032093:
                    if (nextName.equals(AppLinkData.ARGUMENTS_EXTRAS_KEY)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1240082064:
                    if (nextName.equals("ad_event_value")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1234181075:
                    if (nextName.equals("allow_pub_rendered_attribution")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1168140544:
                    if (nextName.equals("presentation_error_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1152230954:
                    if (nextName.equals(AppEventsConstants.EVENT_PARAM_AD_TYPE)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1146534047:
                    if (nextName.equals("is_scroll_aware")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1115838944:
                    if (nextName.equals("fill_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1081936678:
                    if (nextName.equals("allocation_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1078050970:
                    if (nextName.equals("video_complete_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1051269058:
                    if (nextName.equals("active_view")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -982608540:
                    if (nextName.equals("valid_from_timestamp")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -776859333:
                    if (nextName.equals("click_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -544216775:
                    if (nextName.equals("safe_browsing")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -437057161:
                    if (nextName.equals("imp_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -404433734:
                    if (nextName.equals("rtb_native_required_assets")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -404326515:
                    if (nextName.equals("render_timeout_ms")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -397704715:
                    if (nextName.equals("ad_close_time_ms")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -388807511:
                    if (nextName.equals(ShareConstants.STORY_DEEP_LINK_URL)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -369773488:
                    if (nextName.equals("is_close_button_enabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -213424028:
                    if (nextName.equals("watermark")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -154616268:
                    if (nextName.equals("is_offline_ad")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -29338502:
                    if (nextName.equals("allow_custom_click_gesture")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3107:
                    if (nextName.equals("ad")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3355:
                    if (nextName.equals("id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3076010:
                    if (nextName.equals("data")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 63195984:
                    if (nextName.equals("render_test_label")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 107433883:
                    if (nextName.equals("qdata")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 230323073:
                    if (nextName.equals("ad_load_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 418392395:
                    if (nextName.equals("is_closable_area_disabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 549176928:
                    if (nextName.equals("presentation_error_timeout_ms")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 597473788:
                    if (nextName.equals("debug_dialog_string")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 673261304:
                    if (nextName.equals("reward_granted_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 754887508:
                    if (nextName.equals("container_sizes")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 791122864:
                    if (nextName.equals("impression_type")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1010584092:
                    if (nextName.equals(FirebaseAnalytics.Param.TRANSACTION_ID)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1100650276:
                    if (nextName.equals("rewards")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1321720943:
                    if (nextName.equals("allow_pub_owned_ad_view")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1637553475:
                    if (nextName.equals("bid_response")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1638957285:
                    if (nextName.equals("video_start_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1686319423:
                    if (nextName.equals("ad_network_class_name")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1688341040:
                    if (nextName.equals("video_reward_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1799285870:
                    if (nextName.equals("use_third_party_container_height")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1839650832:
                    if (nextName.equals("renderers")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1875425491:
                    if (nextName.equals("is_analytics_logging_enabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 2068142375:
                    if (nextName.equals("rule_line_external_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 2072888499:
                    if (nextName.equals("manual_tracking_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    jSONObject2 = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    jSONObject4 = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    JSONObject zzc = zzbh.zzc(jsonReader);
                    zzarxVar = zzc == null ? null : new zzarx(zzc.optBoolean("enable_prewarming", false), zzc.optString("prefetch_url", ""));
                    i = i2;
                    break;
                case true:
                    z14 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str7 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z7 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    if (!"landscape".equalsIgnoreCase(nextString)) {
                        if (!"portrait".equalsIgnoreCase(nextString)) {
                            i5 = -1;
                            i = i2;
                            zzarxVar = zzarxVar2;
                            break;
                        } else {
                            i5 = 7;
                            i = i2;
                            zzarxVar = zzarxVar2;
                            break;
                        }
                    } else {
                        i5 = 6;
                        i = i2;
                        zzarxVar = zzarxVar2;
                        break;
                    }
                case true:
                    z9 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    i7 = jsonReader.nextInt();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    jSONObject5 = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    list = zzdmz.zze(jsonReader);
                    continue;
                case true:
                    list2 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z6 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    jSONObject3 = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    zzvuVar = zzvu.zza(zzbh.zzc(jsonReader));
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z2 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList9 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    String nextString2 = jsonReader.nextString();
                    if (!POBConstants.KEY_BANNER.equals(nextString2)) {
                        if (!POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE.equals(nextString2)) {
                            if (!"native_express".equals(nextString2)) {
                                if (!AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(nextString2)) {
                                    if (!"rewarded".equals(nextString2)) {
                                        if (!"app_open_ad".equals(nextString2)) {
                                            i = 0;
                                            zzarxVar = zzarxVar2;
                                            break;
                                        } else {
                                            i = 6;
                                            zzarxVar = zzarxVar2;
                                            break;
                                        }
                                    } else {
                                        i = 5;
                                        zzarxVar = zzarxVar2;
                                        break;
                                    }
                                } else {
                                    i = 4;
                                    zzarxVar = zzarxVar2;
                                    break;
                                }
                            } else {
                                i = 3;
                                zzarxVar = zzarxVar2;
                                break;
                            }
                        } else {
                            i = 2;
                            zzarxVar = zzarxVar2;
                            break;
                        }
                    } else {
                        i = 1;
                        zzarxVar = zzarxVar2;
                        break;
                    }
                case true:
                    z11 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList8 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str12 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList7 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str3 = zzbh.zzc(jsonReader).toString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str13 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList2 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    zzawuVar = zzawu.zzg(zzbh.zzc(jsonReader));
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList3 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    jSONObject6 = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    i6 = jsonReader.nextInt();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    i8 = jsonReader.nextInt();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str10 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z13 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str6 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z15 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z4 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    zzdndVar = new zzdnd(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str11 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    jSONObject = zzbh.zzc(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z5 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList4 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z8 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    i4 = jsonReader.nextInt();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    list3 = zzdmz.zze(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    i3 = jsonReader.nextInt();
                    if (i3 != 0 && i3 != 1) {
                        i3 = 0;
                        i = i2;
                        zzarxVar = zzarxVar2;
                        break;
                    } else {
                        i = i2;
                        zzarxVar = zzarxVar2;
                        break;
                    }
                    break;
                case true:
                    str = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    zzavjVar = zzavj.zza(zzbh.zzd(jsonReader));
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z3 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str5 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList5 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str9 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList6 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    z12 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList = zzbh.zza(jsonReader);
                    zzarxVar = zzarxVar2;
                    i = i2;
                    break;
                case true:
                    z10 = jsonReader.nextBoolean();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    str8 = jsonReader.nextString();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                case true:
                    emptyList10 = zzbh.zza(jsonReader);
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
                default:
                    jsonReader.skipValue();
                    i = i2;
                    zzarxVar = zzarxVar2;
                    break;
            }
            i2 = i;
            zzarxVar2 = zzarxVar;
        }
        jsonReader.endObject();
        this.zzhix = emptyList;
        this.zzhiy = i2;
        this.zzdmp = emptyList2;
        this.zzdmq = emptyList3;
        this.zzhja = emptyList4;
        this.zzhiz = i3;
        this.zzdwn = emptyList5;
        this.zzdwo = emptyList6;
        this.zzhjb = emptyList7;
        this.zzdmf = str;
        this.zzdmg = str13;
        this.zzdwm = zzavjVar;
        this.zzhjc = emptyList8;
        this.zzhjd = emptyList9;
        this.zzdwa = emptyList10;
        this.zzhje = i4;
        this.zzhjf = list3;
        this.zzhjg = zzdndVar;
        this.zzhjh = list2;
        this.zzhji = list;
        this.zzdlu = str12;
        this.zzhjj = jSONObject;
        this.f119id = str11;
        this.zzdmv = str2;
        this.zzdwg = str3;
        this.zzhjk = zzawuVar;
        this.zzdwd = str4;
        this.zzhjl = jSONObject2;
        this.zzhjm = jSONObject3;
        this.zzdnc = z2;
        this.zzdnd = z3;
        this.zzdne = z4;
        this.zzdxt = z5;
        this.zzhjo = z6;
        this.zzftq = z7;
        this.zzbpm = z8;
        this.zzhjp = i5;
        this.zzhjq = i6;
        this.zzdww = z9;
        this.zzeuo = str5;
        this.zzhjr = new OmidSettings(jSONObject4);
        this.zzdwz = z10;
        this.zzdxa = z11;
        this.zzhjs = i7;
        this.zzdoq = str6;
        this.zzfto = i8;
        this.zzfzc = str7;
        this.zzhjt = z12;
        this.zzhju = zzarxVar2;
        this.zzftp = z13;
        this.zzhjv = zzvuVar;
        this.zzhjw = str8;
        this.zzhjx = z14;
        this.zzhjy = jSONObject5;
        this.zzhjn = str9;
        this.zzhjz = z15;
        this.zzhka = jSONObject6;
        this.zzcht = str10;
    }
}
