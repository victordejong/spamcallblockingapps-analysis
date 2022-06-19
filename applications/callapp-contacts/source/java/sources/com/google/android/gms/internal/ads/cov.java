package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidSettings;
import com.mopub.common.AdType;
import com.verizon.ads.EnvironmentInfo;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cov.class */
public final class cov {

    /* renamed from: A */
    public final String f46221A;

    /* renamed from: B */
    public final JSONObject f46222B;

    /* renamed from: C */
    public final JSONObject f46223C;

    /* renamed from: D */
    public final String f46224D;

    /* renamed from: E */
    public final boolean f46225E;

    /* renamed from: F */
    public final boolean f46226F;

    /* renamed from: G */
    public final boolean f46227G;

    /* renamed from: H */
    public final boolean f46228H;

    /* renamed from: I */
    public final boolean f46229I;

    /* renamed from: J */
    public final boolean f46230J;

    /* renamed from: K */
    public final boolean f46231K;

    /* renamed from: L */
    public final int f46232L;

    /* renamed from: M */
    public final int f46233M;

    /* renamed from: N */
    public final boolean f46234N;

    /* renamed from: O */
    public final String f46235O;

    /* renamed from: P */
    public final OmidSettings f46236P;

    /* renamed from: Q */
    public final boolean f46237Q;

    /* renamed from: R */
    public final boolean f46238R;

    /* renamed from: S */
    public final int f46239S;

    /* renamed from: T */
    public final String f46240T;

    /* renamed from: U */
    public final int f46241U;

    /* renamed from: V */
    public final String f46242V;

    /* renamed from: W */
    public final boolean f46243W;

    /* renamed from: X */
    public final C12874re f46244X;

    /* renamed from: Y */
    public final boolean f46245Y;

    /* renamed from: Z */
    public final zzvv f46246Z;

    /* renamed from: a */
    public final List<String> f46247a;

    /* renamed from: aa */
    public final String f46248aa;

    /* renamed from: ab */
    public final boolean f46249ab;

    /* renamed from: ac */
    public final JSONObject f46250ac;

    /* renamed from: ad */
    public final boolean f46251ad;

    /* renamed from: ae */
    public final JSONObject f46252ae;

    /* renamed from: af */
    public final boolean f46253af;

    /* renamed from: ag */
    public final String f46254ag;

    /* renamed from: b */
    public final int f46255b;

    /* renamed from: c */
    public final List<String> f46256c;

    /* renamed from: d */
    public final List<String> f46257d;

    /* renamed from: e */
    public final int f46258e;

    /* renamed from: f */
    public final List<String> f46259f;

    /* renamed from: g */
    public final List<String> f46260g;

    /* renamed from: h */
    public final List<String> f46261h;

    /* renamed from: i */
    public final List<String> f46262i;

    /* renamed from: j */
    public final String f46263j;

    /* renamed from: k */
    public final String f46264k;

    /* renamed from: l */
    public final zzavy f46265l;

    /* renamed from: m */
    public final List<String> f46266m;

    /* renamed from: n */
    public final List<String> f46267n;

    /* renamed from: o */
    public final List<String> f46268o;

    /* renamed from: p */
    public final int f46269p;

    /* renamed from: q */
    public final List<coy> f46270q;

    /* renamed from: r */
    public final cpc f46271r;

    /* renamed from: s */
    public final List<String> f46272s;

    /* renamed from: t */
    public final List<coy> f46273t;

    /* renamed from: u */
    public final JSONObject f46274u;

    /* renamed from: v */
    public final String f46275v;

    /* renamed from: w */
    public final String f46276w;

    /* renamed from: x */
    public final String f46277x;

    /* renamed from: y */
    public final String f46278y;

    /* renamed from: z */
    public final zzaxn f46279z;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public cov(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        boolean z;
        int i;
        C12874re c12874re;
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
        List<coy> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<coy> emptyList13 = Collections.emptyList();
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
        zzavy zzavyVar = null;
        cpc cpcVar = null;
        zzaxn zzaxnVar = null;
        C12874re c12874re2 = null;
        zzvv zzvvVar = null;
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
        boolean z16 = false;
        String str11 = str;
        String str12 = str;
        String str13 = str;
        List<coy> list = emptyList13;
        List<String> list2 = emptyList12;
        List<coy> list3 = emptyList11;
        List<String> list4 = emptyList9;
        List<String> list5 = emptyList7;
        List<String> list6 = emptyList5;
        List<String> list7 = emptyList3;
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
                    if (nextName.equals("transaction_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1100650276:
                    if (nextName.equals(Constants.REWARDS)) {
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
                    c12874re = c12874re2;
                    break;
                case true:
                    jSONObject4 = zzbh.zzc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    JSONObject zzc = zzbh.zzc(jsonReader);
                    c12874re = zzc == null ? null : new C12874re(zzc.optBoolean("enable_prewarming", false), zzc.optString("prefetch_url", ""));
                    i = i2;
                    break;
                case true:
                    z14 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str7 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z7 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    if (!EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equalsIgnoreCase(nextString)) {
                        if (!EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equalsIgnoreCase(nextString)) {
                            i5 = -1;
                            i = i2;
                            c12874re = c12874re2;
                            break;
                        } else {
                            i5 = 7;
                            i = i2;
                            c12874re = c12874re2;
                            break;
                        }
                    } else {
                        i5 = 6;
                        i = i2;
                        c12874re = c12874re2;
                        break;
                    }
                case true:
                    z9 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    i7 = jsonReader.nextInt();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    jSONObject5 = zzbh.zzc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list = coy.m17367a(jsonReader);
                    continue;
                case true:
                    list2 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z6 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    jSONObject3 = zzbh.zzc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    zzvvVar = zzvv.zza(zzbh.zzc(jsonReader));
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z2 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list4 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    String nextString2 = jsonReader.nextString();
                    if (!"banner".equals(nextString2)) {
                        if (!AdType.INTERSTITIAL.equals(nextString2)) {
                            if (!"native_express".equals(nextString2)) {
                                if (!"native".equals(nextString2)) {
                                    if (!Reporting.AdFormat.REWARDED.equals(nextString2)) {
                                        if (!"app_open_ad".equals(nextString2)) {
                                            i = 0;
                                            c12874re = c12874re2;
                                            break;
                                        } else {
                                            i = 6;
                                            c12874re = c12874re2;
                                            break;
                                        }
                                    } else {
                                        i = 5;
                                        c12874re = c12874re2;
                                        break;
                                    }
                                } else {
                                    i = 4;
                                    c12874re = c12874re2;
                                    break;
                                }
                            } else {
                                i = 3;
                                c12874re = c12874re2;
                                break;
                            }
                        } else {
                            i = 2;
                            c12874re = c12874re2;
                            break;
                        }
                    } else {
                        i = 1;
                        c12874re = c12874re2;
                        break;
                    }
                case true:
                    z11 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList8 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str12 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list5 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str3 = zzbh.zzc(jsonReader).toString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str13 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList2 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    zzaxnVar = zzaxn.zzg(zzbh.zzc(jsonReader));
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list7 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    jSONObject6 = zzbh.zzc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    i6 = jsonReader.nextInt();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    i8 = jsonReader.nextInt();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str10 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z13 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str6 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z16 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z15 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z4 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    cpcVar = new cpc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str11 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    jSONObject = zzbh.zzc(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z5 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList4 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z8 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    i4 = jsonReader.nextInt();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list3 = coy.m17367a(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    i3 = jsonReader.nextInt();
                    if (i3 != 0 && i3 != 1) {
                        i3 = 0;
                        i = i2;
                        c12874re = c12874re2;
                        break;
                    } else {
                        i = i2;
                        c12874re = c12874re2;
                        break;
                    }
                case true:
                    str = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    zzavyVar = zzavy.zza(zzbh.zzd(jsonReader));
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z3 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str5 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    list6 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str9 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList6 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    z12 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList = zzbh.zza(jsonReader);
                    c12874re = c12874re2;
                    i = i2;
                    break;
                case true:
                    z10 = jsonReader.nextBoolean();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    str8 = jsonReader.nextString();
                    i = i2;
                    c12874re = c12874re2;
                    break;
                case true:
                    emptyList10 = zzbh.zza(jsonReader);
                    i = i2;
                    c12874re = c12874re2;
                    break;
                default:
                    jsonReader.skipValue();
                    i = i2;
                    c12874re = c12874re2;
                    break;
            }
            i2 = i;
            c12874re2 = c12874re;
        }
        jsonReader.endObject();
        this.f46247a = emptyList;
        this.f46255b = i2;
        this.f46256c = emptyList2;
        this.f46257d = list7;
        this.f46259f = emptyList4;
        this.f46258e = i3;
        this.f46260g = list6;
        this.f46261h = emptyList6;
        this.f46262i = list5;
        this.f46263j = str;
        this.f46264k = str13;
        this.f46265l = zzavyVar;
        this.f46266m = emptyList8;
        this.f46267n = list4;
        this.f46268o = emptyList10;
        this.f46269p = i4;
        this.f46270q = list3;
        this.f46271r = cpcVar;
        this.f46272s = list2;
        this.f46273t = list;
        this.f46275v = str12;
        this.f46274u = jSONObject;
        this.f46276w = str11;
        this.f46277x = str2;
        this.f46278y = str3;
        this.f46279z = zzaxnVar;
        this.f46221A = str4;
        this.f46222B = jSONObject2;
        this.f46223C = jSONObject3;
        this.f46225E = z2;
        this.f46226F = z3;
        this.f46227G = z4;
        this.f46228H = z5;
        this.f46229I = z6;
        this.f46230J = z7;
        this.f46231K = z8;
        this.f46232L = i5;
        this.f46233M = i6;
        this.f46234N = z9;
        this.f46235O = str5;
        this.f46236P = new OmidSettings(jSONObject4);
        this.f46237Q = z10;
        this.f46238R = z11;
        this.f46239S = i7;
        this.f46240T = str6;
        this.f46241U = i8;
        this.f46242V = str7;
        this.f46243W = z12;
        this.f46244X = c12874re2;
        this.f46245Y = z13;
        this.f46246Z = zzvvVar;
        this.f46248aa = str8;
        this.f46249ab = z14;
        this.f46250ac = jSONObject5;
        this.f46224D = str9;
        this.f46251ad = z15;
        this.f46252ae = jSONObject6;
        this.f46253af = z16;
        this.f46254ag = str10;
    }
}
