package p000;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import p000.q71;
import p000.w91;
/* renamed from: r71 */
/* loaded from: classes3-dex2jar.jar:r71.class */
public final class r71 {

    /* renamed from: a */
    public static final String f7874a = "r71";

    /* renamed from: b */
    public static SparseArray<Integer> f7875b;

    /* renamed from: e */
    public static final List<String> f7878e;

    /* renamed from: f */
    public static final List<String> f7879f;

    /* renamed from: h */
    public static final List<String> f7881h;

    /* renamed from: c */
    public static HashSet<String> f7876c = new HashSet<>();

    /* renamed from: d */
    public static final List<String> f7877d = Arrays.asList("callcontrol.all.consumable.5credits", "callcontrol.all.consumable.15credits", "callcontrol.all.consumable.30credits");

    /* renamed from: g */
    public static final List<String> f7880g = Arrays.asList(new String[0]);

    /* renamed from: i */
    public static final List<String> f7882i = Arrays.asList("callcontrol.all.managed.pro_lifetime", "callcontrol.all.managed.no_ads");

    /* renamed from: j */
    public static final List<String> f7883j = Arrays.asList("callcontrol.all.subscription.premium.monthly.1.0", "callcontrol.legacy.subscription.enhanced_caller_id.monthly.1.0");

    /* renamed from: r71$a */
    /* loaded from: classes3-dex2jar.jar:r71$a.class */
    public static final class EnumC1638a extends Enum<EnumC1638a> {

        /* renamed from: A */
        public static final EnumC1638a f7884A;

        /* renamed from: A0 */
        public static final EnumC1638a f7885A0;

        /* renamed from: B */
        public static final EnumC1638a f7886B;

        /* renamed from: B0 */
        public static final EnumC1638a f7887B0;

        /* renamed from: C */
        public static final EnumC1638a f7888C;

        /* renamed from: C0 */
        public static final EnumC1638a f7889C0;

        /* renamed from: D */
        public static final EnumC1638a f7890D;

        /* renamed from: D0 */
        public static final EnumC1638a f7891D0;

        /* renamed from: E */
        public static final EnumC1638a f7892E;

        /* renamed from: E0 */
        public static final EnumC1638a f7893E0;

        /* renamed from: F */
        public static final EnumC1638a f7894F;

        /* renamed from: F0 */
        public static final EnumC1638a f7895F0;

        /* renamed from: G */
        public static final EnumC1638a f7896G;

        /* renamed from: G0 */
        public static final EnumC1638a f7897G0;

        /* renamed from: H */
        public static final EnumC1638a f7898H;

        /* renamed from: H0 */
        public static final EnumC1638a f7899H0;

        /* renamed from: I */
        public static final EnumC1638a f7900I;

        /* renamed from: I0 */
        public static final EnumC1638a f7901I0;

        /* renamed from: J */
        public static final EnumC1638a f7902J;

        /* renamed from: J0 */
        public static final EnumC1638a f7903J0;

        /* renamed from: K */
        public static final EnumC1638a f7904K;

        /* renamed from: K0 */
        public static final EnumC1638a f7905K0;

        /* renamed from: L */
        public static final EnumC1638a f7906L;

        /* renamed from: L0 */
        public static final EnumC1638a f7907L0;

        /* renamed from: M */
        public static final EnumC1638a f7908M;

        /* renamed from: M0 */
        public static final EnumC1638a f7909M0;

        /* renamed from: N */
        public static final EnumC1638a f7910N;

        /* renamed from: N0 */
        public static final EnumC1638a f7911N0;

        /* renamed from: O */
        public static final EnumC1638a f7912O;

        /* renamed from: O0 */
        public static final EnumC1638a f7913O0;

        /* renamed from: P */
        public static final EnumC1638a f7914P;

        /* renamed from: P0 */
        public static final EnumC1638a f7915P0;

        /* renamed from: Q */
        public static final EnumC1638a f7916Q;

        /* renamed from: Q0 */
        public static final EnumC1638a f7917Q0;

        /* renamed from: R */
        public static final EnumC1638a f7918R;

        /* renamed from: R0 */
        public static final EnumC1638a f7919R0;

        /* renamed from: S */
        public static final EnumC1638a f7920S;

        /* renamed from: S0 */
        public static final EnumC1638a f7921S0;

        /* renamed from: T */
        public static final EnumC1638a f7922T;

        /* renamed from: T0 */
        public static final EnumC1638a f7923T0;

        /* renamed from: U */
        public static final EnumC1638a f7924U;

        /* renamed from: U0 */
        public static final EnumC1638a f7925U0;

        /* renamed from: V */
        public static final EnumC1638a f7926V;

        /* renamed from: V0 */
        public static final EnumC1638a f7927V0;

        /* renamed from: W */
        public static final EnumC1638a f7928W;

        /* renamed from: W0 */
        public static final EnumC1638a f7929W0;

        /* renamed from: X */
        public static final EnumC1638a f7930X;

        /* renamed from: X0 */
        public static final EnumC1638a f7931X0;

        /* renamed from: Y */
        public static final EnumC1638a f7932Y;

        /* renamed from: Y0 */
        public static final EnumC1638a f7933Y0;

        /* renamed from: Z */
        public static final EnumC1638a f7934Z;

        /* renamed from: Z0 */
        public static final EnumC1638a f7935Z0;

        /* renamed from: a0 */
        public static final EnumC1638a f7936a0;

        /* renamed from: a1 */
        public static final EnumC1638a f7937a1;

        /* renamed from: b0 */
        public static final EnumC1638a f7938b0;

        /* renamed from: b1 */
        public static final EnumC1638a f7939b1;

        /* renamed from: c0 */
        public static final EnumC1638a f7940c0;

        /* renamed from: c1 */
        public static final EnumC1638a f7941c1;

        /* renamed from: d */
        public static final EnumC1638a f7942d;

        /* renamed from: d0 */
        public static final EnumC1638a f7943d0;

        /* renamed from: d1 */
        public static final EnumC1638a f7944d1;

        /* renamed from: e0 */
        public static final EnumC1638a f7945e0;

        /* renamed from: e1 */
        public static final EnumC1638a f7946e1;

        /* renamed from: f */
        public static final EnumC1638a f7947f;

        /* renamed from: f0 */
        public static final EnumC1638a f7948f0;

        /* renamed from: f1 */
        public static final EnumC1638a f7949f1;

        /* renamed from: g */
        public static final EnumC1638a f7950g;

        /* renamed from: g0 */
        public static final EnumC1638a f7951g0;

        /* renamed from: g1 */
        public static final EnumC1638a f7952g1;

        /* renamed from: h */
        public static final EnumC1638a f7953h;

        /* renamed from: h0 */
        public static final EnumC1638a f7954h0;

        /* renamed from: h1 */
        public static final EnumC1638a f7955h1;

        /* renamed from: i0 */
        public static final EnumC1638a f7956i0;

        /* renamed from: i1 */
        public static final EnumC1638a f7957i1;

        /* renamed from: j */
        public static final EnumC1638a f7958j;

        /* renamed from: j0 */
        public static final EnumC1638a f7959j0;

        /* renamed from: j1 */
        public static final EnumC1638a f7960j1;

        /* renamed from: k */
        public static final EnumC1638a f7961k;

        /* renamed from: k0 */
        public static final EnumC1638a f7962k0;

        /* renamed from: k1 */
        public static final EnumC1638a f7963k1;

        /* renamed from: l */
        public static final EnumC1638a f7964l;

        /* renamed from: l0 */
        public static final EnumC1638a f7965l0;

        /* renamed from: l1 */
        public static final EnumC1638a f7966l1;

        /* renamed from: m */
        public static final EnumC1638a f7967m;

        /* renamed from: m0 */
        public static final EnumC1638a f7968m0;

        /* renamed from: m1 */
        public static final EnumC1638a f7969m1;

        /* renamed from: n */
        public static final EnumC1638a f7970n;

        /* renamed from: n0 */
        public static final EnumC1638a f7971n0;

        /* renamed from: n1 */
        public static final EnumC1638a f7972n1;

        /* renamed from: o */
        public static final EnumC1638a f7973o;

        /* renamed from: o0 */
        public static final EnumC1638a f7974o0;

        /* renamed from: o1 */
        public static final EnumC1638a f7975o1;

        /* renamed from: p */
        public static final EnumC1638a f7976p;

        /* renamed from: p0 */
        public static final EnumC1638a f7977p0;

        /* renamed from: p1 */
        public static final EnumC1638a f7978p1;

        /* renamed from: q */
        public static final EnumC1638a f7979q;

        /* renamed from: q0 */
        public static final EnumC1638a f7980q0;

        /* renamed from: q1 */
        public static final EnumC1638a f7981q1;

        /* renamed from: r */
        public static final EnumC1638a f7982r;

        /* renamed from: r0 */
        public static final EnumC1638a f7983r0;

        /* renamed from: r1 */
        public static final EnumC1638a f7984r1;

        /* renamed from: s */
        public static final EnumC1638a f7985s;

        /* renamed from: s0 */
        public static final EnumC1638a f7986s0;

        /* renamed from: s1 */
        public static final EnumC1638a f7987s1;

        /* renamed from: t */
        public static final EnumC1638a f7988t;

        /* renamed from: t0 */
        public static final EnumC1638a f7989t0;

        /* renamed from: t1 */
        public static final EnumC1638a f7990t1;

        /* renamed from: u */
        public static final EnumC1638a f7991u;

        /* renamed from: u0 */
        public static final EnumC1638a f7992u0;

        /* renamed from: u1 */
        public static final EnumC1638a f7993u1;

        /* renamed from: v */
        public static final EnumC1638a f7994v;

        /* renamed from: v0 */
        public static final EnumC1638a f7995v0;

        /* renamed from: v1 */
        public static final EnumC1638a f7996v1;

        /* renamed from: w */
        public static final EnumC1638a f7997w;

        /* renamed from: w0 */
        public static final EnumC1638a f7998w0;

        /* renamed from: w1 */
        public static final EnumC1638a f7999w1;

        /* renamed from: x */
        public static final EnumC1638a f8000x;

        /* renamed from: x0 */
        public static final EnumC1638a f8001x0;

        /* renamed from: x1 */
        public static final EnumC1638a f8002x1;

        /* renamed from: y */
        public static final EnumC1638a f8003y;

        /* renamed from: y0 */
        public static final EnumC1638a f8004y0;

        /* renamed from: y1 */
        public static final EnumC1638a f8005y1;

        /* renamed from: z */
        public static final EnumC1638a f8006z;

        /* renamed from: z0 */
        public static final EnumC1638a f8007z0;

        /* renamed from: z1 */
        public static final /* synthetic */ EnumC1638a[] f8008z1;

        /* renamed from: a */
        public String f8009a;

        /* renamed from: b */
        public Class<?> f8010b;

        /* renamed from: c */
        public Object f8011c;

        static {
            Boolean bool = Boolean.TRUE;
            f7942d = new EnumC1638a("GENERAL_ENABLE_CALL_CONTROL", 0, bool);
            f7947f = new EnumC1638a("GENERAL_USE_LEGACY_MODE", 1, Boolean.valueOf(Build.VERSION.SDK_INT < 23));
            f7950g = new EnumC1638a("GENERAL_USE_COMMUNITY_BLACKLIST", 2, bool);
            f7953h = new EnumC1638a("GENERAL_USE_REALTIME_CALLBLOCKING", 3, bool);
            Boolean bool2 = Boolean.FALSE;
            f7958j = new EnumC1638a("GENERAL_USE_CALLERID_OVERLAY", 4, bool2);
            f7961k = new EnumC1638a("GENERAL_USE_ENHANCED_CALLERID", 5, bool2);
            f7964l = new EnumC1638a("GENERAL_USE_CALLERID_OVERLAY_AS_POPUP", 6, bool2);
            f7967m = new EnumC1638a("GENERAL_USE_CALLERID_OVERLAY_POPUP_MARGIN", 7, 128);
            f7970n = new EnumC1638a("GENERAL_PREFERABLE_CALL_BLOCKING_MODE", 8, q71.EnumC1614a.VOICE_MAIL.m909g());
            f7973o = new EnumC1638a("GENERAL_PREFERABLE_CALL_BLOCKING_MODE_SECOND_LINE", 9, q71.EnumC1614a.IGNORE.m909g());
            f7976p = new EnumC1638a("GENERAL_SHOW_STATUS_NOTIFICATION_ICON", 10, bool);
            f7979q = new EnumC1638a("GENERAL_USE_ONLY_SERVICE_NOTIFICATION_ICON", 11, bool);
            f7982r = new EnumC1638a("GENERAL_NOTIFY_MISSED", 12, bool);
            f7985s = new EnumC1638a("GENERAL_NOTIFY_BLOCKED", 13, bool);
            f7988t = new EnumC1638a("GENERAL_RECEIVE_PUSH_NOTIFICATIONS", 14, bool);
            f7991u = new EnumC1638a("GENERAL_SHOW_MISSED_CALL_OVERLAY_NOTIFICATIONS", 15, bool);
            f7994v = new EnumC1638a("GENERAL_USE_CUSTOM_CALLSCREEN_UI", 16, bool2);
            f7997w = new EnumC1638a("GENERAL_CALLSCREEN_THEME", 17, "");
            f8000x = new EnumC1638a("BLOCKING_PRIVATE_CALLS", 18, bool);
            f8003y = new EnumC1638a("BLOCKING_UNKNOWN_CALLS", 19, bool);
            f8006z = new EnumC1638a("BLOCKING_FAKE_CALLER_ID", 20, bool);
            f7884A = new EnumC1638a("BLOCKING_NON_NUMERIC_SENDER_ID", 21, bool);
            f7886B = new EnumC1638a("BLOCKING_EMAILED_TEXT_MESSAGE", 22, bool2);
            f7888C = new EnumC1638a("BLOCKING_TOLL_FREE_NUMBERS", 23, bool2);
            f7890D = new EnumC1638a("BLOCKING_INTERNATIONAL_NUMBERS", 24, bool2);
            f7892E = new EnumC1638a("BLOCKING_INTERNATIONAL_NUMBERS_COUNTRY", 25, "");
            f7894F = new EnumC1638a("BLOCKING_CONFLICT_PRIORITY", 26, Integer.valueOf(q71.EnumC1616c.m907a().ordinal()));
            f7896G = new EnumC1638a("GENERAL_BLOCK_SIMILAR_NUMBERS", 27, "{}");
            f7898H = new EnumC1638a("MIGRATION_IS_SUCCESS", 28, bool2);
            f7900I = new EnumC1638a("INTERNAL_DID_SHOW_LEGACY_MODE_SUGGESTION", 29, bool2);
            f7902J = new EnumC1638a("INTERNAL_SILENCER_SAVED_STATE", 30, "");
            f7904K = new EnumC1638a("INTERNAL_PUSH_NOTIFICATION_TOKEN", 31, "");
            f7906L = new EnumC1638a("INTERNAL_FORCED_COMPATIBILITY_MODE", 32, "");
            f7908M = new EnumC1638a("INTERNAL_SHOULD_SORT_BY_LASTNAME", 33, bool2);
            f7910N = new EnumC1638a("INTERNAL_CAPABILITIES_MASK", 34, 519);
            f7912O = new EnumC1638a("INTERNAL_WIDGET_ACTION", 35, -1);
            f7914P = new EnumC1638a("INTERNAL_DEEP_LINK", 36, -1);
            f7916Q = new EnumC1638a("INTERNAL_CALLLOG_ALL_SHOW_BLOCKED", 37, bool);
            f7918R = new EnumC1638a("INTERNAL_CALLLOG_ALL_SHOW_CCHDEVICE", 38, bool);
            f7920S = new EnumC1638a("INTERNAL_IS_FIRST_RUN", 39, bool);
            f7922T = new EnumC1638a("INTERNAL_DID_SHOW_INTRO_VIDEO", 40, bool2);
            f7924U = new EnumC1638a("INTERNAL_IS_COMMUNITY_DOWNLOADED", 41, q71.EnumC1617d.UNKNOWN.m904a());
            f7926V = new EnumC1638a("INTERNAL_NEED_SYNC_CONTACT_TO_SERVER", 42, bool);
            f7928W = new EnumC1638a("INTERNAL_NEED_CHECK_DISCONNECT_MODE", 43, bool2);
            f7930X = new EnumC1638a("INTERNAL_NEED_ENABLE_CUSTOM_CALLSCREEN", 44, bool2);
            Boolean bool3 = Boolean.TRUE;
            f7932Y = new EnumC1638a("INTERNAL_IS_DISCONNECT_AVAILABLE", 45, bool3);
            f7934Z = new EnumC1638a("INTERNAL_OS_VERSION", 46, "");
            f7936a0 = new EnumC1638a("INTERNAL_RECENTCALL_OVERLAY_HELP_ISSHOWN", 47, bool2);
            f7938b0 = new EnumC1638a("INTERNAL_DIALER_OVERLAY_HELP_ISSHOWN", 48, bool2);
            f7940c0 = new EnumC1638a("INTERNAL_MAKE_COMPLAINT_ALERT_DONOTSHOW", 49, bool2);
            Boolean bool4 = Boolean.FALSE;
            f7943d0 = new EnumC1638a("INTERNAL_TO_BLOCKLIST_ALERT_DONOTSHOW", 50, bool4);
            f7945e0 = new EnumC1638a("INTERNAL_TO_ALLOWEDIST_ALERT_DONOTSHOW", 51, bool4);
            f7948f0 = new EnumC1638a("INTERNAL_TO_WHITELIST_ALERT_DONOTSHOW", 52, bool4);
            f7951g0 = new EnumC1638a("INTERNAL_REAL_NAME_LOOKUP_EXPLANATION_SHOWN", 53, bool4);
            f7954h0 = new EnumC1638a("INTERNAL_CHECKBOX_KEEP_SUGGESTION", 54, bool4);
            f7956i0 = new EnumC1638a("INTERNAL_LAST_DB_UPDATE_SIZE", 55, -1);
            f7959j0 = new EnumC1638a("INTERNAL_TOS_SHOW_MIN_VERSION_CODE", 56, 0);
            f7962k0 = new EnumC1638a("INTERNAL_CONTACTS_SYNC_VERSIONS_AVAILABLE", 57, bool4);
            f7965l0 = new EnumC1638a("INTERNAL_PREVIOUS_MESSAGING_APP", 58, "");
            f7968m0 = new EnumC1638a("INTERNAL_PREVIOUS_PHONE_APP", 59, "");
            f7971n0 = new EnumC1638a("INTERNAL_LAST_SELECTED_TAB", 60, -1);
            f7974o0 = new EnumC1638a("INTERNAL_PROMT_DELETE_MESSAGE", 61, bool3);
            f7977p0 = new EnumC1638a("INTERNAL_REVIEW_PROMPT_SHOWN", 62, 0);
            f7980q0 = new EnumC1638a("INTERNAL_SHOWED_INTERSTITIAL_TIMEOUT", 63, 0L);
            f7983r0 = new EnumC1638a("INTERNAL_SHOWED_ATTORNEY_POPUP_TIMEOUT", 64, 0L);
            f7986s0 = new EnumC1638a("INTERNAL_SHOWED_ENCHANCED_CALLERID_PROMO_TIMEOUT", 65, 0L);
            f7989t0 = new EnumC1638a("INTERNAL_SHOWED_ENCHANCED_CALLERID_PROMO_TIMES", 66, 0);
            f7992u0 = new EnumC1638a("INTERNAL_CONTACTS_MODIFIEDAT", 67, 0L);
            f7995v0 = new EnumC1638a("INTERNAL_RULES_MODIFIEDAT", 68, 0L);
            f7998w0 = new EnumC1638a("INTERNAL_SETTINGS_MODIFIEDAT", 69, 0L);
            f8001x0 = new EnumC1638a("INTERNAL_MESSAGES_FONT_SIZE", 70, Float.valueOf(14.0f));
            f8004y0 = new EnumC1638a("INTERNAL_DEFAULT_MESSAGE_APP", 71, "");
            f8007z0 = new EnumC1638a("INTERNAL_DO_NOT_SHOW_PROMOTE_MSG_APP_AGAIN", 72, bool4);
            f7885A0 = new EnumC1638a("INTERNAL_DO_NOT_SHOW_PROMOTE_CCH_APP_AGAIN", 73, bool4);
            f7887B0 = new EnumC1638a("INTERNAL_PROMOTE_CCH_APP_WAS_SHOWN_ON_MAIN", 74, bool4);
            f7889C0 = new EnumC1638a("INTERNAL_PROMOTE_CCH_SHOWN_COUNT", 75, 0);
            f7891D0 = new EnumC1638a("INTERNAL_ADVERTISING_ID", 76, "");
            f7893E0 = new EnumC1638a("INTERNAL_DEVICE_CLEAN_IDENTIFICATION", 77, "");
            f7895F0 = new EnumC1638a("INTERNAL_DEVICE_OLD_IDENTIFICATION", 78, "");
            f7897G0 = new EnumC1638a("INTERNAL_NEED_CHANGE_IDENTIFICATION", 79, bool4);
            f7899H0 = new EnumC1638a("INTERNAL_NEED_USE_ADVERTISING_ID", 80, bool4);
            f7901I0 = new EnumC1638a("INTERNAL_BLOCK_ANY_SERVER_REQUEST", 81, bool4);
            f7903J0 = new EnumC1638a("INTERNAL_USE_GET_CALLER_METHOD", 82, bool4);
            f7905K0 = new EnumC1638a("INTERNAL_USE_REAL_TIME_BLOCKING_METHOD", 83, bool4);
            f7907L0 = new EnumC1638a("INTERNAL_APP_UPDATE_STATUS", 84, bool3);
            f7909M0 = new EnumC1638a("IS_PREMIUM_SERVICE_ENABLED", 85, Boolean.valueOf(!q71.C1619f.m897d()));
            f7911N0 = new EnumC1638a("IS_ENHANCED_CALLER_ID_ENABLED", 86, Boolean.valueOf(!q71.C1619f.m897d()));
            f7913O0 = new EnumC1638a("IS_TRIAL_ENABLED", 87, Boolean.valueOf(!q71.C1619f.m897d()));
            f7915P0 = new EnumC1638a("INTERNAL_IS_ADS_ALLOWED", 88, Boolean.valueOf(q71.C1619f.m897d()));
            f7917Q0 = new EnumC1638a("INTERNAL_TRIAL_EXPIRATION_DATE", 89, 0L);
            f7919R0 = new EnumC1638a("INTERNAL_USER_CREATED_DATE", 90, 0L);
            f7921S0 = new EnumC1638a("INTERNAL_VERSION_STATUS_MASK", 91, 0);
            f7923T0 = new EnumC1638a("INTERNAL_LAST_CONTENT_BLOCKED", 92, -1);
            f7925U0 = new EnumC1638a("INTERNAL_LAST_CONTENT_MISSED", 93, -1);
            f7927V0 = new EnumC1638a("COMMUNITY_CALL_TYPES", 94, "[{\"id\":\"18\",\"name\":\"Scam\",\"reports\":6239,\"spam\":true},{\"id\":\"10\",\"name\":\"Telemarketing\",\"reports\":3648,\"spam\":true},{\"id\":\"27\",\"name\":\"Phishing\",\"reports\":1483,\"spam\":true},{\"id\":\"11\",\"name\":\"Collection Agency\",\"reports\":1368,\"spam\":true},{\"id\":\"26\",\"name\":\"RoboCall\",\"reports\":931,\"spam\":true},{\"id\":\"14\",\"name\":\"Prank Call\",\"reports\":513,\"spam\":true},{\"id\":\"17\",\"name\":\"Other Commercial\",\"reports\":280,\"spam\":true},{\"id\":\"24\",\"name\":\"Spam Text\",\"reports\":189,\"spam\":true},{\"id\":\"13\",\"name\":\"Surveyor\",\"reports\":108,\"spam\":true},{\"id\":\"21\",\"name\":\"Reminder \\/ Notification Call\",\"reports\":100,\"spam\":true},{\"id\":\"12\",\"name\":\"Political\",\"reports\":97,\"spam\":true},{\"id\":\"16\",\"name\":\"Fund Raiser\",\"reports\":83,\"spam\":true},{\"id\":\"22\",\"name\":\"Junk Fax\",\"reports\":31,\"spam\":true},{\"id\":\"20\",\"name\":\"Business\",\"reports\":6,\"spam\":false},{\"id\":\"28\",\"name\":\"Person\",\"reports\":4,\"spam\":false},{\"id\":\"19\",\"name\":\"Pay Phone\",\"reports\":1,\"spam\":true},{\"id\":\"23\",\"name\":\"Fax Machine\",\"reports\":0,\"spam\":true}]");
            f7929W0 = new EnumC1638a("COMMUNITY_STATS", 95, "{\"callers_blocked\":0,\"callers_could_be_blocked\":0,\"calltype_blocked\":0,\"calltype_category_blocked\":Scam,\"reports\":\"0\",\"minutes\":0}");
            f7931X0 = new EnumC1638a("INTERNAL_LAST_COMMUNITY_SYNC_TIME", 96, 0L);
            f7933Y0 = new EnumC1638a("INTERNAL_LAST_RECENTS_SYNC_TIME", 97, 0L);
            f7935Z0 = new EnumC1638a("INTERNAL_LAST_SYNC_TIME", 98, 0L);
            f7937a1 = new EnumC1638a("INTERNAL_LAST_BLOCKED_APPS_CHECKED_TIME", 99, 0L);
            f7939b1 = new EnumC1638a("INTERNAL_LAST_SPAM_CARRIER_LIST_CHECKED_TIME", 100, 0L);
            f7941c1 = new EnumC1638a("INTERNAL_LOOKUPS_LEFT", 101, 0);
            f7944d1 = new EnumC1638a("INTERNAL_WHATS_NEW_LAST_VERSION", 102, -1);
            f7946e1 = new EnumC1638a("INTERNAL_APPLICATION_LANGUAGE", 103, "");
            f7949f1 = new EnumC1638a("INTERNAL_CHOSEN_CONTACTS_GROUPS", 104, "");
            f7952g1 = new EnumC1638a("INTERNAL_CHOSEN_COMMUNITY_IDS", 105, "");
            f7955h1 = new EnumC1638a("INTERNAL_NEAREST_AREA_CODES", 106, "");
            f7957i1 = new EnumC1638a("INTERNAL_LOGIN_WITH_TOKEN", 107, "");
            f7960j1 = new EnumC1638a("INTERNAL_EVERYCALLER_ACCOUNT", 108, "");
            f7963k1 = new EnumC1638a("INTERNAL_CALLLOGS_SENT_DATE", 109, Long.valueOf(System.currentTimeMillis()));
            f7966l1 = new EnumC1638a("INTERNAL_CCH_SERVICE_LIST", 110, "[]");
            f7969m1 = new EnumC1638a("INTERNAL_SYNC_CONTACTS_PER_PACKAGE", 111, -1);
            f7972n1 = new EnumC1638a("INTERNAL_SERVER_REQUEST_MAX_SIZE", 112, 0L);
            Boolean bool5 = Boolean.FALSE;
            f7975o1 = new EnumC1638a("INTERNAL_SHOW_TRIAL_ADS", 113, bool5);
            f7978p1 = new EnumC1638a("INTERNAL_SHOW_TRIAL_PUSH_NOTIFICATIONS", 114, bool5);
            f7981q1 = new EnumC1638a("INTERNAL_SHOW_INTERSTITIAL_DELAY_MS", 115, 120000L);
            f7984r1 = new EnumC1638a("INTERNAL_SHOW_ATTORNEY_POPUP_DELAY_MS", 116, 0L);
            f7987s1 = new EnumC1638a("INTERNAL_DO_NOT_SHOW_ATTORNEY_AGAIN", 117, bool5);
            f7990t1 = new EnumC1638a("INTERNAL_SHOW_PROMO_POPUP", 118, bool5);
            f7993u1 = new EnumC1638a("INTERNAL_SHOW_PROMO_POPUP_TIME", 119, -1L);
            f7996v1 = new EnumC1638a("INTERNAL_COMMUNITY_URL", 120, "https://cb.callcontrol.com/");
            f7999w1 = new EnumC1638a("INTERNAL_COMMUNITY_SYNC_INTERVAL_MS", 121, 3600000L);
            f8002x1 = new EnumC1638a("INTERNAL_COMMUNITY_SYNC_PROTOCOL", 122, 0);
            f8005y1 = new EnumC1638a("INTERNAL_COMMUNITY_DB_VERSION", 123, -1);
            f8008z1 = new EnumC1638a[]{f7942d, f7947f, f7950g, f7953h, f7958j, f7961k, f7964l, f7967m, f7970n, f7973o, f7976p, f7979q, f7982r, f7985s, f7988t, f7991u, f7994v, f7997w, f8000x, f8003y, f8006z, f7884A, f7886B, f7888C, f7890D, f7892E, f7894F, f7896G, f7898H, f7900I, f7902J, f7904K, f7906L, f7908M, f7910N, f7912O, f7914P, f7916Q, f7918R, f7920S, f7922T, f7924U, f7926V, f7928W, f7930X, f7932Y, f7934Z, f7936a0, f7938b0, f7940c0, f7943d0, f7945e0, f7948f0, f7951g0, f7954h0, f7956i0, f7959j0, f7962k0, f7965l0, f7968m0, f7971n0, f7974o0, f7977p0, f7980q0, f7983r0, f7986s0, f7989t0, f7992u0, f7995v0, f7998w0, f8001x0, f8004y0, f8007z0, f7885A0, f7887B0, f7889C0, f7891D0, f7893E0, f7895F0, f7897G0, f7899H0, f7901I0, f7903J0, f7905K0, f7907L0, f7909M0, f7911N0, f7913O0, f7915P0, f7917Q0, f7919R0, f7921S0, f7923T0, f7925U0, f7927V0, f7929W0, f7931X0, f7933Y0, f7935Z0, f7937a1, f7939b1, f7941c1, f7944d1, f7946e1, f7949f1, f7952g1, f7955h1, f7957i1, f7960j1, f7963k1, f7966l1, f7969m1, f7972n1, f7975o1, f7978p1, f7981q1, f7984r1, f7987s1, f7990t1, f7993u1, f7996v1, f7999w1, f8002x1, f8005y1};
        }

        public EnumC1638a(String str, int i, Object obj) {
            this(str, i, null, obj);
        }

        public EnumC1638a(String str, int i, String str2, Class cls, Object obj) {
            super(str, i);
            if (cls != null) {
                this.f8009a = TextUtils.isEmpty(str2) ? toString() : str2;
                this.f8010b = cls;
                this.f8011c = obj;
                return;
            }
            throw new IllegalArgumentException("Parameter " + str2 + " needs to have class specifier in order to be initialized with default null value");
        }

        public EnumC1638a(String str, int i, String str2, Object obj) {
            this(str, i, str2, obj != null ? obj.getClass() : null, obj);
        }

        /* renamed from: d */
        public static String m692d() {
            EnumC1638a[] values;
            String str = "";
            for (EnumC1638a enumC1638a : values()) {
                str = str + enumC1638a.m680p();
            }
            return ka1.m1410n(str);
        }

        /* renamed from: h */
        public static String m688h() {
            EnumC1638a[] values;
            String str = "";
            for (EnumC1638a enumC1638a : values()) {
                if (enumC1638a.m690f().contains("BLOCKING_") || enumC1638a.m690f().contains("GENERAL_")) {
                    str = str + enumC1638a.m680p();
                }
            }
            return ka1.m1410n(str);
        }

        public static EnumC1638a valueOf(String str) {
            return (EnumC1638a) Enum.valueOf(EnumC1638a.class, str);
        }

        public static EnumC1638a[] values() {
            return (EnumC1638a[]) f8008z1.clone();
        }

        /* renamed from: a */
        public boolean m695a() {
            try {
                SharedPreferences m698x = r71.m698x();
                String str = this.f8009a;
                Boolean bool = (Boolean) this.f8011c;
                r71.m723M(this, bool);
                return m698x.getBoolean(str, bool.booleanValue());
            } catch (Throwable th) {
                return ((Boolean) this.f8011c).booleanValue();
            }
        }

        /* renamed from: b */
        public boolean m694b() {
            return ((Boolean) this.f8011c).booleanValue();
        }

        /* renamed from: c */
        public float m693c() {
            try {
                SharedPreferences m698x = r71.m698x();
                String str = this.f8009a;
                Float f = (Float) this.f8011c;
                r71.m723M(this, f);
                return m698x.getFloat(str, f.floatValue());
            } catch (Throwable th) {
                return ((Float) this.f8011c).floatValue();
            }
        }

        /* renamed from: e */
        public int m691e() {
            try {
                SharedPreferences m698x = r71.m698x();
                String str = this.f8009a;
                Integer num = (Integer) this.f8011c;
                r71.m723M(this, num);
                return m698x.getInt(str, num.intValue());
            } catch (Throwable th) {
                return ((Integer) this.f8011c).intValue();
            }
        }

        /* renamed from: f */
        public String m690f() {
            return this.f8009a;
        }

        /* renamed from: g */
        public long m689g() {
            try {
                SharedPreferences m698x = r71.m698x();
                String str = this.f8009a;
                Long l = (Long) this.f8011c;
                r71.m723M(this, l);
                return m698x.getLong(str, l.longValue());
            } catch (Throwable th) {
                return ((Long) this.f8011c).longValue();
            }
        }

        /* renamed from: i */
        public String m687i() {
            try {
                SharedPreferences m698x = r71.m698x();
                String str = this.f8009a;
                String str2 = (String) this.f8011c;
                r71.m723M(this, str2);
                return m698x.getString(str, str2);
            } catch (Throwable th) {
                return (String) this.f8011c;
            }
        }

        /* renamed from: j */
        public Class<?> m686j() {
            return this.f8010b;
        }

        /* renamed from: k */
        public void m685k(Boolean bool) {
            r71.m722N(this, bool).putBoolean(this.f8009a, bool.booleanValue()).apply();
        }

        /* renamed from: l */
        public void m684l(Float f) {
            r71.m722N(this, f).putFloat(this.f8009a, f.floatValue()).apply();
        }

        /* renamed from: m */
        public void m683m(Integer num) {
            r71.m722N(this, num).putInt(this.f8009a, num.intValue()).apply();
        }

        /* renamed from: n */
        public void m682n(Long l) {
            r71.m722N(this, l).putLong(this.f8009a, l.longValue()).apply();
        }

        /* renamed from: o */
        public void m681o(String str) {
            r71.m722N(this, str).putString(this.f8009a, str).apply();
        }

        /* renamed from: p */
        public Object m680p() {
            Class<?> cls = this.f8010b;
            return cls == Boolean.class ? Boolean.valueOf(m695a()) : cls == Integer.class ? Integer.valueOf(m691e()) : cls == Float.class ? Float.valueOf(m693c()) : cls == Long.class ? Long.valueOf(m689g()) : cls == String.class ? m687i() : "Undefined";
        }
    }

    /* renamed from: r71$b */
    /* loaded from: classes3-dex2jar.jar:r71$b.class */
    public static class C1639b extends ea1 {

        /* renamed from: e */
        public static C1639b f8012e;

        public C1639b() {
            m678g();
        }

        /* renamed from: f */
        public static C1639b m679f() {
            C1639b c1639b;
            synchronized (C1639b.class) {
                try {
                    if (f8012e == null) {
                        f8012e = new C1639b();
                    }
                    c1639b = f8012e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c1639b;
        }

        /* renamed from: g */
        public void m678g() {
            synchronized (this) {
                m2186b(EnumC1638a.f7896G.m687i());
            }
        }

        /* renamed from: h */
        public void m677h() {
            synchronized (this) {
                if (this.f6315b == null) {
                    this.f6314a = false;
                }
                String m2183e = m2183e();
                EnumC1638a enumC1638a = EnumC1638a.f7896G;
                if (m2183e.equalsIgnoreCase(enumC1638a.m687i())) {
                    return;
                }
                enumC1638a.m681o(m2183e);
                o71.m1155d();
            }
        }
    }

    static {
        List<String> asList = Arrays.asList("callcontrol.all.subscription.premium.quarterly.1.0", "callcontrol.all.subscription.premium.annual.1.0");
        f7878e = asList;
        List<String> asList2 = Arrays.asList("callcontrol.legacy.subscription.enhanced_caller_id.quarterly.1.0", "callcontrol.legacy.subscription.enhanced_caller_id.yearly.1.0");
        f7879f = asList2;
        f7881h = ka1.m1423a(asList, asList2);
    }

    /* renamed from: A */
    public static boolean m735A() {
        return (EnumC1638a.f7921S0.m691e() & 3) == 0;
    }

    /* renamed from: B */
    public static boolean m734B() {
        boolean z = true;
        if ((EnumC1638a.f7921S0.m691e() & 1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: C */
    public static void m733C() {
        EnumC1638a.f7959j0.m683m(fa1.m1837m());
    }

    /* renamed from: D */
    public static void m732D(q71.EnumC1618e enumC1618e) {
        m731E(enumC1618e, true);
        m731E(enumC1618e, false);
    }

    /* renamed from: E */
    public static void m731E(q71.EnumC1618e enumC1618e, boolean z) {
        if (enumC1618e == null) {
            return;
        }
        EnumSet<q71.EnumC1618e> m704r = m704r(z);
        m704r.remove(enumC1618e);
        m703s(z).m683m(Integer.valueOf(m704r.size() > 0 ? q71.EnumC1618e.m903a(m704r).intValue() : -1));
    }

    /* renamed from: F */
    public static void m730F(q71.EnumC1617d enumC1617d) {
        EnumC1638a.f7924U.m683m(enumC1617d.m904a());
    }

    /* renamed from: G */
    public static void m729G(q71.EnumC1618e enumC1618e, boolean z) {
        if (enumC1618e == null) {
            return;
        }
        EnumSet<q71.EnumC1618e> m704r = m704r(z);
        m704r.add(enumC1618e);
        m703s(z).m683m(Integer.valueOf(m704r.size() > 0 ? q71.EnumC1618e.m903a(m704r).intValue() : -1));
    }

    /* renamed from: H */
    public static void m728H(String[] strArr) {
        EnumC1638a.f7955h1.m681o(TextUtils.join(",", strArr));
    }

    /* renamed from: I */
    public static void m727I(long j) {
        EnumC1638a.f7917Q0.m682n(Long.valueOf(j));
    }

    /* renamed from: J */
    public static void m726J(long j) {
        EnumC1638a.f7919R0.m682n(Long.valueOf(j));
    }

    /* renamed from: K */
    public static void m725K(int i) {
        EnumC1638a enumC1638a = EnumC1638a.f7921S0;
        int m691e = enumC1638a.m691e();
        enumC1638a.m683m(Integer.valueOf(i));
        if ((m691e & 1) < (i & 1)) {
            w91.m276b(null, w91.EnumC1708a.VERSION_UPGRADE_FORCED);
        }
        if ((m691e & 2) < (i & 2)) {
            w91.m276b(null, w91.EnumC1708a.VERSION_UPGRADE_SUGGESTED);
        }
    }

    /* renamed from: L */
    public static boolean m724L() {
        int m691e = EnumC1638a.f7959j0.m691e();
        boolean z = true;
        if (m691e == 1 || fa1.m1837m().intValue() <= m691e) {
            z = false;
        }
        return z;
    }

    /* renamed from: M */
    public static <T> T m723M(EnumC1638a enumC1638a, T t) {
        if (t == null || enumC1638a.m686j() == t.getClass()) {
            return t;
        }
        throw new IllegalArgumentException(enumC1638a + " has type " + enumC1638a.m686j().getSimpleName() + " but " + t.getClass().getSimpleName() + " requested");
    }

    /* renamed from: N */
    public static <T> SharedPreferences.Editor m722N(EnumC1638a enumC1638a, T t) {
        if (t == null || enumC1638a.m686j() == t.getClass()) {
            return m698x().edit();
        }
        throw new IllegalArgumentException(enumC1638a + " has type " + enumC1638a.m686j().getSimpleName() + ". Tried to put " + t.getClass().getSimpleName());
    }

    /* renamed from: d */
    public static void m718d(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(EnumC1638a.f7960j1.m687i().trim().split(",")));
        do {
        } while (linkedHashSet.remove(""));
        linkedHashSet.add(str);
        EnumC1638a.f7960j1.m681o(TextUtils.join(",", linkedHashSet));
    }

    /* renamed from: e */
    public static void m717e(String str) {
        HashSet<String> hashSet = f7876c;
        if (hashSet == null) {
            return;
        }
        hashSet.add(str);
    }

    /* renamed from: f */
    public static boolean m716f(q71.EnumC1620g enumC1620g) {
        return EnumC1638a.f7909M0.m695a() || x81.m159N(enumC1620g) < 25;
    }

    /* renamed from: g */
    public static boolean m715g() {
        return EnumC1638a.f7958j.m695a();
    }

    /* renamed from: h */
    public static boolean m714h() {
        return !EnumC1638a.f7913O0.m695a() && EnumC1638a.f7909M0.m695a() && EnumC1638a.f7911N0.m695a();
    }

    /* renamed from: i */
    public static boolean m713i(String str) {
        HashSet<String> hashSet;
        if (TextUtils.isEmpty(str) || (hashSet = f7876c) == null) {
            return false;
        }
        return hashSet.contains(str);
    }

    /* renamed from: j */
    public static void m712j() {
        f7876c.clear();
    }

    /* renamed from: k */
    public static void m711k() {
        f7875b = null;
    }

    /* renamed from: l */
    public static void m710l() {
        m698x().edit().clear().apply();
    }

    /* renamed from: m */
    public static String[] m709m() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(EnumC1638a.f7960j1.m687i().trim().split(",")));
        do {
        } while (linkedHashSet.remove(""));
        return linkedHashSet.isEmpty() ? new String[0] : (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    /* renamed from: n */
    public static SparseArray<i71> m708n() {
        return m707o(true);
    }

    /* renamed from: o */
    public static SparseArray<i71> m707o(boolean z) {
        SparseArray<i71> sparseArray = new SparseArray<>();
        String m687i = EnumC1638a.f7927V0.m687i();
        if (TextUtils.isEmpty(m687i)) {
            return sparseArray;
        }
        try {
            JSONArray jSONArray = new JSONArray(m687i);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                i71 i71Var = new i71(jSONArray.optJSONObject(i));
                if (i71Var.f6745c.booleanValue() == z) {
                    sparseArray.put(i71Var.f6744b.intValue(), i71Var);
                }
            }
        } catch (JSONException e) {
            j91.m1505k(f7874a, e.getMessage());
        }
        return sparseArray;
    }

    /* renamed from: p */
    public static int m706p() {
        return Math.max((int) Math.ceil(((EnumC1638a.f7917Q0.m689g() * 1000) - System.currentTimeMillis()) / 86400000), 0);
    }

    /* renamed from: q */
    public static String m705q() {
        String str;
        try {
            str = Resources.getSystem().getConfiguration().locale.getCountry().toLowerCase();
        } catch (Throwable th) {
            str = null;
        }
        return (str == null || str.trim().length() != 2) ? "us" : str;
    }

    /* renamed from: r */
    public static EnumSet<q71.EnumC1618e> m704r(boolean z) {
        int m691e = m703s(z).m691e();
        return m691e == -1 ? EnumSet.noneOf(q71.EnumC1618e.class) : q71.EnumC1618e.m901c(Integer.valueOf(m691e));
    }

    /* renamed from: s */
    public static EnumC1638a m703s(boolean z) {
        return z ? EnumC1638a.f7923T0 : EnumC1638a.f7925U0;
    }

    /* renamed from: t */
    public static String m702t() {
        EnumC1638a enumC1638a = EnumC1638a.f7957i1;
        String m687i = enumC1638a.m687i();
        String str = m687i;
        if (TextUtils.isEmpty(m687i)) {
            str = ka1.m1410n("sosiska" + b91.m5727g() + System.currentTimeMillis());
            enumC1638a.m681o(str);
        }
        return str;
    }

    /* renamed from: u */
    public static String[] m701u() {
        String m687i = EnumC1638a.f7955h1.m687i();
        return TextUtils.isEmpty(m687i) ? new String[0] : TextUtils.split(m687i, ",");
    }

    /* renamed from: v */
    public static SparseArray<Integer> m700v() {
        SparseArray<Integer> sparseArray = f7875b;
        if (sparseArray != null) {
            return sparseArray;
        }
        String[] split = EnumC1638a.f7952g1.m687i().trim().split(";");
        if (split.length > 0) {
            f7875b = new SparseArray<>();
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    f7875b.put(Integer.parseInt(str), Integer.valueOf(Integer.parseInt(str)));
                }
            }
        }
        return f7875b;
    }

    /* renamed from: w */
    public static String m699w() {
        return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsdRiQpFz4lF0UxX3zEydj8aUypa8zALJ5M5GjPDmpdCiGCVC9Jyu1J5U9EarAA45M8hscoptG89d1zdjWC2vs85Ui1H5RrQxh91A63A2nqbQFRYAdV/E37BmMQdnAnuAfFdamRwMBbqPepojPJrj1jwX2JnkGNv7vydSmAcbpgQpP02mZgkbcxStO3JXM9upJQSda2zRiU1urejv5LoBXPYG9gzRRiupBStcwzEX7pbq+USb9waTwsphtLmu8EZcX68W3Pv86vauC4MCTO0EgPY0fPBQZbQ4gttI0SEXRJIZvxa6LJpUmEtaOM94LSQpHA7VvSIjVTLiuMHTMFiDgQIDAQAB";
    }

    /* renamed from: x */
    public static SharedPreferences m698x() {
        return fa1.m1840j().getSharedPreferences("settings", 0);
    }

    /* renamed from: y */
    public static boolean m697y(q71.EnumC1618e enumC1618e) {
        boolean z = false;
        if (m696z(enumC1618e, false) || m696z(enumC1618e, true)) {
            z = true;
        }
        return z;
    }

    /* renamed from: z */
    public static boolean m696z(q71.EnumC1618e enumC1618e, boolean z) {
        return m704r(z).contains(enumC1618e);
    }
}
