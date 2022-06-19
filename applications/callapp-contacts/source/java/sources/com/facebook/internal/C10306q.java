package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.GraphRequest;
import com.facebook.appevents.p280b.p281a.C9980e;
import com.facebook.appevents.p285f.C10037d;
import com.facebook.internal.C10285h;
import com.facebook.internal.C10302p;
import com.facebook.internal.EnumC10211ad;
import com.facebook.internal.p299b.p301b.C10249a;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001:\u0002ABB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020$H\u0007J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004H\u0002J\u0014\u00104\u001a\u0004\u0018\u00010!2\b\u00103\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u00105\u001a\u00020/H\u0007J\u0018\u00106\u001a\u00020!2\u0006\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u000202H\u0007J*\u00108\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020:0 092\b\u0010;\u001a\u0004\u0018\u000102H\u0002J\b\u0010<\u001a\u00020/H\u0002J\u001a\u0010=\u001a\u0004\u0018\u00010!2\u0006\u00103\u001a\u00020\u00042\u0006\u0010>\u001a\u00020&H\u0007J\u0010\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020&H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010'\u001a\u0010\u0012\f\u0012\n **\u0004\u0018\u00010)0)0(X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n��¨\u0006C"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager;", "", "()V", "APPLICATION_FIELDS", "", "APP_SETTINGS_PREFS_KEY_FORMAT", "APP_SETTINGS_PREFS_STORE", "APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES", "APP_SETTING_APP_EVENTS_AAM_RULE", "APP_SETTING_APP_EVENTS_EVENT_BINDINGS", "APP_SETTING_APP_EVENTS_FEATURE_BITMASK", "APP_SETTING_APP_EVENTS_SESSION_TIMEOUT", "APP_SETTING_DIALOG_CONFIGS", "APP_SETTING_FIELDS", "", "APP_SETTING_NUX_CONTENT", "APP_SETTING_NUX_ENABLED", "APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD", "APP_SETTING_SMART_LOGIN_OPTIONS", "APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING", "AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "", "CODELESS_EVENTS_ENABLED_BITMASK_FIELD", "IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "MONITOR_ENABLED_BITMASK_FIELD", "SDK_UPDATE_MESSAGE", "SMART_LOGIN_BOOKMARK_ICON_URL", "SMART_LOGIN_MENU_ICON_URL", "SUGGESTED_EVENTS_SETTING", "TAG", "TRACK_UNINSTALL_ENABLED_BITMASK_FIELD", "fetchedAppSettings", "", "Lcom/facebook/internal/FetchedAppSettings;", "fetchedAppSettingsCallbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "isUnityInit", "", "loadingState", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "kotlin.jvm.PlatformType", "printedSDKUpdatedMessage", "unityEventBindings", "Lorg/json/JSONArray;", "getAppSettingsAsync", "", "callback", "getAppSettingsQueryResponse", "Lorg/json/JSONObject;", "applicationId", "getAppSettingsWithoutQuery", "loadAppSettingsAsync", "parseAppSettingsFromJSON", "settingsJSON", "parseDialogConfigurations", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "dialogConfigResponse", "pollCallbacks", "queryAppSettings", "forceRequery", "setIsUnityInit", "flag", "FetchAppSettingState", "FetchedAppSettingsCallback", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.q */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/q.class */
public final class C10306q {

    /* renamed from: b */
    private static final String f33869b;

    /* renamed from: g */
    private static boolean f33874g;

    /* renamed from: h */
    private static JSONArray f33875h;

    /* renamed from: a */
    public static final C10306q f33868a = new C10306q();

    /* renamed from: c */
    private static final List<String> f33870c = C18282n.m4167b((Object[]) new String[]{"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting"});

    /* renamed from: d */
    private static final Map<String, C10302p> f33871d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final AtomicReference<EnumC10307a> f33872e = new AtomicReference<>(EnumC10307a.NOT_LOADED);

    /* renamed from: f */
    private static final ConcurrentLinkedQueue<AbstractC10308b> f33873f = new ConcurrentLinkedQueue<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "", "(Ljava/lang/String;I)V", "NOT_LOADED", "LOADING", "SUCCESS", "ERROR", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.q$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$a.class */
    public enum EnumC10307a {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "", "onError", "", "onSuccess", "fetchedAppSettings", "Lcom/facebook/internal/FetchedAppSettings;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.q$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$b.class */
    public interface AbstractC10308b {
        /* renamed from: a */
        void mo23016a();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.q$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$c.class */
    public static final class RunnableC10309c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Context f33876a;

        /* renamed from: b */
        final /* synthetic */ String f33877b;

        /* renamed from: c */
        final /* synthetic */ String f33878c;

        RunnableC10309c(Context context, String str, String str2) {
            this.f33876a = context;
            this.f33877b = str;
            this.f33878c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            JSONObject jSONObject;
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                SharedPreferences sharedPreferences = this.f33876a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                String string = sharedPreferences.getString(this.f33877b, null);
                C10302p c10302p = null;
                if (!C10213ae.m23230a(string)) {
                    if (string == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    try {
                        jSONObject = new JSONObject(string);
                    } catch (JSONException e) {
                        C10213ae.m23228a("FacebookSDK", (Exception) e);
                        jSONObject = null;
                    }
                    c10302p = null;
                    if (jSONObject != null) {
                        C10306q c10306q = C10306q.f33868a;
                        String applicationId = this.f33878c;
                        C18524p.m3843b(applicationId, "applicationId");
                        c10302p = C10306q.m23027a(applicationId, jSONObject);
                    }
                }
                C10306q c10306q2 = C10306q.f33868a;
                String applicationId2 = this.f33878c;
                C18524p.m3843b(applicationId2, "applicationId");
                JSONObject m23021c = C10306q.m23021c(applicationId2);
                if (m23021c != null) {
                    C10306q c10306q3 = C10306q.f33868a;
                    String applicationId3 = this.f33878c;
                    C18524p.m3843b(applicationId3, "applicationId");
                    C10306q.m23027a(applicationId3, m23021c);
                    sharedPreferences.edit().putString(this.f33877b, m23021c.toString()).apply();
                }
                if (c10302p != null) {
                    String str = c10302p.f33852i;
                    C10306q c10306q4 = C10306q.f33868a;
                    if (!C10306q.f33874g && str != null && str.length() > 0) {
                        C10306q c10306q5 = C10306q.f33868a;
                        C10306q.f33874g = true;
                        C10306q c10306q6 = C10306q.f33868a;
                        Log.w(C10306q.f33869b, str);
                    }
                }
                String applicationId4 = this.f33878c;
                C18524p.m3843b(applicationId4, "applicationId");
                C10298o.m23040a(applicationId4);
                C10037d.m23553a();
                C10306q c10306q7 = C10306q.f33868a;
                AtomicReference atomicReference = C10306q.f33872e;
                C10306q c10306q8 = C10306q.f33868a;
                atomicReference.set(C10306q.f33871d.containsKey(this.f33878c) ? EnumC10307a.SUCCESS : EnumC10307a.ERROR);
                C10306q.f33868a.m23017g();
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.q$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$d.class */
    public static final class RunnableC10310d implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC10308b f33879a;

        RunnableC10310d(AbstractC10308b abstractC10308b) {
            this.f33879a = abstractC10308b;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.q$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$e.class */
    public static final class RunnableC10311e implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC10308b f33880a;

        /* renamed from: b */
        final /* synthetic */ C10302p f33881b;

        RunnableC10311e(AbstractC10308b abstractC10308b, C10302p c10302p) {
            this.f33880a = abstractC10308b;
            this.f33881b = c10302p;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                this.f33880a.mo23016a();
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    static {
        String simpleName = C10306q.class.getSimpleName();
        C18524p.m3843b(simpleName, "FetchedAppSettingsManager::class.java.simpleName");
        f33869b = simpleName;
    }

    private C10306q() {
    }

    /* renamed from: a */
    public static final C10302p m23028a(String str) {
        if (str != null) {
            return f33871d.get(str);
        }
        return null;
    }

    /* renamed from: a */
    public static C10302p m23027a(String applicationId, JSONObject settingsJSON) {
        C18524p.m3840d(applicationId, "applicationId");
        C18524p.m3840d(settingsJSON, "settingsJSON");
        JSONArray optJSONArray = settingsJSON.optJSONArray("android_sdk_error_categories");
        C10285h.C10286a c10286a = C10285h.f33812g;
        C10285h m23058a = C10285h.C10286a.m23058a(optJSONArray);
        C10285h c10285h = m23058a;
        if (m23058a == null) {
            c10285h = C10285h.f33812g.m23059a();
        }
        int optInt = settingsJSON.optInt("app_events_feature_bitmask", 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & 32) != 0;
        boolean z4 = (optInt & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        boolean z5 = (optInt & 16384) != 0;
        JSONArray optJSONArray2 = settingsJSON.optJSONArray("auto_event_mapping_android");
        f33875h = optJSONArray2;
        if (optJSONArray2 != null && C10333v.m22996b()) {
            C9980e.m23707a(optJSONArray2 != null ? optJSONArray2.toString() : null);
        }
        boolean optBoolean = settingsJSON.optBoolean("supports_implicit_sdk_logging", false);
        String optString = settingsJSON.optString("gdpv4_nux_content", "");
        C18524p.m3843b(optString, "settingsJSON.optString(A…_SETTING_NUX_CONTENT, \"\")");
        boolean optBoolean2 = settingsJSON.optBoolean("gdpv4_nux_enabled", false);
        int optInt2 = settingsJSON.optInt("app_events_session_timeout", 60);
        EnumC10211ad.C10212a c10212a = EnumC10211ad.Companion;
        EnumSet<EnumC10211ad> m23251a = EnumC10211ad.C10212a.m23251a(settingsJSON.optLong("seamless_login"));
        Map<String, Map<String, C10302p.C10304b>> m23025a = m23025a(settingsJSON.optJSONObject("android_dialog_configs"));
        String optString2 = settingsJSON.optString("smart_login_bookmark_icon_url");
        C18524p.m3843b(optString2, "settingsJSON.optString(S…_LOGIN_BOOKMARK_ICON_URL)");
        String optString3 = settingsJSON.optString("smart_login_menu_icon_url");
        C18524p.m3843b(optString3, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)");
        String optString4 = settingsJSON.optString("sdk_update_message");
        C18524p.m3843b(optString4, "settingsJSON.optString(SDK_UPDATE_MESSAGE)");
        C10302p c10302p = new C10302p(optBoolean, optString, optBoolean2, optInt2, m23251a, m23025a, z, c10285h, optString2, optString3, z2, z3, optJSONArray2, optString4, z4, z5, settingsJSON.optString("aam_rules"), settingsJSON.optString("suggested_events_setting"), settingsJSON.optString("restrictive_data_filter_params"));
        f33871d.put(applicationId, c10302p);
        return c10302p;
    }

    /* renamed from: a */
    public static final C10302p m23026a(String applicationId, boolean z) {
        C18524p.m3840d(applicationId, "applicationId");
        if (!z) {
            Map<String, C10302p> map = f33871d;
            if (map.containsKey(applicationId)) {
                return map.get(applicationId);
            }
        }
        JSONObject m23021c = m23021c(applicationId);
        if (m23021c == null) {
            return null;
        }
        C10302p m23027a = m23027a(applicationId, m23021c);
        if (C18524p.m3850a((Object) applicationId, (Object) C10181g.m23286m())) {
            f33872e.set(EnumC10307a.SUCCESS);
            f33868a.m23017g();
        }
        return m23027a;
    }

    /* renamed from: a */
    private static Map<String, Map<String, C10302p.C10304b>> m23025a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        C10302p.C10304b c10304b;
        List a;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                C10302p.C10304b.C10305a c10305a = C10302p.C10304b.f33863c;
                JSONObject dialogConfigJSON = optJSONArray.optJSONObject(i);
                C18524p.m3843b(dialogConfigJSON, "dialogConfigData.optJSONObject(i)");
                C18524p.m3840d(dialogConfigJSON, "dialogConfigJSON");
                String dialogNameWithFeature = dialogConfigJSON.optString("name");
                if (C10213ae.m23230a(dialogNameWithFeature)) {
                    c10304b = null;
                } else {
                    C18524p.m3843b(dialogNameWithFeature, "dialogNameWithFeature");
                    a = C18425p.m3934a(dialogNameWithFeature, new String[]{"|"}, false, 0);
                    if (a.size() != 2) {
                        c10304b = null;
                    } else {
                        String str = (String) C18282n.m4123e((List<? extends Object>) a);
                        String str2 = (String) C18282n.m4119g((List<? extends Object>) a);
                        c10304b = null;
                        if (!C10213ae.m23230a(str)) {
                            if (C10213ae.m23230a(str2)) {
                                c10304b = null;
                            } else {
                                String optString = dialogConfigJSON.optString("url");
                                Uri uri = null;
                                if (!C10213ae.m23230a(optString)) {
                                    uri = Uri.parse(optString);
                                }
                                c10304b = new C10302p.C10304b(str, str2, uri, C10302p.C10304b.C10305a.m23032a(dialogConfigJSON.optJSONArray("versions")), null);
                            }
                        }
                    }
                }
                if (c10304b != null) {
                    String str3 = c10304b.f33864a;
                    Map map = (Map) hashMap.get(str3);
                    HashMap hashMap2 = map;
                    if (map == null) {
                        hashMap2 = new HashMap();
                        hashMap.put(str3, hashMap2);
                    }
                    hashMap2.put(c10304b.f33865b, c10304b);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static final void m23031a() {
        Context m23290i = C10181g.m23290i();
        String m23286m = C10181g.m23286m();
        if (C10213ae.m23230a(m23286m)) {
            f33872e.set(EnumC10307a.ERROR);
            f33868a.m23017g();
        } else if (f33871d.containsKey(m23286m)) {
            f33872e.set(EnumC10307a.SUCCESS);
            f33868a.m23017g();
        } else {
            AtomicReference<EnumC10307a> atomicReference = f33872e;
            if (!(atomicReference.compareAndSet(EnumC10307a.NOT_LOADED, EnumC10307a.LOADING) || atomicReference.compareAndSet(EnumC10307a.ERROR, EnumC10307a.LOADING))) {
                f33868a.m23017g();
                return;
            }
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{m23286m}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            C10181g.m23293f().execute(new RunnableC10309c(m23290i, format, m23286m));
        }
    }

    /* renamed from: a */
    public static final void m23030a(AbstractC10308b callback) {
        C18524p.m3840d(callback, "callback");
        f33873f.add(callback);
        m23031a();
    }

    /* renamed from: c */
    public static JSONObject m23021c(String str) {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f33870c);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest request = GraphRequest.m23790a(str);
        request.m23802a();
        C18524p.m3843b(request, "request");
        request.m23801a(bundle);
        C10351j m23781b = request.m23781b();
        C18524p.m3843b(m23781b, "request.executeAndWait()");
        JSONObject m22932b = m23781b.m22932b();
        JSONObject jSONObject = m22932b;
        if (m22932b == null) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* renamed from: g */
    public final void m23017g() {
        synchronized (this) {
            EnumC10307a enumC10307a = f33872e.get();
            if (EnumC10307a.NOT_LOADED != enumC10307a && EnumC10307a.LOADING != enumC10307a) {
                C10302p c10302p = f33871d.get(C10181g.m23286m());
                Handler handler = new Handler(Looper.getMainLooper());
                if (EnumC10307a.ERROR == enumC10307a) {
                    while (true) {
                        ConcurrentLinkedQueue<AbstractC10308b> concurrentLinkedQueue = f33873f;
                        if (concurrentLinkedQueue.isEmpty()) {
                            return;
                        }
                        handler.post(new RunnableC10310d(concurrentLinkedQueue.poll()));
                    }
                } else {
                    while (true) {
                        ConcurrentLinkedQueue<AbstractC10308b> concurrentLinkedQueue2 = f33873f;
                        if (concurrentLinkedQueue2.isEmpty()) {
                            return;
                        }
                        handler.post(new RunnableC10311e(concurrentLinkedQueue2.poll(), c10302p));
                    }
                }
            }
        }
    }
}
