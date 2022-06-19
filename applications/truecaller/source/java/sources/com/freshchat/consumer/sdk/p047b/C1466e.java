package com.freshchat.consumer.sdk.p047b;

import android.content.Context;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.beans.FCLocale;
import com.freshchat.consumer.sdk.beans.config.DefaultAccountConfig;
import com.freshchat.consumer.sdk.beans.config.DefaultRemoteConfig;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.freshchat.consumer.sdk.exception.MethodNotAllowedException;
import com.freshchat.consumer.sdk.p057j.AbstractC1714i;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1704d;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.p057j.C1720o;
import java.util.Collection;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.b.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/e.class */
public class C1466e extends AbstractC1714i<C1466e> {

    /* renamed from: dK */
    private static volatile C1466e f4074dK;

    /* renamed from: dL */
    private static final String[] f4075dL = {"CONFIG_DOMAIN", "CONFIG_APP_ID", "CONFIG_APP_KEY", "CONFIG_VOICE_MESSAGING_ENABLED", "CONFIG_GALLERY_SELECTION_ENABLED", "CONFIG_LINK_REGEX", "CONFIG_LINK_SCHEME", "CONFIG_NOTIFICATION_PRIORITY", "CONFIG_NOTIFICATION_IMPORTANCE", "CONFIG_NOTIFICATION_SMALL_ICON", "CONFIG_NOTIFICATION_LARGE_ICON", "CONFIG_NOTIFICATION_SOUND_ENABLED", "CONFIG_NOTIFICATION_SOUND_URI", "CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION", "SOLUTIONS_LAST_REQUESTED_TIME", "SOLUTIONS_LAST_MODIFIED_AT", "SOLUTIONS_LAST_RECEIVED_LOCALE", "SOLUTIONS_LAST_REQUESTED_LOCALE", "REMOTE_CONFIG_LAST_UPDATED_TIME", "CONFIG_TEAM_MEMBER_INFO_VISIBLE", "CONFIG_CAMERA_CAPTURE_ENABLED", "CONFIG_AUDIO_STREAM_SPEAKERPHONE", "CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK", "RC_IS_ACCOUNT_ACTIVE", "RC_ENABLED_FEATURES_JSON", "RC_CONFIG_FETCH_INTERVAL", "RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL", "CONFIG_RC_SESSION_TIMEOUT_INTERVAL", "RC_ACTIVE_CONV_WINDOW", "RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO", "RC_ACTIVE_CONV_MIN_FETCH_INTERVAL", "RC_ACTIVE_CONV_MAX_FETCH_INTERVAL", "RC_MSG_FETCH_INTERVAL_NORMAL", "RC_MSG_FETCH_INTERVAL_LAIDBACK", "RC_FAQ_FETCH_INTERVAL_NORMAL", "RC_FAQ_FETCH_INTERVAL_LAIDBACK", "RC_CHANNELS_FETCH_INTERVAL_NORMAL", "RC_CHANNELS_FETCH_INTERVAL_LAIDBACK", "RC_CSAT_AUTO_EXPIRE", "RC_CSAT_AUTO_EXPIRY_INTERVAL", "RC_MESSAGE_MASKING_CONFIG", "RC_UNSUPPORTED_FRAGMENT_CONFIG", "CONFIG_LAST_SESSION_END_TIME", "RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD", "RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY", "RC_USER_EVENT_BATCH_UPLOAD_COUNT", "RC_USER_EVENT_TRIGGER_UPLOAD_COUNT", "RC_USER_EVENT_MAX_PROPERTIES_LIMIT", "RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME ", "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME", "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE", "UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME", "RC_LIVE_TRANSLATION_ENABLED", "RC_ACCOUNT_FAQ_API_VERSION", "HAS_BUSINESS_HOURS_DETAILS_LOADED"};

    /* renamed from: dM */
    private static final String[] f4076dM = {"CONFIG_USER_FIRST_NAME", "CONFIG_USER_LAST_NAME", "CONFIG_USER_EMAIL", "CONFIG_USER_ALIAS", "CONFIG_USER_PHONE", "CONFIG_USER_PHONE_COUNTRY", "CONFIG_USER_RESTORE_ID", "CONFIG_USER_LOCALE", "CONFIG_USER_REGISTERED", "CONFIG_USER_EXTERNAL_ID", "CONFIG_USER_JWT_ID_TOKEN", "CONFIG_USER_JWT_ID_TOKEN_STATUS", "MESSAGES_LAST_UPDATED_TIME", "CONFIG_VOTED_ARTICLES", "PrevSessionEndTime", "USER_DAU_TRACKING_LAST_UPDATED_TIME", "SDK_VERSION_CODE", "CONFIG_LAST_APP_VER_CODE", "CHANNELS_LAST_REQUESTED_TIME", "CHANNELS_LAST_MODIFIED_AT", "CHANNELS_LAST_RECEIVED_LOCALE", "CHANNELS_LAST_REQUESTED_LOCALE", "FRESHCHAT_USER_EVENTS_DATA", "FRESHCHAT_USER_EVENTS_UPLOADING_DATA", "FRESHCHAT_USER_EVENTS_DAILY_COUNTER", "FRESHCHAT_LAST_EVENT_LOGGED_TIME", "CONFIG_USER_CALENDAR_EMAIL"};
    private final Context context;

    private C1466e(Context context) {
        super(context);
        this.context = context;
    }

    /* renamed from: bF */
    private void m40988bF() {
        remove("CHANNELS_LAST_REQUESTED_LOCALE");
    }

    /* renamed from: bw */
    private void m40952bw() {
        remove("SOLUTIONS_LAST_REQUESTED_LOCALE");
    }

    /* renamed from: by */
    private void m40950by() {
        remove("SOLUTIONS_LAST_RECEIVED_LOCALE");
    }

    /* renamed from: i */
    public static C1466e m40905i(Context context) {
        if (f4074dK == null || !f4074dK.isReady()) {
            synchronized (C1466e.class) {
                try {
                    if (f4074dK == null) {
                        f4074dK = new C1466e(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4074dK;
    }

    /* renamed from: A */
    public void m41016A(String str) {
        putString("SOLUTIONS_LAST_REQUESTED_LOCALE", str);
    }

    /* renamed from: B */
    public void m41015B(String str) {
        putString("CHANNELS_LAST_MODIFIED_AT", str);
    }

    /* renamed from: C */
    public void m41014C(String str) {
        putString("CHANNELS_LAST_RECEIVED_LOCALE", str);
    }

    /* renamed from: D */
    public void m41013D(int i) {
        putInt("CONFIG_NOTIFICATION_IMPORTANCE", i);
    }

    /* renamed from: D */
    public void m41012D(String str) {
        putString("CHANNELS_LAST_REQUESTED_LOCALE", str);
    }

    /* renamed from: D */
    public void m41011D(boolean z) {
        putBoolean("SHOULD_LOAD_CONVERSATION_STATUS", z);
    }

    /* renamed from: E */
    public void m41010E(int i) {
        putInt("FRESHCHAT_USER_EVENTS_DAILY_COUNTER", i);
    }

    /* renamed from: E */
    public void m41009E(String str) {
        m39914c("CONFIG_USER_RESTORE_ID", str, false);
    }

    /* renamed from: F */
    public void m41008F(String str) {
        putString("CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK", str);
    }

    /* renamed from: G */
    public void m41007G(String str) {
        putString("CONFIG_FCM_REGISTRATION_TOKEN", str);
    }

    /* renamed from: H */
    public void m41006H(String str) {
        m39914c("CONFIG_USER_PHONE_COUNTRY", str, false);
    }

    /* renamed from: I */
    public void m41005I(String str) {
        m39914c("CONFIG_USER_PHONE", str, false);
    }

    /* renamed from: J */
    public void m41004J(String str) {
        m39914c("CONFIG_USER_LOCALE", str, false);
    }

    /* renamed from: L */
    public void m41003L(String str) {
        putString("CONFIG_NOTIFICATION_SOUND_URI", str);
    }

    /* renamed from: X */
    public void m41002X(int i) {
        putInt("RC_ACCOUNT_FAQ_API_VERSION", i);
    }

    /* renamed from: Z */
    public void m41001Z(String str) {
        putString("FRESHCHAT_USER_EVENTS_DATA", str);
    }

    /* renamed from: a */
    public void m41000a(JwtTokenStatus jwtTokenStatus) {
        putInt("CONFIG_USER_JWT_ID_TOKEN_STATUS", jwtTokenStatus.asInt());
    }

    /* renamed from: a */
    public void m40999a(Set<Integer> set) {
        m39923a("RC_RESOLVED_MESSAGE_TYPES", new JSONArray((Collection) set));
    }

    /* renamed from: a */
    public void m40998a(JSONArray jSONArray) {
        m39923a("RC_ENABLED_FEATURES_JSON", jSONArray);
    }

    /* renamed from: a */
    public void m40997a(JSONObject jSONObject) {
        m39922a("CONFIG_VOTED_ARTICLES", jSONObject);
    }

    /* renamed from: aX */
    public void m40996aX(String str) {
        putString("RC_MESSAGE_MASKING_CONFIG", str);
    }

    /* renamed from: aa */
    public void m40995aa(String str) {
        putString("FRESHCHAT_USER_EVENTS_UPLOADING_DATA", str);
    }

    /* renamed from: b */
    public void m40994b(Set<Integer> set) {
        m39923a("RC_REOPENED_MESSAGE_TYPES", new JSONArray((Collection) set));
    }

    /* renamed from: bA */
    public void m40993bA() {
        m39917at("REMOTE_CONFIG_LAST_UPDATED_TIME");
    }

    /* renamed from: bB */
    public String m40992bB() {
        return getString("CHANNELS_LAST_MODIFIED_AT");
    }

    /* renamed from: bC */
    public FCLocale m40991bC() {
        String string = getString("CHANNELS_LAST_RECEIVED_LOCALE");
        if (C1626as.isEmpty(string)) {
            return null;
        }
        return FCLocale.fromString(string);
    }

    /* renamed from: bD */
    public void m40990bD() {
        remove("CHANNELS_LAST_RECEIVED_LOCALE");
    }

    /* renamed from: bE */
    public String m40989bE() {
        return getString("CHANNELS_LAST_REQUESTED_LOCALE");
    }

    /* renamed from: bG */
    public String m40987bG() {
        return getString("CHANNELS_LAST_REQUESTED_TIME");
    }

    /* renamed from: bH */
    public void m40986bH() {
        m39917at("CHANNELS_LAST_REQUESTED_TIME");
    }

    /* renamed from: bI */
    public String m40985bI() {
        return getString("CONFIG_USER_RESTORE_ID");
    }

    /* renamed from: bJ */
    public String m40984bJ() {
        return getString("MESSAGES_LAST_UPDATED_TIME");
    }

    /* renamed from: bK */
    public void m40983bK() {
        m39917at("MESSAGES_LAST_UPDATED_TIME");
    }

    /* renamed from: bN */
    public void m40982bN() {
        m40952bw();
        m40988bF();
    }

    /* renamed from: bO */
    public void m40981bO() {
        m40951bx();
        m40950by();
    }

    /* renamed from: bP */
    public String m40980bP() {
        return getString("CONFIG_FCM_REGISTRATION_TOKEN");
    }

    /* renamed from: bQ */
    public int m40979bQ() {
        return getInt("CONFIG_NOTIFICATION_PRIORITY", 0);
    }

    /* renamed from: bR */
    public int m40978bR() {
        return getInt("CONFIG_NOTIFICATION_SMALL_ICON", 0);
    }

    /* renamed from: bS */
    public int m40977bS() {
        return getInt("CONFIG_NOTIFICATION_LARGE_ICON", 0);
    }

    /* renamed from: bT */
    public String m40976bT() {
        return getString("CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK");
    }

    /* renamed from: bU */
    public boolean m40975bU() {
        return getBoolean("CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION", true);
    }

    /* renamed from: bW */
    public void m40974bW() {
        m39921a(f4076dM);
    }

    /* renamed from: bX */
    public String m40973bX() {
        return getString("CONFIG_USER_PHONE_COUNTRY");
    }

    /* renamed from: bY */
    public String m40972bY() {
        return getString("CONFIG_USER_PHONE");
    }

    /* renamed from: bZ */
    public String m40971bZ() {
        return getString("CONFIG_USER_LOCALE");
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1714i
    /* renamed from: bf */
    public String mo39916bf() {
        return "90bd96d1c0b3dbe341cc5a33f373183a";
    }

    /* renamed from: bg */
    public String m40970bg() {
        return getString("CONFIG_USER_FIRST_NAME");
    }

    /* renamed from: bh */
    public String m40969bh() {
        return getString("CONFIG_USER_LAST_NAME");
    }

    /* renamed from: bh */
    public void m40968bh(String str) {
        putString("RC_UNSUPPORTED_FRAGMENT_CONFIG", str);
    }

    /* renamed from: bi */
    public String m40967bi() {
        return getString("CONFIG_USER_EMAIL");
    }

    /* renamed from: bj */
    public String m40966bj() {
        return getString("CONFIG_USER_ALIAS");
    }

    /* renamed from: bk */
    public String m40965bk() {
        return getString("CONFIG_USER_EXTERNAL_ID");
    }

    /* renamed from: bl */
    public boolean m40964bl() {
        return getBoolean("CONFIG_USER_REGISTERED");
    }

    /* renamed from: bm */
    public String m40963bm() {
        return getString("CONFIG_LAST_APP_VER_CODE");
    }

    /* renamed from: bn */
    public void m40961bn(String str) {
        putString("CONFIG_USER_CALENDAR_EMAIL", str);
    }

    /* renamed from: bn */
    public boolean m40962bn() {
        return getBoolean("CONFIG_VOICE_MESSAGING_ENABLED", false);
    }

    /* renamed from: bo */
    public boolean m40960bo() {
        return getBoolean("CONFIG_AUDIO_STREAM_SPEAKERPHONE", true);
    }

    /* renamed from: bp */
    public String m40959bp() {
        return getString("CONFIG_LINK_REGEX");
    }

    /* renamed from: bq */
    public String m40958bq() {
        return getString("CONFIG_LINK_SCHEME");
    }

    /* renamed from: br */
    public String m40957br() {
        return getString("SOLUTIONS_LAST_REQUESTED_TIME");
    }

    /* renamed from: bs */
    public void m40956bs() {
        m39917at("SOLUTIONS_LAST_REQUESTED_TIME");
    }

    /* renamed from: bt */
    public String m40955bt() {
        return getString("SOLUTIONS_LAST_MODIFIED_AT");
    }

    /* renamed from: bu */
    public FCLocale m40954bu() {
        String string = getString("SOLUTIONS_LAST_RECEIVED_LOCALE");
        if (C1626as.isEmpty(string)) {
            return null;
        }
        return FCLocale.fromString(string);
    }

    /* renamed from: bv */
    public String m40953bv() {
        return getString("SOLUTIONS_LAST_REQUESTED_LOCALE");
    }

    /* renamed from: bx */
    public void m40951bx() {
        remove("SOLUTIONS_LAST_REQUESTED_TIME");
    }

    /* renamed from: bz */
    public String m40949bz() {
        return getString("REMOTE_CONFIG_LAST_UPDATED_TIME");
    }

    /* renamed from: c */
    public void m40948c(String str) {
        m39914c("CONFIG_USER_JWT_ID_TOKEN", str, false);
    }

    /* renamed from: c */
    public void m40947c(boolean z) {
        putBoolean("CONFIG_USER_REGISTERED", z);
    }

    /* renamed from: cQ */
    public long m40946cQ() {
        return getLong("RC_CSAT_AUTO_EXPIRY_INTERVAL");
    }

    /* renamed from: ca */
    public String m40945ca() {
        return getString("PrevSessionEndTime");
    }

    /* renamed from: cb */
    public void m40944cb() {
        m39917at("PrevSessionEndTime");
    }

    /* renamed from: cc */
    public String m40943cc() {
        return getString("USER_DAU_TRACKING_LAST_UPDATED_TIME");
    }

    /* renamed from: cd */
    public void m40942cd() {
        m39917at("USER_DAU_TRACKING_LAST_UPDATED_TIME");
    }

    /* renamed from: ce */
    public long m40941ce() {
        return getLong("PENDING_LOG_REQUEST_ID", 0L);
    }

    /* renamed from: cf */
    public void m40940cf() {
        remove("PENDING_LOG_REQUEST_ID");
    }

    /* renamed from: cg */
    public JSONArray m40939cg() {
        return getJSONArray("RC_ENABLED_FEATURES_JSON");
    }

    /* renamed from: d */
    public void m40938d(long j) {
        putLong("PENDING_LOG_REQUEST_ID", j);
    }

    /* renamed from: d */
    public void m40937d(boolean z) {
        putBoolean("CONFIG_TEAM_MEMBER_INFO_VISIBLE", z);
    }

    public boolean doesCsatAutoExpire() {
        return getBoolean("RC_CSAT_AUTO_EXPIRE");
    }

    /* renamed from: dp */
    public void m40936dp() {
        if (!m39913eO() || !m39911jO()) {
            return;
        }
        m39915bo(this.context);
        String m40918gh = m40918gh();
        String m40965bk = m40965bk();
        String m40985bI = m40985bI();
        if (C1626as.m40233a(m40918gh)) {
            C1594aa.m40359a(this.context, true, false);
            C1720o.m39854bA(this.context);
        } else if (!C1626as.m40233a(m40965bk) || !C1626as.m40233a(m40985bI)) {
            if (!C1704d.m39975aw(this.context)) {
                return;
            }
            C1594aa.m40359a(this.context, true, false);
        } else {
            try {
                C1594aa.m40359a(this.context, true, false);
                Freshchat.getInstance(this.context).identifyUser(m40965bk, m40985bI);
            } catch (MethodNotAllowedException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: e */
    public void m40935e(boolean z) {
        putBoolean("CONFIG_CAMERA_CAPTURE_ENABLED", z);
    }

    /* renamed from: ee */
    public String m40934ee() {
        return getString("CONFIG_NOTIFICATION_SOUND_URI");
    }

    /* renamed from: f */
    public void m40933f(boolean z) {
        putBoolean("CONFIG_VOICE_MESSAGING_ENABLED", z);
    }

    /* renamed from: fi */
    public boolean m40932fi() {
        return getBoolean("SHOULD_LOAD_CONVERSATION_STATUS");
    }

    /* renamed from: fj */
    public Set<Integer> m40931fj() {
        return C1716k.m39899b(getJSONArray("RC_RESOLVED_MESSAGE_TYPES"));
    }

    /* renamed from: fk */
    public Set<Integer> m40930fk() {
        return C1716k.m39899b(getJSONArray("RC_REOPENED_MESSAGE_TYPES"));
    }

    /* renamed from: fl */
    public void m40929fl() {
        if (!getBoolean("HAS_BUSINESS_HOURS_DETAILS_LOADED")) {
            remove("MESSAGES_LAST_UPDATED_TIME");
            remove("REMOTE_CONFIG_LAST_UPDATED_TIME");
            remove("CHANNELS_LAST_REQUESTED_TIME");
            remove("CHANNELS_LAST_MODIFIED_AT");
            putBoolean("HAS_BUSINESS_HOURS_DETAILS_LOADED", true);
            putBoolean("SHOULD_LOAD_CONVERSATION_STATUS", true);
            C1613ai.m40284d("FRESHCHAT", "Reloading Business Hours Details");
        }
    }

    /* renamed from: fq */
    public String m40928fq() {
        return getString("RC_MESSAGE_MASKING_CONFIG");
    }

    /* renamed from: g */
    public void m40927g(boolean z) {
        putBoolean("CONFIG_GALLERY_SELECTION_ENABLED", z);
    }

    /* renamed from: gG */
    public String m40926gG() {
        return getString("FRESHCHAT_USER_EVENTS_DATA", "{}");
    }

    /* renamed from: gH */
    public void m40925gH() {
        remove("FRESHCHAT_USER_EVENTS_DATA");
    }

    /* renamed from: gI */
    public String m40924gI() {
        return getString("FRESHCHAT_USER_EVENTS_UPLOADING_DATA", "{}");
    }

    /* renamed from: gJ */
    public int m40923gJ() {
        return getInt("FRESHCHAT_USER_EVENTS_DAILY_COUNTER", 0);
    }

    /* renamed from: gK */
    public void m40922gK() {
        remove("FRESHCHAT_USER_EVENTS_DAILY_COUNTER");
    }

    /* renamed from: gL */
    public long m40921gL() {
        return getLong("FRESHCHAT_LAST_EVENT_LOGGED_TIME", 0L);
    }

    /* renamed from: gP */
    public String m40920gP() {
        return getString("UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME");
    }

    /* renamed from: gQ */
    public void m40919gQ() {
        m39917at("UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME");
    }

    public double getActiveConvFetchBackoffRatio() {
        return getDouble("RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO", new DefaultRemoteConfig().getConversationConfig().getActiveConvFetchBackoffRatio());
    }

    public long getActiveConvMaxFetchInterval() {
        return getLong("RC_ACTIVE_CONV_MAX_FETCH_INTERVAL");
    }

    public long getActiveConvMinFetchInterval() {
        return getLong("RC_ACTIVE_CONV_MIN_FETCH_INTERVAL");
    }

    public long getActiveConvWindow() {
        return getLong("RC_ACTIVE_CONV_WINDOW");
    }

    public String getAppId() {
        return getString("CONFIG_APP_ID");
    }

    public String getAppKey() {
        return getString("CONFIG_APP_KEY");
    }

    public long getChannelsFetchIntervalLaidback() {
        return getLong("RC_CHANNELS_FETCH_INTERVAL_LAIDBACK");
    }

    public long getChannelsFetchIntervalNormal() {
        return getLong("RC_CHANNELS_FETCH_INTERVAL_NORMAL");
    }

    public String getDomain() {
        return getString("CONFIG_DOMAIN");
    }

    public long getFaqFetchIntervalLaidback() {
        return getLong("RC_FAQ_FETCH_INTERVAL_LAIDBACK");
    }

    public long getFaqFetchIntervalNormal() {
        return getLong("RC_FAQ_FETCH_INTERVAL_NORMAL");
    }

    public long getMaxAllowedEventsPerDay() {
        return getLong("RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY", 50L);
    }

    public long getMaxAllowedPropertiesPerEvent() {
        return getLong("RC_USER_EVENT_MAX_PROPERTIES_LIMIT", 20L);
    }

    public int getMaxCharsPerEventName() {
        return getInt("RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME ", 32);
    }

    public int getMaxCharsPerEventPropertyName() {
        return getInt("RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME", 32);
    }

    public int getMaxCharsPerEventPropertyValue() {
        return getInt("RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE", 256);
    }

    public long getMaxDelayInMillisUntilUpload() {
        return getLong("RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD", DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
    }

    public long getMaxEventsPerBatch() {
        return getLong("RC_USER_EVENT_BATCH_UPLOAD_COUNT", 10L);
    }

    public long getMsgFetchIntervalLaidback() {
        return getLong("RC_MSG_FETCH_INTERVAL_LAIDBACK");
    }

    public long getMsgFetchIntervalNormal() {
        return getLong("RC_MSG_FETCH_INTERVAL_NORMAL");
    }

    public long getRemoteConfigFetchInterval() {
        return getLong("RC_CONFIG_FETCH_INTERVAL");
    }

    public long getResponseTimeExpectationsFetchInterval() {
        return getLong("RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL");
    }

    public long getSessionTimeoutInterval() {
        return getLong("CONFIG_RC_SESSION_TIMEOUT_INTERVAL");
    }

    public long getTriggerUploadOnEventsCount() {
        return getLong("RC_USER_EVENT_TRIGGER_UPLOAD_COUNT", 5L);
    }

    /* renamed from: gh */
    public String m40918gh() {
        return getString("CONFIG_USER_JWT_ID_TOKEN");
    }

    /* renamed from: gi */
    public void m40917gi() {
        remove("CONFIG_USER_JWT_ID_TOKEN");
    }

    /* renamed from: gj */
    public int m40916gj() {
        return getInt("CONFIG_USER_JWT_ID_TOKEN_STATUS", -1);
    }

    /* renamed from: gk */
    public boolean m40915gk() {
        return getBoolean("RC_JWT_AUTH_STRICT_MODE_ENABLED");
    }

    /* renamed from: gl */
    public long m40914gl() {
        return getLong("RC_JWT_AUTH_TIMEOUT_INTERVAL");
    }

    /* renamed from: gm */
    public String m40913gm() {
        return getString("RC_UNSUPPORTED_FRAGMENT_CONFIG");
    }

    /* renamed from: gt */
    public long m40912gt() {
        return getLong("CONFIG_LAST_SESSION_END_TIME");
    }

    /* renamed from: gu */
    public void m40911gu() {
        putLong("CONFIG_LAST_SESSION_END_TIME", C1719n.m39866fP());
    }

    /* renamed from: gw */
    public int m40910gw() {
        return getInt("CONFIG_NOTIFICATION_IMPORTANCE", 3);
    }

    /* renamed from: h */
    public void m40909h(int i) {
        putInt("CONFIG_NOTIFICATION_PRIORITY", i);
    }

    /* renamed from: h */
    public void m40908h(boolean z) {
        putBoolean("CONFIG_AUDIO_STREAM_SPEAKERPHONE", z);
    }

    /* renamed from: hA */
    public String m40907hA() {
        return getString("CONFIG_USER_CALENDAR_EMAIL");
    }

    /* renamed from: i */
    public void m40906i(int i) {
        putInt("CONFIG_NOTIFICATION_SMALL_ICON", i);
    }

    /* renamed from: i */
    public void m40904i(boolean z) {
        putBoolean("CONFIG_NOTIFICATION_SOUND_ENABLED", z);
    }

    /* renamed from: iK */
    public JSONObject m40903iK() {
        return getJSONObject("CONFIG_VOTED_ARTICLES");
    }

    /* renamed from: iL */
    public void m40902iL() {
        remove("CONFIG_VOTED_ARTICLES");
    }

    /* renamed from: iM */
    public int m40901iM() {
        return getInt("RC_ACCOUNT_FAQ_API_VERSION", DefaultAccountConfig.DEFAULT_FAQ_API_VERSION.asInt());
    }

    /* renamed from: iN */
    public long m40900iN() {
        return getLong("CONFIG_FAQ_API_VERSION_UPDATED_AT", 0L);
    }

    /* renamed from: iO */
    public void m40899iO() {
        m39917at("CONFIG_FAQ_API_VERSION_UPDATED_AT");
    }

    /* renamed from: iP */
    public void m40898iP() {
        remove("SOLUTIONS_LAST_REQUESTED_TIME");
        remove("SOLUTIONS_LAST_MODIFIED_AT");
        remove("SOLUTIONS_LAST_RECEIVED_LOCALE");
        remove("SOLUTIONS_LAST_REQUESTED_LOCALE");
        m40902iL();
    }

    /* renamed from: is */
    public void m40897is() {
        remove("CONFIG_USER_RESTORE_ID");
    }

    public boolean isAccountActive() {
        return getBoolean("RC_IS_ACCOUNT_ACTIVE", true);
    }

    public boolean isCameraCaptureEnabled() {
        return getBoolean("CONFIG_CAMERA_CAPTURE_ENABLED", true);
    }

    public boolean isGallerySelectionEnabled() {
        return getBoolean("CONFIG_GALLERY_SELECTION_ENABLED", true);
    }

    public boolean isJwtAuthEnabled() {
        return getBoolean("RC_JWT_AUTH_ENABLED");
    }

    public boolean isNotificationInterceptionEnabled() {
        return getBoolean("CONFIG_NOTIFICATION_INTERCEPTION_ENABLED");
    }

    public boolean isNotificationSoundEnabled() {
        return getBoolean("CONFIG_NOTIFICATION_SOUND_ENABLED", true);
    }

    public boolean isResponseExpectationEnabled() {
        return getBoolean("CONFIG_RESPONSE_EXPECTATION_ENABLED", true);
    }

    public boolean isTeamMemberInfoVisible() {
        return getBoolean("CONFIG_TEAM_MEMBER_INFO_VISIBLE", true);
    }

    public boolean isUserEventsTrackingEnabled() {
        return getBoolean("CONFIG_USER_EVENTS_TRACKING_ENABLED", true);
    }

    /* renamed from: it */
    public boolean m40896it() {
        return getBoolean("RC_LIVE_TRANSLATION_ENABLED");
    }

    /* renamed from: j */
    public void m40895j(int i) {
        putInt("CONFIG_NOTIFICATION_LARGE_ICON", i);
    }

    /* renamed from: j */
    public void m40894j(boolean z) {
        putBoolean("CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION", z);
    }

    /* renamed from: k */
    public void m40893k(int i) {
        putInt("SDK_VERSION_CODE", i);
    }

    /* renamed from: o */
    public void m40892o(String str) {
        putString("CONFIG_APP_ID", str);
    }

    /* renamed from: p */
    public void m40891p(String str) {
        putString("CONFIG_APP_KEY", str);
    }

    /* renamed from: q */
    public void m40890q(String str) {
        m39914c("CONFIG_USER_FIRST_NAME", str, false);
    }

    /* renamed from: r */
    public void m40889r(String str) {
        m39914c("CONFIG_USER_LAST_NAME", str, false);
    }

    /* renamed from: s */
    public void m40888s(long j) {
        putLong("RC_CSAT_AUTO_EXPIRY_INTERVAL", j);
    }

    /* renamed from: s */
    public void m40887s(String str) {
        m39914c("CONFIG_USER_EMAIL", str, false);
    }

    public void setAccountActive(boolean z) {
        putBoolean("RC_IS_ACCOUNT_ACTIVE", z);
    }

    public void setActiveConvFetchBackoffRatio(double d) {
        putDouble("RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO", d);
    }

    public void setActiveConvMaxFetchInterval(long j) {
        putLong("RC_ACTIVE_CONV_MAX_FETCH_INTERVAL", j);
    }

    public void setActiveConvMinFetchInterval(long j) {
        putLong("RC_ACTIVE_CONV_MIN_FETCH_INTERVAL", j);
    }

    public void setActiveConvWindow(long j) {
        putLong("RC_ACTIVE_CONV_WINDOW", j);
    }

    public void setChannelsFetchIntervalLaidback(long j) {
        putLong("RC_CHANNELS_FETCH_INTERVAL_LAIDBACK", j);
    }

    public void setChannelsFetchIntervalNormal(long j) {
        putLong("RC_CHANNELS_FETCH_INTERVAL_NORMAL", j);
    }

    public void setCsatAutoExpire(boolean z) {
        putBoolean("RC_CSAT_AUTO_EXPIRE", z);
    }

    public void setDomain(String str) {
        putString("CONFIG_DOMAIN", str);
    }

    public void setFaqFetchIntervalLaidback(long j) {
        putLong("RC_FAQ_FETCH_INTERVAL_LAIDBACK", j);
    }

    public void setFaqFetchIntervalNormal(long j) {
        putLong("RC_FAQ_FETCH_INTERVAL_NORMAL", j);
    }

    public void setJwtAuthEnabled(boolean z) {
        putBoolean("RC_JWT_AUTH_ENABLED", z);
    }

    public void setMaxAllowedEventsPerDay(long j) {
        putLong("RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY", j);
    }

    public void setMaxAllowedPropertiesPerEvent(long j) {
        putLong("RC_USER_EVENT_MAX_PROPERTIES_LIMIT", j);
    }

    public void setMaxCharsPerEventName(int i) {
        putInt("RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME ", i);
    }

    public void setMaxCharsPerEventPropertyName(int i) {
        putInt("RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME", i);
    }

    public void setMaxCharsPerEventPropertyValue(int i) {
        putLong("RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE", i);
    }

    public void setMaxDelayInMillisUntilUpload(long j) {
        putLong("RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD", j);
    }

    public void setMaxEventsPerBatch(long j) {
        putLong("RC_USER_EVENT_BATCH_UPLOAD_COUNT", j);
    }

    public void setMsgFetchIntervalLaidback(long j) {
        putLong("RC_MSG_FETCH_INTERVAL_LAIDBACK", j);
    }

    public void setMsgFetchIntervalNormal(long j) {
        putLong("RC_MSG_FETCH_INTERVAL_NORMAL", j);
    }

    public void setRemoteConfigFetchInterval(long j) {
        putLong("RC_CONFIG_FETCH_INTERVAL", j);
    }

    public void setResponseTimeExpectationsFetchInterval(long j) {
        putLong("RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL", j);
    }

    public void setSessionTimeoutInterval(long j) {
        putLong("CONFIG_RC_SESSION_TIMEOUT_INTERVAL", j);
    }

    public void setTriggerUploadOnEventsCount(long j) {
        putLong("RC_USER_EVENT_TRIGGER_UPLOAD_COUNT", j);
    }

    public void setUserEventsTrackingEnabled(boolean z) {
        putBoolean("CONFIG_USER_EVENTS_TRACKING_ENABLED", z);
    }

    /* renamed from: t */
    public void m40886t(String str) {
        putString("CONFIG_USER_ALIAS", str);
    }

    /* renamed from: t */
    public void m40885t(boolean z) {
        putBoolean("RC_JWT_AUTH_STRICT_MODE_ENABLED", z);
    }

    /* renamed from: u */
    public void m40884u(long j) {
        putLong("RC_JWT_AUTH_TIMEOUT_INTERVAL", j);
    }

    /* renamed from: u */
    public void m40883u(String str) {
        m39914c("CONFIG_USER_EXTERNAL_ID", str, false);
    }

    /* renamed from: u */
    public void m40882u(boolean z) {
        putBoolean("CONFIG_NOTIFICATION_INTERCEPTION_ENABLED", z);
    }

    /* renamed from: v */
    public void m40881v(String str) {
        putString("CONFIG_LAST_APP_VER_CODE", str);
    }

    /* renamed from: w */
    public void m40880w(long j) {
        putLong("FRESHCHAT_LAST_EVENT_LOGGED_TIME", j);
    }

    /* renamed from: w */
    public void m40879w(String str) {
        putString("CONFIG_LINK_REGEX", str);
    }

    /* renamed from: w */
    public void m40878w(boolean z) {
        putBoolean("CONFIG_RESPONSE_EXPECTATION_ENABLED", z);
    }

    /* renamed from: x */
    public void m40877x(String str) {
        putString("CONFIG_LINK_SCHEME", str);
    }

    /* renamed from: y */
    public void m40876y(String str) {
        putString("SOLUTIONS_LAST_MODIFIED_AT", str);
    }

    /* renamed from: z */
    public void m40875z(String str) {
        putString("SOLUTIONS_LAST_RECEIVED_LOCALE", str);
    }

    /* renamed from: z */
    public void m40874z(boolean z) {
        putBoolean("RC_LIVE_TRANSLATION_ENABLED", z);
    }
}
