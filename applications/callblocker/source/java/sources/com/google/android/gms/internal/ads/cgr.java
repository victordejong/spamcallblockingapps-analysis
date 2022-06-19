package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgr.class */
public final class cgr {

    /* renamed from: A */
    public final JSONObject f12955A;

    /* renamed from: B */
    public final boolean f12956B;

    /* renamed from: C */
    public final boolean f12957C;

    /* renamed from: D */
    public final boolean f12958D;

    /* renamed from: E */
    public final boolean f12959E;

    /* renamed from: F */
    public final boolean f12960F;

    /* renamed from: G */
    public final boolean f12961G;

    /* renamed from: H */
    public final int f12962H;

    /* renamed from: I */
    public final int f12963I;

    /* renamed from: J */
    public final boolean f12964J;

    /* renamed from: K */
    public final String f12965K;

    /* renamed from: L */
    public final JSONObject f12966L;

    /* renamed from: M */
    public final boolean f12967M;

    /* renamed from: N */
    public final boolean f12968N;

    /* renamed from: O */
    public final int f12969O;

    /* renamed from: P */
    public final boolean f12970P;

    /* renamed from: Q */
    public final String f12971Q;

    /* renamed from: R */
    public final int f12972R;

    /* renamed from: S */
    public final String f12973S;

    /* renamed from: T */
    public final boolean f12974T;

    /* renamed from: U */
    public final C3377od f12975U;

    /* renamed from: V */
    public final boolean f12976V;

    /* renamed from: W */
    public final dyf f12977W;

    /* renamed from: X */
    public final String f12978X;

    /* renamed from: a */
    public final List<String> f12979a;

    /* renamed from: b */
    public final int f12980b;

    /* renamed from: c */
    public final List<String> f12981c;

    /* renamed from: d */
    public final List<String> f12982d;

    /* renamed from: e */
    public final int f12983e;

    /* renamed from: f */
    public final List<String> f12984f;

    /* renamed from: g */
    public final List<String> f12985g;

    /* renamed from: h */
    public final List<String> f12986h;

    /* renamed from: i */
    public final List<String> f12987i;

    /* renamed from: j */
    public final String f12988j;

    /* renamed from: k */
    public final String f12989k;

    /* renamed from: l */
    public final C3472rr f12990l;

    /* renamed from: m */
    public final List<String> f12991m;

    /* renamed from: n */
    public final List<String> f12992n;

    /* renamed from: o */
    public final List<cgq> f12993o;

    /* renamed from: p */
    public final cgu f12994p;

    /* renamed from: q */
    public final List<String> f12995q;

    /* renamed from: r */
    public final List<cgq> f12996r;

    /* renamed from: s */
    public final JSONObject f12997s;

    /* renamed from: t */
    public final String f12998t;

    /* renamed from: u */
    public final String f12999u;

    /* renamed from: v */
    public final String f13000v;

    /* renamed from: w */
    public final String f13001w;

    /* renamed from: x */
    public final C3500ss f13002x;

    /* renamed from: y */
    public final String f13003y;

    /* renamed from: z */
    public final JSONObject f13004z;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public cgr(JsonReader jsonReader) {
        boolean z;
        List<String> emptyList = Collections.emptyList();
        int i = 0;
        List<String> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        List<String> emptyList4 = Collections.emptyList();
        int i2 = 0;
        List<String> emptyList5 = Collections.emptyList();
        Collections.emptyList();
        List<String> emptyList6 = Collections.emptyList();
        List<String> emptyList7 = Collections.emptyList();
        String str = "";
        String str2 = "";
        C3472rr c3472rr = null;
        List<String> emptyList8 = Collections.emptyList();
        List<String> emptyList9 = Collections.emptyList();
        List<cgq> emptyList10 = Collections.emptyList();
        cgu cguVar = null;
        List<String> emptyList11 = Collections.emptyList();
        List<cgq> emptyList12 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        String str3 = "";
        String str4 = "";
        String str5 = "";
        String str6 = "";
        C3500ss c3500ss = null;
        String str7 = "";
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i3 = -1;
        int i4 = 0;
        boolean z8 = false;
        String str8 = "";
        JSONObject jSONObject4 = new JSONObject();
        boolean z9 = false;
        boolean z10 = false;
        int i5 = 0;
        boolean z11 = false;
        String str9 = "";
        int i6 = -1;
        String str10 = "";
        boolean z12 = false;
        C3377od c3377od = null;
        boolean z13 = true;
        dyf dyfVar = null;
        String str11 = "";
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str12 = nextName == null ? "" : nextName;
            switch (str12.hashCode()) {
                case -1980587809:
                    if (str12.equals("debug_signals")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1965512151:
                    if (str12.equals("omid_settings")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1812055556:
                    if (str12.equals("play_prewarm_options")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1620470467:
                    if (str12.equals("backend_query_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1440104884:
                    if (str12.equals("is_custom_close_blocked")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1439500848:
                    if (str12.equals("orientation")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1428969291:
                    if (str12.equals("enable_omid")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1403779768:
                    if (str12.equals("showable_impression_type")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1360811658:
                    if (str12.equals("ad_sizes")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1306015996:
                    if (str12.equals("adapters")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1289032093:
                    if (str12.equals("extras")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1240082064:
                    if (str12.equals("ad_event_value")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1234181075:
                    if (str12.equals("allow_pub_rendered_attribution")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1181000426:
                    if (str12.equals("is_augmented_reality_ad")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1152230954:
                    if (str12.equals("ad_type")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1146534047:
                    if (str12.equals("is_scroll_aware")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1115838944:
                    if (str12.equals("fill_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1081936678:
                    if (str12.equals("allocation_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1078050970:
                    if (str12.equals("video_complete_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1051269058:
                    if (str12.equals("active_view")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -982608540:
                    if (str12.equals("valid_from_timestamp")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -776859333:
                    if (str12.equals("click_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -544216775:
                    if (str12.equals("safe_browsing")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -437057161:
                    if (str12.equals("imp_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -404326515:
                    if (str12.equals("render_timeout_ms")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -397704715:
                    if (str12.equals("ad_close_time_ms")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -369773488:
                    if (str12.equals("is_close_button_enabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -213424028:
                    if (str12.equals("watermark")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -29338502:
                    if (str12.equals("allow_custom_click_gesture")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3107:
                    if (str12.equals("ad")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3355:
                    if (str12.equals("id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3076010:
                    if (str12.equals("data")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 63195984:
                    if (str12.equals("render_test_label")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 107433883:
                    if (str12.equals("qdata")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 230323073:
                    if (str12.equals("ad_load_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 418392395:
                    if (str12.equals("is_closable_area_disabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 597473788:
                    if (str12.equals("debug_dialog_string")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 673261304:
                    if (str12.equals("reward_granted_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 754887508:
                    if (str12.equals("container_sizes")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 791122864:
                    if (str12.equals("impression_type")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1010584092:
                    if (str12.equals("transaction_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1100650276:
                    if (str12.equals("rewards")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1321720943:
                    if (str12.equals("allow_pub_owned_ad_view")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1637553475:
                    if (str12.equals("bid_response")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1638957285:
                    if (str12.equals("video_start_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1688341040:
                    if (str12.equals("video_reward_urls")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1799285870:
                    if (str12.equals("use_third_party_container_height")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1839650832:
                    if (str12.equals("renderers")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 1875425491:
                    if (str12.equals("is_analytics_logging_enabled")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 2068142375:
                    if (str12.equals("rule_line_external_id")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 2072888499:
                    if (str12.equals("manual_tracking_urls")) {
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
                    emptyList = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    if (!"banner".equals(nextString)) {
                        if (!"interstitial".equals(nextString)) {
                            if (!"native_express".equals(nextString)) {
                                if (!"native".equals(nextString)) {
                                    if (!"rewarded".equals(nextString)) {
                                        i = 0;
                                        break;
                                    } else {
                                        i = 5;
                                        break;
                                    }
                                } else {
                                    i = 4;
                                    break;
                                }
                            } else {
                                i = 3;
                                break;
                            }
                        } else {
                            i = 2;
                            break;
                        }
                    } else {
                        i = 1;
                        break;
                    }
                case true:
                    emptyList2 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList3 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList4 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    int nextInt = jsonReader.nextInt();
                    i2 = nextInt;
                    if (nextInt == 0) {
                        break;
                    } else {
                        i2 = nextInt;
                        if (nextInt == 1) {
                            break;
                        } else {
                            i2 = 0;
                            break;
                        }
                    }
                case true:
                    emptyList5 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList6 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList7 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    str = jsonReader.nextString();
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    c3472rr = C3472rr.m7219a(C3614wy.m6846d(jsonReader));
                    break;
                case true:
                    emptyList8 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList9 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    emptyList10 = cgq.m11365a(jsonReader);
                    break;
                case true:
                    cguVar = new cgu(jsonReader);
                    break;
                case true:
                    emptyList12 = cgq.m11365a(jsonReader);
                    break;
                case true:
                    emptyList11 = C3614wy.m6861a(jsonReader);
                    break;
                case true:
                    str3 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject = C3614wy.m6847c(jsonReader);
                    break;
                case true:
                    str4 = jsonReader.nextString();
                    break;
                case true:
                    str5 = jsonReader.nextString();
                    break;
                case true:
                    str6 = C3614wy.m6847c(jsonReader).toString();
                    break;
                case true:
                    c3500ss = C3500ss.m7183a(C3614wy.m6847c(jsonReader));
                    break;
                case true:
                    str7 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject2 = C3614wy.m6847c(jsonReader);
                    break;
                case true:
                    jSONObject3 = C3614wy.m6847c(jsonReader);
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
                    String nextString2 = jsonReader.nextString();
                    if (!"landscape".equalsIgnoreCase(nextString2)) {
                        if (!"portrait".equalsIgnoreCase(nextString2)) {
                            i3 = -1;
                            break;
                        } else {
                            C2341q.m14742e();
                            i3 = 7;
                            break;
                        }
                    } else {
                        C2341q.m14742e();
                        i3 = 6;
                        break;
                    }
                case true:
                    i4 = jsonReader.nextInt();
                    break;
                case true:
                    z8 = jsonReader.nextBoolean();
                    break;
                case true:
                    str8 = jsonReader.nextString();
                    break;
                case true:
                    jSONObject4 = C3614wy.m6847c(jsonReader);
                    break;
                case true:
                    z9 = jsonReader.nextBoolean();
                    break;
                case true:
                    z10 = jsonReader.nextBoolean();
                    break;
                case true:
                    i5 = jsonReader.nextInt();
                    break;
                case true:
                    z11 = jsonReader.nextBoolean();
                    break;
                case true:
                    i6 = jsonReader.nextInt();
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
                    JSONObject m6847c = C3614wy.m6847c(jsonReader);
                    if (m6847c != null) {
                        c3377od = new C3377od(m6847c.optBoolean("enable_prewarming", false), m6847c.optString("prefetch_url", ""));
                        break;
                    } else {
                        c3377od = null;
                        break;
                    }
                case true:
                    z13 = jsonReader.nextBoolean();
                    break;
                case true:
                    dyfVar = dyf.m8185a(C3614wy.m6847c(jsonReader));
                    break;
                case true:
                    str11 = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        this.f12979a = emptyList;
        this.f12980b = i;
        this.f12981c = emptyList2;
        this.f12982d = emptyList3;
        this.f12984f = emptyList4;
        this.f12983e = i2;
        this.f12985g = emptyList5;
        this.f12986h = emptyList6;
        this.f12987i = emptyList7;
        this.f12988j = str;
        this.f12989k = str2;
        this.f12990l = c3472rr;
        this.f12991m = emptyList8;
        this.f12992n = emptyList9;
        this.f12993o = emptyList10;
        this.f12994p = cguVar;
        this.f12995q = emptyList11;
        this.f12996r = emptyList12;
        this.f12998t = str3;
        this.f12997s = jSONObject;
        this.f12999u = str4;
        this.f13000v = str5;
        this.f13001w = str6;
        this.f13002x = c3500ss;
        this.f13003y = str7;
        this.f13004z = jSONObject2;
        this.f12955A = jSONObject3;
        this.f12956B = z2;
        this.f12957C = z3;
        this.f12958D = z4;
        this.f12959E = z5;
        this.f12960F = z6;
        this.f12961G = z7;
        this.f12962H = i3;
        this.f12963I = i4;
        this.f12964J = z8;
        this.f12965K = str8;
        this.f12966L = jSONObject4;
        this.f12967M = z9;
        this.f12968N = z10;
        this.f12969O = i5;
        this.f12970P = z11;
        this.f12971Q = str9;
        this.f12972R = i6;
        this.f12973S = str10;
        this.f12974T = z12;
        this.f12975U = c3377od;
        this.f12976V = z13;
        this.f12977W = dyfVar;
        this.f12978X = str11;
    }
}
