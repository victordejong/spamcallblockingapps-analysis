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
    public final String A;
    public final JSONObject B;
    public final JSONObject C;
    public final String D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final boolean H;
    public final boolean I;
    public final boolean J;
    public final boolean K;
    public final int L;
    public final int M;
    public final boolean N;
    public final String O;
    public final OmidSettings P;
    public final boolean Q;
    public final boolean R;
    public final int S;
    public final String T;
    public final int U;
    public final String V;
    public final boolean W;
    public final re X;
    public final boolean Y;
    public final zzvv Z;

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f26183a;
    public final String aa;
    public final boolean ab;
    public final JSONObject ac;
    public final boolean ad;
    public final JSONObject ae;
    public final boolean af;
    public final String ag;

    /* renamed from: b  reason: collision with root package name */
    public final int f26184b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f26185c;

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f26186d;
    public final int e;
    public final List<String> f;
    public final List<String> g;
    public final List<String> h;
    public final List<String> i;
    public final String j;
    public final String k;
    public final zzavy l;
    public final List<String> m;
    public final List<String> n;
    public final List<String> o;
    public final int p;
    public final List<coy> q;
    public final cpc r;
    public final List<String> s;
    public final List<coy> t;
    public final JSONObject u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final zzaxn z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public cov(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        char c2;
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
        re reVar = null;
        zzvv zzvvVar = null;
        String str10 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = -1;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        int i7 = -1;
        boolean z11 = false;
        boolean z12 = true;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        String str11 = str;
        String str12 = str;
        String str13 = str;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case -1980587809:
                    if (nextName.equals("debug_signals")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1965512151:
                    if (nextName.equals("omid_settings")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1812055556:
                    if (nextName.equals("play_prewarm_options")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1662989631:
                    if (nextName.equals("is_interscroller")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1620470467:
                    if (nextName.equals("backend_query_id")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1440104884:
                    if (nextName.equals("is_custom_close_blocked")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1428969291:
                    if (nextName.equals("enable_omid")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1403779768:
                    if (nextName.equals("showable_impression_type")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1375413093:
                    if (nextName.equals("ad_cover")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1360811658:
                    if (nextName.equals("ad_sizes")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1306015996:
                    if (nextName.equals("adapters")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1303332046:
                    if (nextName.equals("test_mode_enabled")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1289032093:
                    if (nextName.equals("extras")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1240082064:
                    if (nextName.equals("ad_event_value")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1234181075:
                    if (nextName.equals("allow_pub_rendered_attribution")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1168140544:
                    if (nextName.equals("presentation_error_urls")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1152230954:
                    if (nextName.equals("ad_type")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1146534047:
                    if (nextName.equals("is_scroll_aware")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1115838944:
                    if (nextName.equals("fill_urls")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1081936678:
                    if (nextName.equals("allocation_id")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1078050970:
                    if (nextName.equals("video_complete_urls")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1051269058:
                    if (nextName.equals("active_view")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -982608540:
                    if (nextName.equals("valid_from_timestamp")) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -776859333:
                    if (nextName.equals("click_urls")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -544216775:
                    if (nextName.equals("safe_browsing")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -437057161:
                    if (nextName.equals("imp_urls")) {
                        c2 = 26;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404433734:
                    if (nextName.equals("rtb_native_required_assets")) {
                        c2 = 27;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404326515:
                    if (nextName.equals("render_timeout_ms")) {
                        c2 = 28;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -397704715:
                    if (nextName.equals("ad_close_time_ms")) {
                        c2 = 29;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -388807511:
                    if (nextName.equals("content_url")) {
                        c2 = 30;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -369773488:
                    if (nextName.equals("is_close_button_enabled")) {
                        c2 = 31;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -213424028:
                    if (nextName.equals("watermark")) {
                        c2 = ' ';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -180214626:
                    if (nextName.equals("native_required_asset_viewability")) {
                        c2 = '!';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -154616268:
                    if (nextName.equals("is_offline_ad")) {
                        c2 = '\"';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -29338502:
                    if (nextName.equals("allow_custom_click_gesture")) {
                        c2 = '#';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3107:
                    if (nextName.equals("ad")) {
                        c2 = '$';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    if (nextName.equals("id")) {
                        c2 = '%';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3076010:
                    if (nextName.equals("data")) {
                        c2 = '&';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 63195984:
                    if (nextName.equals("render_test_label")) {
                        c2 = '\'';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 107433883:
                    if (nextName.equals("qdata")) {
                        c2 = '(';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 230323073:
                    if (nextName.equals("ad_load_urls")) {
                        c2 = ')';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 418392395:
                    if (nextName.equals("is_closable_area_disabled")) {
                        c2 = '*';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 549176928:
                    if (nextName.equals("presentation_error_timeout_ms")) {
                        c2 = '+';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 597473788:
                    if (nextName.equals("debug_dialog_string")) {
                        c2 = ',';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 673261304:
                    if (nextName.equals("reward_granted_urls")) {
                        c2 = '-';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 754887508:
                    if (nextName.equals("container_sizes")) {
                        c2 = '.';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 791122864:
                    if (nextName.equals("impression_type")) {
                        c2 = '/';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1010584092:
                    if (nextName.equals("transaction_id")) {
                        c2 = '0';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1100650276:
                    if (nextName.equals(Constants.REWARDS)) {
                        c2 = '1';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1321720943:
                    if (nextName.equals("allow_pub_owned_ad_view")) {
                        c2 = '2';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1637553475:
                    if (nextName.equals("bid_response")) {
                        c2 = '3';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1638957285:
                    if (nextName.equals("video_start_urls")) {
                        c2 = '4';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1686319423:
                    if (nextName.equals("ad_network_class_name")) {
                        c2 = '5';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1688341040:
                    if (nextName.equals("video_reward_urls")) {
                        c2 = '6';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1799285870:
                    if (nextName.equals("use_third_party_container_height")) {
                        c2 = '7';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1839650832:
                    if (nextName.equals("renderers")) {
                        c2 = '8';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1875425491:
                    if (nextName.equals("is_analytics_logging_enabled")) {
                        c2 = '9';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2068142375:
                    if (nextName.equals("rule_line_external_id")) {
                        c2 = ':';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2072888499:
                    if (nextName.equals("manual_tracking_urls")) {
                        c2 = ';';
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    jSONObject2 = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 1:
                    jSONObject4 = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 2:
                    JSONObject zzc = zzbh.zzc(jsonReader);
                    reVar = zzc == null ? null : new re(zzc.optBoolean("enable_prewarming", false), zzc.optString("prefetch_url", ""));
                    i = i;
                    break;
                case 3:
                    z13 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case 4:
                    str7 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case 5:
                    z6 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case 6:
                    String nextString = jsonReader.nextString();
                    if (!EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equalsIgnoreCase(nextString)) {
                        if (!EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equalsIgnoreCase(nextString)) {
                            i4 = -1;
                            i = i;
                            reVar = reVar;
                            break;
                        } else {
                            i4 = 7;
                            i = i;
                            reVar = reVar;
                            break;
                        }
                    } else {
                        i4 = 6;
                        i = i;
                        reVar = reVar;
                        break;
                    }
                case 7:
                    z8 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '\b':
                    i6 = jsonReader.nextInt();
                    i = i;
                    reVar = reVar;
                    break;
                case '\t':
                    jSONObject5 = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '\n':
                    emptyList13 = coy.a(jsonReader);
                    continue;
                case 11:
                    emptyList12 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '\f':
                    z5 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '\r':
                    jSONObject3 = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 14:
                    zzvvVar = zzvv.zza(zzbh.zzc(jsonReader));
                    i = i;
                    reVar = reVar;
                    break;
                case 15:
                    z = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case 16:
                    emptyList9 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 17:
                    String nextString2 = jsonReader.nextString();
                    if (!"banner".equals(nextString2)) {
                        if (!AdType.INTERSTITIAL.equals(nextString2)) {
                            if (!"native_express".equals(nextString2)) {
                                if (!"native".equals(nextString2)) {
                                    if (!Reporting.AdFormat.REWARDED.equals(nextString2)) {
                                        if (!"app_open_ad".equals(nextString2)) {
                                            i = 0;
                                            reVar = reVar;
                                            break;
                                        } else {
                                            i = 6;
                                            reVar = reVar;
                                            break;
                                        }
                                    } else {
                                        i = 5;
                                        reVar = reVar;
                                        break;
                                    }
                                } else {
                                    i = 4;
                                    reVar = reVar;
                                    break;
                                }
                            } else {
                                i = 3;
                                reVar = reVar;
                                break;
                            }
                        } else {
                            i = 2;
                            reVar = reVar;
                            break;
                        }
                    } else {
                        i = 1;
                        reVar = reVar;
                        break;
                    }
                case 18:
                    z10 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case 19:
                    emptyList8 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 20:
                    str12 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case 21:
                    emptyList7 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 22:
                    str3 = zzbh.zzc(jsonReader).toString();
                    i = i;
                    reVar = reVar;
                    break;
                case 23:
                    str13 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case 24:
                    emptyList2 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 25:
                    zzaxnVar = zzaxn.zzg(zzbh.zzc(jsonReader));
                    i = i;
                    reVar = reVar;
                    break;
                case 26:
                    emptyList3 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 27:
                    jSONObject6 = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case 28:
                    i5 = jsonReader.nextInt();
                    i = i;
                    reVar = reVar;
                    break;
                case 29:
                    i7 = jsonReader.nextInt();
                    i = i;
                    reVar = reVar;
                    break;
                case 30:
                    str10 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case 31:
                    z12 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case ' ':
                    str6 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '!':
                    z15 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '\"':
                    z14 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '#':
                    z3 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '$':
                    cpcVar = new cpc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '%':
                    str11 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '&':
                    jSONObject = zzbh.zzc(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '\'':
                    z4 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '(':
                    str2 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case ')':
                    emptyList4 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '*':
                    z7 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '+':
                    i3 = jsonReader.nextInt();
                    i = i;
                    reVar = reVar;
                    break;
                case ',':
                    str4 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '-':
                    zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '.':
                    emptyList11 = coy.a(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '/':
                    i2 = jsonReader.nextInt();
                    if (i2 != 0 && i2 != 1) {
                        i2 = 0;
                        i = i;
                        reVar = reVar;
                        break;
                    } else {
                        i = i;
                        reVar = reVar;
                        break;
                    }
                case '0':
                    str = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '1':
                    zzavyVar = zzavy.zza(zzbh.zzd(jsonReader));
                    i = i;
                    reVar = reVar;
                    break;
                case '2':
                    z2 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '3':
                    str5 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '4':
                    emptyList5 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '5':
                    str9 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case '6':
                    emptyList6 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                case '7':
                    z11 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case '8':
                    emptyList = zzbh.zza(jsonReader);
                    reVar = reVar;
                    i = i;
                    break;
                case '9':
                    z9 = jsonReader.nextBoolean();
                    i = i;
                    reVar = reVar;
                    break;
                case ':':
                    str8 = jsonReader.nextString();
                    i = i;
                    reVar = reVar;
                    break;
                case ';':
                    emptyList10 = zzbh.zza(jsonReader);
                    i = i;
                    reVar = reVar;
                    break;
                default:
                    jsonReader.skipValue();
                    i = i;
                    reVar = reVar;
                    break;
            }
        }
        jsonReader.endObject();
        this.f26183a = emptyList;
        this.f26184b = i;
        this.f26185c = emptyList2;
        this.f26186d = emptyList3;
        this.f = emptyList4;
        this.e = i2;
        this.g = emptyList5;
        this.h = emptyList6;
        this.i = emptyList7;
        this.j = str;
        this.k = str13;
        this.l = zzavyVar;
        this.m = emptyList8;
        this.n = emptyList9;
        this.o = emptyList10;
        this.p = i3;
        this.q = emptyList11;
        this.r = cpcVar;
        this.s = emptyList12;
        this.t = emptyList13;
        this.v = str12;
        this.u = jSONObject;
        this.w = str11;
        this.x = str2;
        this.y = str3;
        this.z = zzaxnVar;
        this.A = str4;
        this.B = jSONObject2;
        this.C = jSONObject3;
        this.E = z;
        this.F = z2;
        this.G = z3;
        this.H = z4;
        this.I = z5;
        this.J = z6;
        this.K = z7;
        this.L = i4;
        this.M = i5;
        this.N = z8;
        this.O = str5;
        this.P = new OmidSettings(jSONObject4);
        this.Q = z9;
        this.R = z10;
        this.S = i6;
        this.T = str6;
        this.U = i7;
        this.V = str7;
        this.W = z11;
        this.X = reVar;
        this.Y = z12;
        this.Z = zzvvVar;
        this.aa = str8;
        this.ab = z13;
        this.ac = jSONObject5;
        this.D = str9;
        this.ad = z14;
        this.ae = jSONObject6;
        this.af = z15;
        this.ag = str10;
    }
}
