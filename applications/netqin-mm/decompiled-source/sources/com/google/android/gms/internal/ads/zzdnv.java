package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidSettings;
import com.inmobi.ads.C8078ad;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnv.class */
public final class zzdnv {

    /* renamed from: A */
    public final String f27554A;

    /* renamed from: B */
    public final JSONObject f27555B;

    /* renamed from: C */
    public final JSONObject f27556C;

    /* renamed from: D */
    public final String f27557D;

    /* renamed from: E */
    public final boolean f27558E;

    /* renamed from: F */
    public final boolean f27559F;

    /* renamed from: G */
    public final boolean f27560G;

    /* renamed from: H */
    public final boolean f27561H;

    /* renamed from: I */
    public final boolean f27562I;

    /* renamed from: J */
    public final boolean f27563J;

    /* renamed from: K */
    public final boolean f27564K;

    /* renamed from: L */
    public final int f27565L;

    /* renamed from: M */
    public final int f27566M;

    /* renamed from: N */
    public final boolean f27567N;

    /* renamed from: O */
    public final String f27568O;

    /* renamed from: P */
    public final OmidSettings f27569P;

    /* renamed from: Q */
    public final boolean f27570Q;

    /* renamed from: R */
    public final boolean f27571R;

    /* renamed from: S */
    public final int f27572S;

    /* renamed from: T */
    public final boolean f27573T;

    /* renamed from: U */
    public final String f27574U;

    /* renamed from: V */
    public final int f27575V;

    /* renamed from: W */
    public final String f27576W;

    /* renamed from: X */
    public final boolean f27577X;

    /* renamed from: Y */
    public final zzarh f27578Y;

    /* renamed from: Z */
    public final boolean f27579Z;

    /* renamed from: a */
    public final List<String> f27580a;

    /* renamed from: a0 */
    public final zzvp f27581a0;

    /* renamed from: b */
    public final int f27582b;

    /* renamed from: b0 */
    public final String f27583b0;

    /* renamed from: c */
    public final List<String> f27584c;

    /* renamed from: c0 */
    public final boolean f27585c0;

    /* renamed from: d */
    public final List<String> f27586d;

    /* renamed from: d0 */
    public final JSONObject f27587d0;

    /* renamed from: e */
    public final int f27588e;

    /* renamed from: e0 */
    public final boolean f27589e0;

    /* renamed from: f */
    public final List<String> f27590f;

    /* renamed from: g */
    public final List<String> f27591g;

    /* renamed from: h */
    public final List<String> f27592h;

    /* renamed from: i */
    public final List<String> f27593i;

    /* renamed from: j */
    public final String f27594j;

    /* renamed from: k */
    public final String f27595k;

    /* renamed from: l */
    public final zzauv f27596l;

    /* renamed from: m */
    public final List<String> f27597m;

    /* renamed from: n */
    public final List<String> f27598n;

    /* renamed from: o */
    public final List<String> f27599o;

    /* renamed from: p */
    public final int f27600p;

    /* renamed from: q */
    public final List<zzdnu> f27601q;

    /* renamed from: r */
    public final zzdny f27602r;

    /* renamed from: s */
    public final List<String> f27603s;

    /* renamed from: t */
    public final List<zzdnu> f27604t;

    /* renamed from: u */
    public final JSONObject f27605u;

    /* renamed from: v */
    public final String f27606v;

    /* renamed from: w */
    public final String f27607w;

    /* renamed from: x */
    public final String f27608x;

    /* renamed from: y */
    public final String f27609y;

    /* renamed from: z */
    public final zzawg f27610z;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzdnv(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        char c;
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
        List<zzdnu> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<zzdnu> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        jsonReader.beginObject();
        String str = "";
        String str2 = str;
        zzvp zzvpVar = null;
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
        boolean z11 = false;
        int i7 = -1;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = false;
        boolean z15 = false;
        String str3 = str;
        zzarh zzarhVar = null;
        String str4 = str;
        String str5 = str;
        String str6 = str;
        String str7 = str;
        zzawg zzawgVar = null;
        String str8 = str;
        String str9 = str;
        String str10 = str;
        String str11 = str;
        zzdny zzdnyVar = null;
        zzauv zzauvVar = null;
        String str12 = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1980587809:
                    if (nextName.equals("debug_signals")) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case -1965512151:
                    if (nextName.equals("omid_settings")) {
                        c = ')';
                        break;
                    }
                    c = 65535;
                    break;
                case -1812055556:
                    if (nextName.equals("play_prewarm_options")) {
                        c = '2';
                        break;
                    }
                    c = 65535;
                    break;
                case -1662989631:
                    if (nextName.equals("is_interscroller")) {
                        c = '6';
                        break;
                    }
                    c = 65535;
                    break;
                case -1620470467:
                    if (nextName.equals("backend_query_id")) {
                        c = '0';
                        break;
                    }
                    c = 65535;
                    break;
                case -1440104884:
                    if (nextName.equals("is_custom_close_blocked")) {
                        c = '#';
                        break;
                    }
                    c = 65535;
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c = '%';
                        break;
                    }
                    c = 65535;
                    break;
                case -1428969291:
                    if (nextName.equals("enable_omid")) {
                        c = '\'';
                        break;
                    }
                    c = 65535;
                    break;
                case -1403779768:
                    if (nextName.equals("showable_impression_type")) {
                        c = ',';
                        break;
                    }
                    c = 65535;
                    break;
                case -1375413093:
                    if (nextName.equals("ad_cover")) {
                        c = '7';
                        break;
                    }
                    c = 65535;
                    break;
                case -1360811658:
                    if (nextName.equals("ad_sizes")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case -1306015996:
                    if (nextName.equals("adapters")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case -1303332046:
                    if (nextName.equals("test_mode_enabled")) {
                        c = '\"';
                        break;
                    }
                    c = 65535;
                    break;
                case -1289032093:
                    if (nextName.equals("extras")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -1240082064:
                    if (nextName.equals("ad_event_value")) {
                        c = '4';
                        break;
                    }
                    c = 65535;
                    break;
                case -1234181075:
                    if (nextName.equals("allow_pub_rendered_attribution")) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case -1181000426:
                    if (nextName.equals("is_augmented_reality_ad")) {
                        c = '-';
                        break;
                    }
                    c = 65535;
                    break;
                case -1168140544:
                    if (nextName.equals("presentation_error_urls")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1152230954:
                    if (nextName.equals("ad_type")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1146534047:
                    if (nextName.equals("is_scroll_aware")) {
                        c = '+';
                        break;
                    }
                    c = 65535;
                    break;
                case -1115838944:
                    if (nextName.equals("fill_urls")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case -1081936678:
                    if (nextName.equals("allocation_id")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case -1078050970:
                    if (nextName.equals("video_complete_urls")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -1051269058:
                    if (nextName.equals("active_view")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case -982608540:
                    if (nextName.equals("valid_from_timestamp")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -776859333:
                    if (nextName.equals("click_urls")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -544216775:
                    if (nextName.equals("safe_browsing")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case -437057161:
                    if (nextName.equals("imp_urls")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -404326515:
                    if (nextName.equals("render_timeout_ms")) {
                        c = '&';
                        break;
                    }
                    c = 65535;
                    break;
                case -397704715:
                    if (nextName.equals("ad_close_time_ms")) {
                        c = '.';
                        break;
                    }
                    c = 65535;
                    break;
                case -369773488:
                    if (nextName.equals("is_close_button_enabled")) {
                        c = '3';
                        break;
                    }
                    c = 65535;
                    break;
                case -213424028:
                    if (nextName.equals("watermark")) {
                        c = '/';
                        break;
                    }
                    c = 65535;
                    break;
                case -154616268:
                    if (nextName.equals("is_offline_ad")) {
                        c = '9';
                        break;
                    }
                    c = 65535;
                    break;
                case -29338502:
                    if (nextName.equals("allow_custom_click_gesture")) {
                        c = ' ';
                        break;
                    }
                    c = 65535;
                    break;
                case 3107:
                    if (nextName.equals(C8078ad.f31587d)) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    if (nextName.equals("id")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case 3076010:
                    if (nextName.equals("data")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 63195984:
                    if (nextName.equals("render_test_label")) {
                        c = '!';
                        break;
                    }
                    c = 65535;
                    break;
                case 107433883:
                    if (nextName.equals("qdata")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 230323073:
                    if (nextName.equals("ad_load_urls")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 418392395:
                    if (nextName.equals("is_closable_area_disabled")) {
                        c = '$';
                        break;
                    }
                    c = 65535;
                    break;
                case 549176928:
                    if (nextName.equals("presentation_error_timeout_ms")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 597473788:
                    if (nextName.equals("debug_dialog_string")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case 673261304:
                    if (nextName.equals("reward_granted_urls")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 754887508:
                    if (nextName.equals("container_sizes")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 791122864:
                    if (nextName.equals("impression_type")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1010584092:
                    if (nextName.equals(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER)) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1100650276:
                    if (nextName.equals("rewards")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 1321720943:
                    if (nextName.equals("allow_pub_owned_ad_view")) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case 1637553475:
                    if (nextName.equals("bid_response")) {
                        c = '(';
                        break;
                    }
                    c = 65535;
                    break;
                case 1638957285:
                    if (nextName.equals("video_start_urls")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1686319423:
                    if (nextName.equals("ad_network_class_name")) {
                        c = '8';
                        break;
                    }
                    c = 65535;
                    break;
                case 1688341040:
                    if (nextName.equals("video_reward_urls")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1799285870:
                    if (nextName.equals("use_third_party_container_height")) {
                        c = '1';
                        break;
                    }
                    c = 65535;
                    break;
                case 1839650832:
                    if (nextName.equals("renderers")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1875425491:
                    if (nextName.equals("is_analytics_logging_enabled")) {
                        c = '*';
                        break;
                    }
                    c = 65535;
                    break;
                case 2068142375:
                    if (nextName.equals("rule_line_external_id")) {
                        c = '5';
                        break;
                    }
                    c = 65535;
                    break;
                case 2072888499:
                    if (nextName.equals("manual_tracking_urls")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    emptyList = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 1:
                    String nextString = jsonReader.nextString();
                    if (!"banner".equals(nextString)) {
                        if (!AdType.INTERSTITIAL.equals(nextString)) {
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
                case 2:
                    emptyList2 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 3:
                    emptyList3 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 4:
                    emptyList4 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 5:
                    i2 = jsonReader.nextInt();
                    if (i2 != 0 && i2 != 1) {
                        i2 = 0;
                        i = i;
                        break;
                    } else {
                        i = i;
                        break;
                    }
                    break;
                case 6:
                    emptyList5 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 7:
                    zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case '\b':
                    emptyList6 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case '\t':
                    emptyList7 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case '\n':
                    str12 = jsonReader.nextString();
                    i = i;
                    break;
                case 11:
                    str = jsonReader.nextString();
                    i = i;
                    break;
                case '\f':
                    zzauvVar = zzauv.m16318a(zzbao.m15949d(jsonReader));
                    i = i;
                    break;
                case '\r':
                    emptyList8 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 14:
                    emptyList9 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 15:
                    emptyList10 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 16:
                    i3 = jsonReader.nextInt();
                    i = i;
                    break;
                case 17:
                    emptyList11 = zzdnu.m13451a(jsonReader);
                    i = i;
                    break;
                case 18:
                    zzdnyVar = new zzdny(jsonReader);
                    i = i;
                    break;
                case 19:
                    emptyList13 = zzdnu.m13451a(jsonReader);
                    continue;
                case 20:
                    emptyList12 = zzbao.m15964a(jsonReader);
                    i = i;
                    break;
                case 21:
                    str11 = jsonReader.nextString();
                    i = i;
                    break;
                case 22:
                    jSONObject = zzbao.m15950c(jsonReader);
                    i = i;
                    break;
                case 23:
                    str10 = jsonReader.nextString();
                    i = i;
                    break;
                case 24:
                    str9 = jsonReader.nextString();
                    i = i;
                    break;
                case 25:
                    str8 = zzbao.m15950c(jsonReader).toString();
                    i = i;
                    break;
                case 26:
                    zzawgVar = zzawg.m16269a(zzbao.m15950c(jsonReader));
                    i = i;
                    break;
                case 27:
                    str7 = jsonReader.nextString();
                    i = i;
                    break;
                case 28:
                    jSONObject2 = zzbao.m15950c(jsonReader);
                    i = i;
                    break;
                case 29:
                    jSONObject3 = zzbao.m15950c(jsonReader);
                    i = i;
                    break;
                case 30:
                    z = jsonReader.nextBoolean();
                    i = i;
                    break;
                case 31:
                    z2 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case ' ':
                    z3 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '!':
                    z4 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '\"':
                    z5 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '#':
                    z6 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '%':
                    String nextString2 = jsonReader.nextString();
                    if (!"landscape".equalsIgnoreCase(nextString2)) {
                        if (!"portrait".equalsIgnoreCase(nextString2)) {
                            i4 = -1;
                            i = i;
                            break;
                        } else {
                            zzp.m17967e();
                            i4 = 7;
                            i = i;
                            break;
                        }
                    } else {
                        zzp.m17967e();
                        i4 = 6;
                        i = i;
                        break;
                    }
                case '&':
                    i5 = jsonReader.nextInt();
                    i = i;
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '(':
                    str6 = jsonReader.nextString();
                    i = i;
                    break;
                case ')':
                    jSONObject4 = zzbao.m15950c(jsonReader);
                    i = i;
                    break;
                case '*':
                    z9 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '+':
                    z10 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case ',':
                    i6 = jsonReader.nextInt();
                    i = i;
                    break;
                case '-':
                    z11 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '.':
                    i7 = jsonReader.nextInt();
                    i = i;
                    break;
                case '/':
                    str5 = jsonReader.nextString();
                    i = i;
                    break;
                case '0':
                    str4 = jsonReader.nextString();
                    i = i;
                    break;
                case '1':
                    z12 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '2':
                    JSONObject c2 = zzbao.m15950c(jsonReader);
                    if (c2 != null) {
                        zzarhVar = new zzarh(c2.optBoolean("enable_prewarming", false), c2.optString("prefetch_url", ""));
                        i = i;
                        break;
                    } else {
                        zzarhVar = null;
                        i = i;
                        break;
                    }
                case '3':
                    z13 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '4':
                    zzvpVar = zzvp.m11191a(zzbao.m15950c(jsonReader));
                    i = i;
                    break;
                case '5':
                    str3 = jsonReader.nextString();
                    i = i;
                    break;
                case '6':
                    z14 = jsonReader.nextBoolean();
                    i = i;
                    break;
                case '7':
                    jSONObject5 = zzbao.m15950c(jsonReader);
                    i = i;
                    break;
                case '8':
                    str2 = jsonReader.nextString();
                    i = i;
                    break;
                case '9':
                    z15 = jsonReader.nextBoolean();
                    i = i;
                    break;
                default:
                    jsonReader.skipValue();
                    i = i;
                    break;
            }
        }
        jsonReader.endObject();
        this.f27580a = emptyList;
        this.f27582b = i;
        this.f27584c = emptyList2;
        this.f27586d = emptyList3;
        this.f27590f = emptyList4;
        this.f27588e = i2;
        this.f27591g = emptyList5;
        this.f27592h = emptyList6;
        this.f27593i = emptyList7;
        this.f27594j = str12;
        this.f27595k = str;
        this.f27596l = zzauvVar;
        this.f27597m = emptyList8;
        this.f27598n = emptyList9;
        this.f27599o = emptyList10;
        this.f27600p = i3;
        this.f27601q = emptyList11;
        this.f27602r = zzdnyVar;
        this.f27603s = emptyList12;
        this.f27604t = emptyList13;
        this.f27606v = str11;
        this.f27605u = jSONObject;
        this.f27607w = str10;
        this.f27608x = str9;
        this.f27609y = str8;
        this.f27610z = zzawgVar;
        this.f27554A = str7;
        this.f27555B = jSONObject2;
        this.f27556C = jSONObject3;
        this.f27558E = z;
        this.f27559F = z2;
        this.f27560G = z3;
        this.f27561H = z4;
        this.f27562I = z5;
        this.f27563J = z6;
        this.f27564K = z7;
        this.f27565L = i4;
        this.f27566M = i5;
        this.f27567N = z8;
        this.f27568O = str6;
        this.f27569P = new OmidSettings(jSONObject4);
        this.f27570Q = z9;
        this.f27571R = z10;
        this.f27572S = i6;
        this.f27573T = z11;
        this.f27574U = str5;
        this.f27575V = i7;
        this.f27576W = str4;
        this.f27577X = z12;
        this.f27578Y = zzarhVar;
        this.f27579Z = z13;
        this.f27581a0 = zzvpVar;
        this.f27583b0 = str3;
        this.f27585c0 = z14;
        this.f27587d0 = jSONObject5;
        this.f27557D = str2;
        this.f27589e0 = z15;
    }
}
