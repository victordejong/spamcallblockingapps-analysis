package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.C1422h0;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/al1.class */
public final class al1 {

    /* renamed from: A */
    public final String f5981A;

    /* renamed from: B */
    public final JSONObject f5982B;

    /* renamed from: C */
    public final JSONObject f5983C;

    /* renamed from: D */
    public final String f5984D;

    /* renamed from: E */
    public final boolean f5985E;

    /* renamed from: F */
    public final boolean f5986F;

    /* renamed from: G */
    public final boolean f5987G;

    /* renamed from: H */
    public final boolean f5988H;

    /* renamed from: I */
    public final boolean f5989I;

    /* renamed from: J */
    public final boolean f5990J;

    /* renamed from: K */
    public final boolean f5991K;

    /* renamed from: L */
    public final int f5992L;

    /* renamed from: M */
    public final int f5993M;

    /* renamed from: N */
    public final boolean f5994N;

    /* renamed from: O */
    public final String f5995O;

    /* renamed from: P */
    public final vl1 f5996P;

    /* renamed from: Q */
    public final boolean f5997Q;

    /* renamed from: R */
    public final boolean f5998R;

    /* renamed from: S */
    public final int f5999S;

    /* renamed from: T */
    public final String f6000T;

    /* renamed from: U */
    public final int f6001U;

    /* renamed from: V */
    public final String f6002V;

    /* renamed from: W */
    public final boolean f6003W;

    /* renamed from: X */
    public final C1702di f6004X;

    /* renamed from: Y */
    public final boolean f6005Y;

    /* renamed from: Z */
    public final zzyz f6006Z;

    /* renamed from: a */
    public final List<String> f6007a;

    /* renamed from: a0 */
    public final String f6008a0;

    /* renamed from: b */
    public final int f6009b;

    /* renamed from: b0 */
    public final boolean f6010b0;

    /* renamed from: c */
    public final List<String> f6011c;

    /* renamed from: c0 */
    public final JSONObject f6012c0;

    /* renamed from: d */
    public final List<String> f6013d;

    /* renamed from: d0 */
    public final boolean f6014d0;

    /* renamed from: e */
    public final int f6015e;

    /* renamed from: e0 */
    public final JSONObject f6016e0;

    /* renamed from: f */
    public final List<String> f6017f;

    /* renamed from: f0 */
    public final boolean f6018f0;

    /* renamed from: g */
    public final List<String> f6019g;

    /* renamed from: g0 */
    public final String f6020g0;

    /* renamed from: h */
    public final List<String> f6021h;

    /* renamed from: i */
    public final List<String> f6022i;

    /* renamed from: j */
    public final String f6023j;

    /* renamed from: k */
    public final String f6024k;

    /* renamed from: l */
    public final zzaxe f6025l;

    /* renamed from: m */
    public final List<String> f6026m;

    /* renamed from: n */
    public final List<String> f6027n;

    /* renamed from: o */
    public final List<String> f6028o;

    /* renamed from: p */
    public final int f6029p;

    /* renamed from: q */
    public final List<bl1> f6030q;

    /* renamed from: r */
    public final el1 f6031r;

    /* renamed from: s */
    public final List<String> f6032s;

    /* renamed from: t */
    public final List<bl1> f6033t;

    /* renamed from: u */
    public final JSONObject f6034u;

    /* renamed from: v */
    public final String f6035v;

    /* renamed from: w */
    public final String f6036w;

    /* renamed from: x */
    public final String f6037x;

    /* renamed from: y */
    public final String f6038y;

    /* renamed from: z */
    public final zzayo f6039z;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public al1(JsonReader jsonReader) {
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
        List<bl1> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<bl1> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jsonReader.beginObject();
        el1 el1Var = null;
        zzayo zzayoVar = null;
        C1702di c1702di = null;
        zzyz zzyzVar = null;
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
        String str12 = str11;
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
        zzaxe zzaxeVar = null;
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
                    emptyList = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    i7 = m8129a(jsonReader.nextString());
                    break;
                case true:
                    emptyList2 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList3 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList4 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    i6 = m8128b(jsonReader.nextInt());
                    break;
                case true:
                    emptyList5 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList6 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList7 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    str13 = jsonReader.nextString();
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    zzaxeVar = zzaxe.a(C1422h0.m8834d(jsonReader));
                    break;
                case true:
                    emptyList8 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList9 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    emptyList10 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    i = jsonReader.nextInt();
                    break;
                case true:
                    emptyList11 = bl1.m7963a(jsonReader);
                    break;
                case true:
                    el1Var = new el1(jsonReader);
                    break;
                case true:
                    emptyList13 = bl1.m7963a(jsonReader);
                    break;
                case true:
                    emptyList12 = C1422h0.m8836b(jsonReader);
                    break;
                case true:
                    str3 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    break;
                case true:
                    str5 = jsonReader.nextString();
                    break;
                case true:
                    str6 = C1422h0.m8835c(jsonReader).toString();
                    break;
                case true:
                    zzayoVar = zzayo.a(C1422h0.m8835c(jsonReader));
                    break;
                case true:
                    str7 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject2 = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    jSONObject3 = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    z2 = jsonReader.nextBoolean();
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
                    i2 = m8127c(jsonReader.nextString());
                    break;
                case true:
                    i3 = jsonReader.nextInt();
                    break;
                case true:
                    z9 = jsonReader.nextBoolean();
                    break;
                case true:
                    str8 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject4 = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    z10 = jsonReader.nextBoolean();
                    break;
                case true:
                    z11 = jsonReader.nextBoolean();
                    break;
                case true:
                    i4 = jsonReader.nextInt();
                    break;
                case true:
                    i5 = jsonReader.nextInt();
                    break;
                case true:
                    str9 = jsonReader.nextString();
                    break;
                case true:
                    str10 = jsonReader.nextString();
                    break;
                case true:
                    z12 = jsonReader.nextBoolean();
                    break;
                case true:
                    c1702di = C1702di.m7738a(C1422h0.m8835c(jsonReader));
                    break;
                case true:
                    z13 = jsonReader.nextBoolean();
                    break;
                case true:
                    zzyzVar = zzyz.a(C1422h0.m8835c(jsonReader));
                    break;
                case true:
                    str11 = jsonReader.nextString();
                    break;
                case true:
                    z14 = jsonReader.nextBoolean();
                    break;
                case true:
                    jSONObject5 = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    str12 = jsonReader.nextString();
                    break;
                case true:
                    z15 = jsonReader.nextBoolean();
                    break;
                case true:
                    jSONObject6 = C1422h0.m8835c(jsonReader);
                    break;
                case true:
                    z16 = jsonReader.nextBoolean();
                    break;
                case true:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        this.f6007a = emptyList;
        this.f6009b = i7;
        this.f6011c = emptyList2;
        this.f6013d = emptyList3;
        this.f6017f = emptyList4;
        this.f6015e = i6;
        this.f6019g = emptyList5;
        this.f6021h = emptyList6;
        this.f6022i = emptyList7;
        this.f6023j = str13;
        this.f6024k = str2;
        this.f6025l = zzaxeVar;
        this.f6026m = emptyList8;
        this.f6027n = emptyList9;
        this.f6028o = emptyList10;
        this.f6029p = i;
        this.f6030q = emptyList11;
        this.f6031r = el1Var;
        this.f6032s = emptyList12;
        this.f6033t = emptyList13;
        this.f6035v = str3;
        this.f6034u = jSONObject;
        this.f6036w = str4;
        this.f6037x = str5;
        this.f6038y = str6;
        this.f6039z = zzayoVar;
        this.f5981A = str7;
        this.f5982B = jSONObject2;
        this.f5983C = jSONObject3;
        this.f5985E = z2;
        this.f5986F = z3;
        this.f5987G = z4;
        this.f5988H = z5;
        this.f5989I = z6;
        this.f5990J = z7;
        this.f5991K = z8;
        this.f5992L = i2;
        this.f5993M = i3;
        this.f5994N = z9;
        this.f5995O = str8;
        this.f5996P = new vl1(jSONObject4);
        this.f5997Q = z10;
        this.f5998R = z11;
        this.f5999S = i4;
        this.f6000T = str9;
        this.f6001U = i5;
        this.f6002V = str10;
        this.f6003W = z12;
        this.f6004X = c1702di;
        this.f6005Y = z13;
        this.f6006Z = zzyzVar;
        this.f6008a0 = str11;
        this.f6010b0 = z14;
        this.f6012c0 = jSONObject5;
        this.f5984D = str12;
        this.f6014d0 = z15;
        this.f6016e0 = jSONObject6;
        this.f6018f0 = z16;
        this.f6020g0 = str;
    }

    /* renamed from: a */
    private static int m8129a(String str) {
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
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    /* renamed from: b */
    private static int m8128b(int i) {
        int i2 = i;
        if (i != 0) {
            i2 = i == 1 ? i : 0;
        }
        return i2;
    }

    /* renamed from: c */
    private static final int m8127c(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        return "portrait".equalsIgnoreCase(str) ? 7 : -1;
    }
}
