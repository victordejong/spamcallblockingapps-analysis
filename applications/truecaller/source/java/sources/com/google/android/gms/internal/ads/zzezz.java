package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbx;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezz.class */
public final class zzezz {
    public final zzcdv zzA;
    public final String zzB;
    public final JSONObject zzC;
    public final JSONObject zzD;
    public final String zzE;
    public final boolean zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final int zzM;
    public final int zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final String zzQ;
    public final zzfau zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final int zzU;
    public final String zzV;
    public final int zzW;
    public final String zzX;
    public final boolean zzY;
    public final zzbzw zzZ;
    public final List<String> zza;
    public final boolean zzaa;
    public final zzbdn zzab;
    public final String zzac;
    public final boolean zzad;
    public final JSONObject zzae;
    public final boolean zzaf;
    public final JSONObject zzag;
    public final boolean zzah;
    public final String zzai;
    public final boolean zzaj;
    public final int zzb;
    public final List<String> zzc;
    public final List<String> zzd;
    public final List<String> zze;
    public final int zzf;
    public final List<String> zzg;
    public final List<String> zzh;
    public final List<String> zzi;
    public final List<String> zzj;
    public final String zzk;
    public final String zzl;
    public final zzccl zzm;
    public final List<String> zzn;
    public final List<String> zzo;
    public final List<String> zzp;
    public final int zzq;
    public final List<zzfaa> zzr;
    public final zzfae zzs;
    public final List<String> zzt;
    public final List<zzfaa> zzu;
    public final JSONObject zzv;
    public final String zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public zzezz(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        boolean z;
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
        List<zzfaa> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<zzfaa> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        List zzi = zzfoj.zzi();
        jsonReader.beginObject();
        boolean z2 = true;
        int i = -1;
        int i2 = -1;
        zzfae zzfaeVar = null;
        zzcdv zzcdvVar = null;
        zzbzw zzbzwVar = null;
        zzbdn zzbdnVar = null;
        String str = null;
        String str2 = "";
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        int i4 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        int i5 = 0;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        zzccl zzcclVar = null;
        String str12 = str11;
        int i6 = 0;
        int i7 = 0;
        String str13 = str12;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1980587809:
                    if (nextName.equals("debug_signals")) {
                        z = true;
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
                case -1406227629:
                    if (nextName.equals("buffer_click_url_as_ready_to_ping")) {
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
                    if (nextName.equals("extras")) {
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
                    if (nextName.equals("ad_type")) {
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
                    if (nextName.equals("content_url")) {
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
                case -213449460:
                    if (nextName.equals("force_disable_hardware_acceleration")) {
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
                case -180214626:
                    if (nextName.equals("native_required_asset_viewability")) {
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
                    if (nextName.equals(RemoteMessageConst.DATA)) {
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
                    if (nextName.equals(CommonCode.MapKey.TRANSACTION_ID)) {
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
                case 1186014765:
                    if (nextName.equals("cache_hit_urls")) {
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
                        z = false;
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
                    emptyList = zzbx.zzb(jsonReader);
                    break;
                case true:
                    i7 = zzb(jsonReader.nextString());
                    break;
                case true:
                    emptyList2 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList3 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList4 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    i6 = zzc(jsonReader.nextInt());
                    break;
                case true:
                    emptyList5 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList6 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList7 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    str12 = jsonReader.nextString();
                    break;
                case true:
                    str13 = jsonReader.nextString();
                    break;
                case true:
                    zzcclVar = zzccl.zza(zzbx.zzd(jsonReader));
                    break;
                case true:
                    emptyList8 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList9 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    emptyList10 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    i3 = jsonReader.nextInt();
                    break;
                case true:
                    emptyList11 = zzfaa.zza(jsonReader);
                    break;
                case true:
                    zzfaeVar = new zzfae(jsonReader);
                    break;
                case true:
                    emptyList13 = zzfaa.zza(jsonReader);
                    break;
                case true:
                    emptyList12 = zzbx.zzb(jsonReader);
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject = zzbx.zzc(jsonReader);
                    break;
                case true:
                    str3 = jsonReader.nextString();
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    break;
                case true:
                    str5 = zzbx.zzc(jsonReader).toString();
                    break;
                case true:
                    zzcdvVar = zzcdv.zza(zzbx.zzc(jsonReader));
                    break;
                case true:
                    str6 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject2 = zzbx.zzc(jsonReader);
                    break;
                case true:
                    jSONObject3 = zzbx.zzc(jsonReader);
                    break;
                case true:
                    z3 = jsonReader.nextBoolean();
                    break;
                case true:
                    z4 = jsonReader.nextBoolean();
                    break;
                case true:
                    z5 = jsonReader.nextBoolean();
                    break;
                case true:
                    z6 = jsonReader.nextBoolean();
                    break;
                case true:
                    z7 = jsonReader.nextBoolean();
                    break;
                case true:
                    z8 = jsonReader.nextBoolean();
                    break;
                case true:
                    z9 = jsonReader.nextBoolean();
                    break;
                case true:
                    i = zzd(jsonReader.nextString());
                    break;
                case true:
                    i4 = jsonReader.nextInt();
                    break;
                case true:
                    z10 = jsonReader.nextBoolean();
                    break;
                case true:
                    str7 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject4 = zzbx.zzc(jsonReader);
                    break;
                case true:
                    z11 = jsonReader.nextBoolean();
                    break;
                case true:
                    z12 = jsonReader.nextBoolean();
                    break;
                case true:
                    i5 = jsonReader.nextInt();
                    break;
                case true:
                    i2 = jsonReader.nextInt();
                    break;
                case true:
                    str8 = jsonReader.nextString();
                    break;
                case true:
                    str9 = jsonReader.nextString();
                    break;
                case true:
                    z13 = jsonReader.nextBoolean();
                    break;
                case true:
                    zzbzwVar = zzbzw.zza(zzbx.zzc(jsonReader));
                    break;
                case true:
                    z2 = jsonReader.nextBoolean();
                    break;
                case true:
                    zzbdnVar = zzbdn.zza(zzbx.zzc(jsonReader));
                    break;
                case true:
                    str10 = jsonReader.nextString();
                    break;
                case true:
                    z14 = jsonReader.nextBoolean();
                    break;
                case true:
                    jSONObject5 = zzbx.zzc(jsonReader);
                    break;
                case true:
                    str11 = jsonReader.nextString();
                    break;
                case true:
                    z15 = jsonReader.nextBoolean();
                    break;
                case true:
                    jSONObject6 = zzbx.zzc(jsonReader);
                    break;
                case true:
                    z16 = jsonReader.nextBoolean();
                    break;
                case true:
                    str = jsonReader.nextString();
                    break;
                case true:
                    z17 = jsonReader.nextBoolean();
                    break;
                case true:
                    zzi = zzbx.zzb(jsonReader);
                    break;
                case true:
                    z18 = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        this.zza = emptyList;
        this.zzb = i7;
        this.zzc = emptyList2;
        this.zzd = emptyList3;
        this.zzg = emptyList4;
        this.zzf = i6;
        this.zzh = emptyList5;
        this.zzi = emptyList6;
        this.zzj = emptyList7;
        this.zzk = str12;
        this.zzl = str13;
        this.zzm = zzcclVar;
        this.zzn = emptyList8;
        this.zzo = emptyList9;
        this.zzp = emptyList10;
        this.zzq = i3;
        this.zzr = emptyList11;
        this.zzs = zzfaeVar;
        this.zzt = emptyList12;
        this.zzu = emptyList13;
        this.zzw = str2;
        this.zzv = jSONObject;
        this.zzx = str3;
        this.zzy = str4;
        this.zzz = str5;
        this.zzA = zzcdvVar;
        this.zzB = str6;
        this.zzC = jSONObject2;
        this.zzD = jSONObject3;
        this.zzF = z3;
        this.zzG = z4;
        this.zzH = z5;
        this.zzI = z6;
        this.zzJ = z7;
        this.zzK = z8;
        this.zzL = z9;
        this.zzM = i;
        this.zzN = i4;
        this.zzP = z10;
        this.zzQ = str7;
        this.zzR = new zzfau(jSONObject4);
        this.zzS = z11;
        this.zzT = z12;
        this.zzU = i5;
        this.zzV = str8;
        this.zzW = i2;
        this.zzX = str9;
        this.zzY = z13;
        this.zzZ = zzbzwVar;
        this.zzaa = z2;
        this.zzab = zzbdnVar;
        this.zzac = str10;
        this.zzad = z14;
        this.zzae = jSONObject5;
        this.zzE = str11;
        this.zzaf = z15;
        this.zzag = jSONObject6;
        this.zzah = z16;
        this.zzai = str;
        this.zzaj = z17;
        this.zze = zzi;
        this.zzO = z18;
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    private static int zzb(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if ("interstitial".equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if ("native".equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str) || "app_open_ad_v2".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    private static int zzc(int i) {
        int i2 = i;
        if (i != 0) {
            i2 = i == 1 ? i : 0;
        }
        return i2;
    }

    private static final int zzd(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        return "portrait".equalsIgnoreCase(str) ? 7 : -1;
    }
}
