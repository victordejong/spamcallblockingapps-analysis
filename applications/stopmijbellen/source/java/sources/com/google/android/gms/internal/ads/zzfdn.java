package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzby;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdn.class */
public final class zzfdn {
    public final String zzA;
    public final zzcgc zzB;
    public final String zzC;
    public final JSONObject zzD;
    public final JSONObject zzE;
    public final String zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final int zzN;
    public final int zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final String zzR;
    public final zzfei zzS;
    public final boolean zzT;
    public final boolean zzU;
    public final int zzV;
    public final String zzW;
    public final int zzX;
    public final String zzY;
    public final boolean zzZ;
    public final List<String> zza;
    public final zzcby zzaa;
    public final boolean zzab;
    public final zzbfk zzac;
    public final String zzad;
    public final boolean zzae;
    public final JSONObject zzaf;
    public final boolean zzag;
    public final JSONObject zzah;
    public final boolean zzai;
    public final String zzaj;
    public final boolean zzak;
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
    public final zzces zzm;
    public final List<String> zzn;
    public final List<String> zzo;
    public final List<String> zzp;
    public final List<String> zzq;
    public final int zzr;
    public final List<zzfdo> zzs;
    public final zzfds zzt;
    public final List<String> zzu;
    public final List<zzfdo> zzv;
    public final JSONObject zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public zzfdn(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
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
        List<String> emptyList11 = Collections.emptyList();
        List<zzfdo> emptyList12 = Collections.emptyList();
        List<String> emptyList13 = Collections.emptyList();
        List<zzfdo> emptyList14 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        List zzo = zzfss.zzo();
        jsonReader.beginObject();
        zzfds zzfdsVar = null;
        zzcgc zzcgcVar = null;
        zzcby zzcbyVar = null;
        zzbfk zzbfkVar = null;
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
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        int i2 = -1;
        int i3 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        int i4 = 0;
        int i5 = -1;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        zzces zzcesVar = null;
        String str12 = str11;
        String str13 = str12;
        int i6 = 0;
        int i7 = 0;
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
                case -1550155393:
                    if (nextName.equals("nofill_urls")) {
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
                    if (nextName.equals(FacebookAdapter.KEY_ID)) {
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
                    if (nextName.equals(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER)) {
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
                    emptyList = zzby.zzd(jsonReader);
                    break;
                case true:
                    i6 = zzb(jsonReader.nextString());
                    break;
                case true:
                    emptyList2 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList3 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList4 = zzby.zzd(jsonReader);
                    break;
                case true:
                    i7 = zzc(jsonReader.nextInt());
                    break;
                case true:
                    emptyList5 = zzby.zzd(jsonReader);
                    break;
                case true:
                    zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList6 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList7 = zzby.zzd(jsonReader);
                    break;
                case true:
                    str13 = jsonReader.nextString();
                    break;
                case true:
                    str12 = jsonReader.nextString();
                    break;
                case true:
                    zzcesVar = zzces.zza(zzby.zze(jsonReader));
                    break;
                case true:
                    emptyList8 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList9 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList10 = zzby.zzd(jsonReader);
                    break;
                case true:
                    emptyList11 = zzby.zzd(jsonReader);
                    break;
                case true:
                    i = jsonReader.nextInt();
                    break;
                case true:
                    emptyList12 = zzfdo.zza(jsonReader);
                    break;
                case true:
                    zzfdsVar = new zzfds(jsonReader);
                    break;
                case true:
                    emptyList14 = zzfdo.zza(jsonReader);
                    break;
                case true:
                    emptyList13 = zzby.zzd(jsonReader);
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject = zzby.zzh(jsonReader);
                    break;
                case true:
                    str3 = jsonReader.nextString();
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    break;
                case true:
                    str5 = zzby.zzh(jsonReader).toString();
                    break;
                case true:
                    zzcgcVar = zzcgc.zza(zzby.zzh(jsonReader));
                    break;
                case true:
                    str6 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject2 = zzby.zzh(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    jSONObject3 = zzby.zzh(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    z2 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    z3 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    z4 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    z5 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    z6 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    z7 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    z8 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    i2 = zzd(jsonReader.nextString());
                    break;
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    i3 = jsonReader.nextInt();
                    break;
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    z9 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    str7 = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    jSONObject4 = zzby.zzh(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    z10 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    z11 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    i4 = jsonReader.nextInt();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    i5 = jsonReader.nextInt();
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    str8 = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    str9 = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    z12 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzcbyVar = zzcby.zza(zzby.zzh(jsonReader));
                    break;
                case true:
                    z13 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    zzbfkVar = zzbfk.zza(zzby.zzh(jsonReader));
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    str10 = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    z14 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    jSONObject5 = zzby.zzh(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    str11 = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    z15 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    jSONObject6 = zzby.zzh(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    z16 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    str = jsonReader.nextString();
                    break;
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    z17 = jsonReader.nextBoolean();
                    break;
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    zzo = zzby.zzd(jsonReader);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    z18 = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        this.zza = emptyList;
        this.zzb = i6;
        this.zzc = emptyList2;
        this.zzd = emptyList3;
        this.zzg = emptyList4;
        this.zzf = i7;
        this.zzh = emptyList5;
        this.zzi = emptyList6;
        this.zzj = emptyList7;
        this.zzk = str13;
        this.zzl = str12;
        this.zzm = zzcesVar;
        this.zzn = emptyList8;
        this.zzo = emptyList9;
        this.zzp = emptyList10;
        this.zzq = emptyList11;
        this.zzr = i;
        this.zzs = emptyList12;
        this.zzt = zzfdsVar;
        this.zzu = emptyList13;
        this.zzv = emptyList14;
        this.zzx = str2;
        this.zzw = jSONObject;
        this.zzy = str3;
        this.zzz = str4;
        this.zzA = str5;
        this.zzB = zzcgcVar;
        this.zzC = str6;
        this.zzD = jSONObject2;
        this.zzE = jSONObject3;
        this.zzG = z2;
        this.zzH = z3;
        this.zzI = z4;
        this.zzJ = z5;
        this.zzK = z6;
        this.zzL = z7;
        this.zzM = z8;
        this.zzN = i2;
        this.zzO = i3;
        this.zzQ = z9;
        this.zzR = str7;
        this.zzS = new zzfei(jSONObject4);
        this.zzT = z10;
        this.zzU = z11;
        this.zzV = i4;
        this.zzW = str8;
        this.zzX = i5;
        this.zzY = str9;
        this.zzZ = z12;
        this.zzaa = zzcbyVar;
        this.zzab = z13;
        this.zzac = zzbfkVar;
        this.zzad = str10;
        this.zzae = z14;
        this.zzaf = jSONObject5;
        this.zzF = str11;
        this.zzag = z15;
        this.zzah = jSONObject6;
        this.zzai = z16;
        this.zzaj = str;
        this.zzak = z17;
        this.zze = zzo;
        this.zzP = z18;
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
