package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.internal.ad;
import com.facebook.internal.h;
import com.facebook.internal.p;
import com.facebook.j;
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
import kotlin.a.n;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001:\u0002ABB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020$H\u0007J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004H\u0002J\u0014\u00104\u001a\u0004\u0018\u00010!2\b\u00103\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u00105\u001a\u00020/H\u0007J\u0018\u00106\u001a\u00020!2\u0006\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u000202H\u0007J*\u00108\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020:0 092\b\u0010;\u001a\u0004\u0018\u000102H\u0002J\b\u0010<\u001a\u00020/H\u0002J\u001a\u0010=\u001a\u0004\u0018\u00010!2\u0006\u00103\u001a\u00020\u00042\u0006\u0010>\u001a\u00020&H\u0007J\u0010\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020&H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010'\u001a\u0010\u0012\f\u0012\n **\u0004\u0018\u00010)0)0(X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n��¨\u0006C"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager;", "", "()V", "APPLICATION_FIELDS", "", "APP_SETTINGS_PREFS_KEY_FORMAT", "APP_SETTINGS_PREFS_STORE", "APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES", "APP_SETTING_APP_EVENTS_AAM_RULE", "APP_SETTING_APP_EVENTS_EVENT_BINDINGS", "APP_SETTING_APP_EVENTS_FEATURE_BITMASK", "APP_SETTING_APP_EVENTS_SESSION_TIMEOUT", "APP_SETTING_DIALOG_CONFIGS", "APP_SETTING_FIELDS", "", "APP_SETTING_NUX_CONTENT", "APP_SETTING_NUX_ENABLED", "APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD", "APP_SETTING_SMART_LOGIN_OPTIONS", "APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING", "AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "", "CODELESS_EVENTS_ENABLED_BITMASK_FIELD", "IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "MONITOR_ENABLED_BITMASK_FIELD", "SDK_UPDATE_MESSAGE", "SMART_LOGIN_BOOKMARK_ICON_URL", "SMART_LOGIN_MENU_ICON_URL", "SUGGESTED_EVENTS_SETTING", "TAG", "TRACK_UNINSTALL_ENABLED_BITMASK_FIELD", "fetchedAppSettings", "", "Lcom/facebook/internal/FetchedAppSettings;", "fetchedAppSettingsCallbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "isUnityInit", "", "loadingState", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "kotlin.jvm.PlatformType", "printedSDKUpdatedMessage", "unityEventBindings", "Lorg/json/JSONArray;", "getAppSettingsAsync", "", "callback", "getAppSettingsQueryResponse", "Lorg/json/JSONObject;", "applicationId", "getAppSettingsWithoutQuery", "loadAppSettingsAsync", "parseAppSettingsFromJSON", "settingsJSON", "parseDialogConfigurations", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "dialogConfigResponse", "pollCallbacks", "queryAppSettings", "forceRequery", "setIsUnityInit", "flag", "FetchAppSettingState", "FetchedAppSettingsCallback", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/q.class */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f19967b;
    private static boolean g;
    private static JSONArray h;

    /* renamed from: a  reason: collision with root package name */
    public static final q f19966a = new q();

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f19968c = n.b((Object[]) new String[]{"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting"});

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, p> f19969d = new ConcurrentHashMap();
    private static final AtomicReference<a> e = new AtomicReference<>(a.NOT_LOADED);
    private static final ConcurrentLinkedQueue<b> f = new ConcurrentLinkedQueue<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "", "(Ljava/lang/String;I)V", "NOT_LOADED", "LOADING", "SUCCESS", "ERROR", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$a.class */
    public enum a {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "", "onError", "", "onSuccess", "fetchedAppSettings", "Lcom/facebook/internal/FetchedAppSettings;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$b.class */
    public interface b {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$c.class */
    public static final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f19970a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19971b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f19972c;

        c(Context context, String str, String str2) {
            this.f19970a = context;
            this.f19971b = str;
            this.f19972c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            JSONObject jSONObject;
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        SharedPreferences sharedPreferences = this.f19970a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                        String string = sharedPreferences.getString(this.f19971b, null);
                        p pVar = null;
                        if (!ae.a(string)) {
                            if (string != null) {
                                try {
                                    jSONObject = new JSONObject(string);
                                } catch (JSONException e) {
                                    ae.a("FacebookSDK", (Exception) e);
                                    jSONObject = null;
                                }
                                pVar = null;
                                if (jSONObject != null) {
                                    q qVar = q.f19966a;
                                    String applicationId = this.f19972c;
                                    p.b(applicationId, "applicationId");
                                    pVar = q.a(applicationId, jSONObject);
                                }
                            } else {
                                throw new IllegalStateException("Required value was null.".toString());
                            }
                        }
                        q qVar2 = q.f19966a;
                        String applicationId2 = this.f19972c;
                        p.b(applicationId2, "applicationId");
                        JSONObject c2 = q.c(applicationId2);
                        if (c2 != null) {
                            q qVar3 = q.f19966a;
                            String applicationId3 = this.f19972c;
                            p.b(applicationId3, "applicationId");
                            q.a(applicationId3, c2);
                            sharedPreferences.edit().putString(this.f19971b, c2.toString()).apply();
                        }
                        if (pVar != null) {
                            String str = pVar.i;
                            q qVar4 = q.f19966a;
                            if (!q.g && str != null && str.length() > 0) {
                                q qVar5 = q.f19966a;
                                q.g = true;
                                q qVar6 = q.f19966a;
                                Log.w(q.f19967b, str);
                            }
                        }
                        String applicationId4 = this.f19972c;
                        p.b(applicationId4, "applicationId");
                        o.a(applicationId4);
                        com.facebook.appevents.f.d.a();
                        q qVar7 = q.f19966a;
                        AtomicReference atomicReference = q.e;
                        q qVar8 = q.f19966a;
                        atomicReference.set(q.f19969d.containsKey(this.f19972c) ? a.SUCCESS : a.ERROR);
                        q.f19966a.g();
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$d.class */
    public static final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f19973a;

        d(b bVar) {
            this.f19973a = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (com.facebook.internal.b.b.a.a(this)) {
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/q$e.class */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f19974a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p f19975b;

        e(b bVar, p pVar) {
            this.f19974a = bVar;
            this.f19975b = pVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        this.f19974a.a();
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    static {
        String simpleName = q.class.getSimpleName();
        p.b(simpleName, "FetchedAppSettingsManager::class.java.simpleName");
        f19967b = simpleName;
    }

    private q() {
    }

    public static final p a(String str) {
        if (str != null) {
            return f19969d.get(str);
        }
        return null;
    }

    public static p a(String applicationId, JSONObject settingsJSON) {
        p.d(applicationId, "applicationId");
        p.d(settingsJSON, "settingsJSON");
        JSONArray optJSONArray = settingsJSON.optJSONArray("android_sdk_error_categories");
        h.a aVar = h.g;
        h a2 = h.a.a(optJSONArray);
        h hVar = a2;
        if (a2 == null) {
            hVar = h.g.a();
        }
        int optInt = settingsJSON.optInt("app_events_feature_bitmask", 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & 32) != 0;
        boolean z4 = (optInt & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        boolean z5 = (optInt & 16384) != 0;
        JSONArray optJSONArray2 = settingsJSON.optJSONArray("auto_event_mapping_android");
        h = optJSONArray2;
        if (optJSONArray2 != null && v.b()) {
            com.facebook.appevents.b.a.e.a(optJSONArray2 != null ? optJSONArray2.toString() : null);
        }
        boolean optBoolean = settingsJSON.optBoolean("supports_implicit_sdk_logging", false);
        String optString = settingsJSON.optString("gdpv4_nux_content", "");
        p.b(optString, "settingsJSON.optString(A…_SETTING_NUX_CONTENT, \"\")");
        boolean optBoolean2 = settingsJSON.optBoolean("gdpv4_nux_enabled", false);
        int optInt2 = settingsJSON.optInt("app_events_session_timeout", 60);
        ad.a aVar2 = ad.Companion;
        EnumSet<ad> a3 = ad.a.a(settingsJSON.optLong("seamless_login"));
        Map<String, Map<String, p.b>> a4 = a(settingsJSON.optJSONObject("android_dialog_configs"));
        String optString2 = settingsJSON.optString("smart_login_bookmark_icon_url");
        kotlin.jvm.internal.p.b(optString2, "settingsJSON.optString(S…_LOGIN_BOOKMARK_ICON_URL)");
        String optString3 = settingsJSON.optString("smart_login_menu_icon_url");
        kotlin.jvm.internal.p.b(optString3, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)");
        String optString4 = settingsJSON.optString("sdk_update_message");
        kotlin.jvm.internal.p.b(optString4, "settingsJSON.optString(SDK_UPDATE_MESSAGE)");
        p pVar = new p(optBoolean, optString, optBoolean2, optInt2, a3, a4, z, hVar, optString2, optString3, z2, z3, optJSONArray2, optString4, z4, z5, settingsJSON.optString("aam_rules"), settingsJSON.optString("suggested_events_setting"), settingsJSON.optString("restrictive_data_filter_params"));
        f19969d.put(applicationId, pVar);
        return pVar;
    }

    public static final p a(String applicationId, boolean z) {
        kotlin.jvm.internal.p.d(applicationId, "applicationId");
        if (!z) {
            Map<String, p> map = f19969d;
            if (map.containsKey(applicationId)) {
                return map.get(applicationId);
            }
        }
        JSONObject c2 = c(applicationId);
        if (c2 == null) {
            return null;
        }
        p a2 = a(applicationId, c2);
        if (kotlin.jvm.internal.p.a((Object) applicationId, (Object) g.m())) {
            e.set(a.SUCCESS);
            f19966a.g();
        }
        return a2;
    }

    private static Map<String, Map<String, p.b>> a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        p.b bVar;
        List a2;
        HashMap hashMap = new HashMap();
        if (!(jSONObject == null || (optJSONArray = jSONObject.optJSONArray("data")) == null)) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                p.b.a aVar = p.b.f19962c;
                JSONObject dialogConfigJSON = optJSONArray.optJSONObject(i);
                kotlin.jvm.internal.p.b(dialogConfigJSON, "dialogConfigData.optJSONObject(i)");
                kotlin.jvm.internal.p.d(dialogConfigJSON, "dialogConfigJSON");
                String dialogNameWithFeature = dialogConfigJSON.optString("name");
                Uri uri = null;
                if (ae.a(dialogNameWithFeature)) {
                    bVar = null;
                } else {
                    kotlin.jvm.internal.p.b(dialogNameWithFeature, "dialogNameWithFeature");
                    a2 = kotlin.h.p.a(dialogNameWithFeature, new String[]{"|"}, false, 0);
                    if (a2.size() != 2) {
                        bVar = null;
                    } else {
                        String str = (String) n.e((List<? extends Object>) a2);
                        String str2 = (String) n.g((List<? extends Object>) a2);
                        bVar = null;
                        if (!ae.a(str)) {
                            if (ae.a(str2)) {
                                bVar = null;
                            } else {
                                String optString = dialogConfigJSON.optString("url");
                                if (!ae.a(optString)) {
                                    uri = Uri.parse(optString);
                                }
                                bVar = new p.b(str, str2, uri, p.b.a.a(dialogConfigJSON.optJSONArray("versions")), null);
                            }
                        }
                    }
                }
                if (bVar != null) {
                    String str3 = bVar.f19963a;
                    Map map = (Map) hashMap.get(str3);
                    HashMap hashMap2 = map;
                    if (map == null) {
                        hashMap2 = new HashMap();
                        hashMap.put(str3, hashMap2);
                    }
                    hashMap2.put(bVar.f19964b, bVar);
                }
            }
        }
        return hashMap;
    }

    public static final void a() {
        Context i = g.i();
        String m = g.m();
        if (ae.a(m)) {
            e.set(a.ERROR);
            f19966a.g();
        } else if (f19969d.containsKey(m)) {
            e.set(a.SUCCESS);
            f19966a.g();
        } else {
            AtomicReference<a> atomicReference = e;
            if (!(atomicReference.compareAndSet(a.NOT_LOADED, a.LOADING) || atomicReference.compareAndSet(a.ERROR, a.LOADING))) {
                f19966a.g();
                return;
            }
            ag agVar = ag.f36785a;
            String format = String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{m}, 1));
            kotlin.jvm.internal.p.b(format, "java.lang.String.format(format, *args)");
            g.f().execute(new c(i, format, m));
        }
    }

    public static final void a(b callback) {
        kotlin.jvm.internal.p.d(callback, "callback");
        f.add(callback);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject c(String str) {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f19968c);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest request = GraphRequest.a(str);
        request.a();
        kotlin.jvm.internal.p.b(request, "request");
        request.a(bundle);
        j b2 = request.b();
        kotlin.jvm.internal.p.b(b2, "request.executeAndWait()");
        JSONObject b3 = b2.b();
        JSONObject jSONObject = b3;
        if (b3 == null) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        synchronized (this) {
            a aVar = e.get();
            if (!(a.NOT_LOADED == aVar || a.LOADING == aVar)) {
                p pVar = f19969d.get(g.m());
                Handler handler = new Handler(Looper.getMainLooper());
                if (a.ERROR == aVar) {
                    while (true) {
                        ConcurrentLinkedQueue<b> concurrentLinkedQueue = f;
                        if (!concurrentLinkedQueue.isEmpty()) {
                            handler.post(new d(concurrentLinkedQueue.poll()));
                        } else {
                            return;
                        }
                    }
                } else {
                    while (true) {
                        ConcurrentLinkedQueue<b> concurrentLinkedQueue2 = f;
                        if (!concurrentLinkedQueue2.isEmpty()) {
                            handler.post(new e(concurrentLinkedQueue2.poll(), pVar));
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }
}
