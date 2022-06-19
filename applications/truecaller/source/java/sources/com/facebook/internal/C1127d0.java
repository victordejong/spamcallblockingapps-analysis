package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.internal.C1127d0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23228f0;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001:\u0002BCB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020$H\u0007J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004H\u0002J\u0014\u00104\u001a\u0004\u0018\u00010!2\b\u00103\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u00105\u001a\u00020/H\u0007J\u001d\u00106\u001a\u00020!2\u0006\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u000202H��¢\u0006\u0002\b8J*\u00109\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020;0 0:2\b\u0010<\u001a\u0004\u0018\u000102H\u0002J\b\u0010=\u001a\u00020/H\u0002J\u001a\u0010>\u001a\u0004\u0018\u00010!2\u0006\u00103\u001a\u00020\u00042\u0006\u0010?\u001a\u00020&H\u0007J\u0010\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020&H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010'\u001a\u0010\u0012\f\u0012\n **\u0004\u0018\u00010)0)0(X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager;", "", "()V", "APPLICATION_FIELDS", "", "APP_SETTINGS_PREFS_KEY_FORMAT", "APP_SETTINGS_PREFS_STORE", "APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES", "APP_SETTING_APP_EVENTS_AAM_RULE", "APP_SETTING_APP_EVENTS_EVENT_BINDINGS", "APP_SETTING_APP_EVENTS_FEATURE_BITMASK", "APP_SETTING_APP_EVENTS_SESSION_TIMEOUT", "APP_SETTING_DIALOG_CONFIGS", "APP_SETTING_FIELDS", "", "APP_SETTING_NUX_CONTENT", "APP_SETTING_NUX_ENABLED", "APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD", "APP_SETTING_SMART_LOGIN_OPTIONS", "APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING", "AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "", "CODELESS_EVENTS_ENABLED_BITMASK_FIELD", "IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD", "MONITOR_ENABLED_BITMASK_FIELD", "SDK_UPDATE_MESSAGE", "SMART_LOGIN_BOOKMARK_ICON_URL", "SMART_LOGIN_MENU_ICON_URL", "SUGGESTED_EVENTS_SETTING", "TAG", "TRACK_UNINSTALL_ENABLED_BITMASK_FIELD", "fetchedAppSettings", "", "Lcom/facebook/internal/FetchedAppSettings;", "fetchedAppSettingsCallbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "isUnityInit", "", "loadingState", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "kotlin.jvm.PlatformType", "printedSDKUpdatedMessage", "unityEventBindings", "Lorg/json/JSONArray;", "getAppSettingsAsync", "", "callback", "getAppSettingsQueryResponse", "Lorg/json/JSONObject;", "applicationId", "getAppSettingsWithoutQuery", "loadAppSettingsAsync", "parseAppSettingsFromJSON", "settingsJSON", "parseAppSettingsFromJSON$facebook_core_release", "parseDialogConfigurations", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "dialogConfigResponse", "pollCallbacks", "queryAppSettings", "forceRequery", "setIsUnityInit", "flag", "FetchAppSettingState", "FetchedAppSettingsCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.d0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/d0.class */
public final class C1127d0 {

    /* renamed from: b */
    public static final String f3108b;

    /* renamed from: g */
    public static boolean f3113g;

    /* renamed from: h */
    public static JSONArray f3114h;

    /* renamed from: a */
    public static final C1127d0 f3107a = new C1127d0();

    /* renamed from: c */
    public static final List<String> f3109c = i.T(new String[]{"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting"});

    /* renamed from: d */
    public static final Map<String, C1124c0> f3110d = new ConcurrentHashMap();

    /* renamed from: e */
    public static final AtomicReference<EnumC1128a> f3111e = new AtomicReference<>(EnumC1128a.NOT_LOADED);

    /* renamed from: f */
    public static final ConcurrentLinkedQueue<AbstractC1129b> f3112f = new ConcurrentLinkedQueue<>();

    @Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "", "(Ljava/lang/String;I)V", "NOT_LOADED", "LOADING", "SUCCESS", "ERROR", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.d0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/d0$a.class */
    public enum EnumC1128a {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "", "onError", "", "onSuccess", "fetchedAppSettings", "Lcom/facebook/internal/FetchedAppSettings;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.d0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/d0$b.class */
    public interface AbstractC1129b {
        /* renamed from: a */
        void mo41737a();

        /* renamed from: b */
        void mo41736b(C1124c0 c1124c0);
    }

    static {
        String simpleName = C1127d0.class.getSimpleName();
        l.d(simpleName, "FetchedAppSettingsManager::class.java.simpleName");
        f3108b = simpleName;
    }

    /* renamed from: b */
    public static final C1124c0 m41742b(String str) {
        return str != null ? f3110d.get(str) : null;
    }

    /* renamed from: c */
    public static final void m41741c() {
        EnumC1128a enumC1128a = EnumC1128a.ERROR;
        C1127d0 c1127d0 = f3107a;
        C23228f0 c23228f0 = C23228f0.f64291a;
        final Context m7354a = C23228f0.m7354a();
        final String m7353b = C23228f0.m7353b();
        if (C1168q0.m41700B(m7353b)) {
            f3111e.set(enumC1128a);
            c1127d0.m41739e();
        } else if (f3110d.containsKey(m7353b)) {
            f3111e.set(EnumC1128a.SUCCESS);
            c1127d0.m41739e();
        } else {
            AtomicReference<EnumC1128a> atomicReference = f3111e;
            EnumC1128a enumC1128a2 = EnumC1128a.NOT_LOADED;
            EnumC1128a enumC1128a3 = EnumC1128a.LOADING;
            if (!(atomicReference.compareAndSet(enumC1128a2, enumC1128a3) || atomicReference.compareAndSet(enumC1128a, enumC1128a3))) {
                c1127d0.m41739e();
                return;
            }
            final String m8562v = C22128a.m8562v(new Object[]{m7353b}, 1, "com.facebook.internal.APP_SETTINGS.%s", "java.lang.String.format(format, *args)");
            C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.internal.f
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 747
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.RunnableC1132f.run():void");
                }
            });
        }
    }

    /* renamed from: f */
    public static final C1124c0 m41738f(String str, boolean z) {
        l.e(str, "applicationId");
        if (!z) {
            Map<String, C1124c0> map = f3110d;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        C1127d0 c1127d0 = f3107a;
        C1124c0 m41740d = c1127d0.m41740d(str, c1127d0.m41743a());
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (l.a(str, C23228f0.m7353b())) {
            f3111e.set(EnumC1128a.SUCCESS);
            c1127d0.m41739e();
        }
        return m41740d;
    }

    /* renamed from: a */
    public final JSONObject m41743a() {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f3109c);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest m42000h = GraphRequest.f2543k.m42000h(null, "app", null);
        m42000h.f2557j = true;
        m42000h.m42008l(bundle);
        JSONObject jSONObject = m42000h.m42017c().f64336f;
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return jSONObject2;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x044f A[LOOP:2: B:71:0x02b8->B:107:0x044f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x045d A[EDGE_INSN: B:119:0x045d->B:109:0x045d ?: BREAK  , SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.internal.C1124c0 m41740d(java.lang.String r24, org.json.JSONObject r25) {
        /*
            Method dump skipped, instructions count: 1236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1127d0.m41740d(java.lang.String, org.json.JSONObject):com.facebook.internal.c0");
    }

    /* renamed from: e */
    public final void m41739e() {
        synchronized (this) {
            EnumC1128a enumC1128a = f3111e.get();
            if (EnumC1128a.NOT_LOADED != enumC1128a && EnumC1128a.LOADING != enumC1128a) {
                C23228f0 c23228f0 = C23228f0.f64291a;
                final C1124c0 c1124c0 = f3110d.get(C23228f0.m7353b());
                Handler handler = new Handler(Looper.getMainLooper());
                if (EnumC1128a.ERROR == enumC1128a) {
                    while (true) {
                        ConcurrentLinkedQueue<AbstractC1129b> concurrentLinkedQueue = f3112f;
                        if (concurrentLinkedQueue.isEmpty()) {
                            return;
                        }
                        final AbstractC1129b poll = concurrentLinkedQueue.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                C1127d0.AbstractC1129b.this.mo41737a();
                            }
                        });
                    }
                } else {
                    while (true) {
                        ConcurrentLinkedQueue<AbstractC1129b> concurrentLinkedQueue2 = f3112f;
                        if (concurrentLinkedQueue2.isEmpty()) {
                            return;
                        }
                        final AbstractC1129b poll2 = concurrentLinkedQueue2.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                C1127d0.AbstractC1129b.this.mo41736b(c1124c0);
                            }
                        });
                    }
                }
            }
        }
    }
}
