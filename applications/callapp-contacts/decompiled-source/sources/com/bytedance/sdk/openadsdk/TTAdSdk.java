package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.h.c;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.i.a;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.m;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.v;
import com.bytedance.sdk.openadsdk.utils.y;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdSdk.class */
public final class TTAdSdk {

    /* renamed from: c  reason: collision with root package name */
    private static SharedPreferences.OnSharedPreferenceChangeListener f8402c;

    /* renamed from: a  reason: collision with root package name */
    private static AtomicBoolean f8400a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f8401b = false;

    /* renamed from: d  reason: collision with root package name */
    private static final TTAdManager f8403d = new u();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdSdk$InitCallback.class */
    public interface InitCallback {
        void fail(int i, String str);

        void success();
    }

    private static void a(final long j, final boolean z, final TTAdConfig tTAdConfig) {
        e.a(new g("initMustBeCall") { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.5
            @Override // java.lang.Runnable
            public final void run() {
                if (n.h().z()) {
                    try {
                        boolean c2 = com.bytedance.sdk.openadsdk.core.g.b().c();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(VastIconXmlManager.DURATION, j);
                        jSONObject.put("is_async", z);
                        jSONObject.put("is_multi_process", tTAdConfig.isSupportMultiProcess());
                        jSONObject.put("is_debug", tTAdConfig.isDebug());
                        jSONObject.put("is_use_texture_view", tTAdConfig.isUseTextureView());
                        jSONObject.put("is_activate_init", c2);
                        com.bytedance.sdk.openadsdk.core.g.b().a(false);
                        a.a().a("pangle_sdk_init", jSONObject);
                        q.a("TTAdSdk", "pangle_sdk_init = ", jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    private static void b(final Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig.getHttpStack() != null) {
            com.bytedance.sdk.openadsdk.j.e.a(tTAdConfig.getHttpStack());
        }
        k.f8986a = tTAdConfig.isAsyncInit();
        TTAdManager tTAdManager = f8403d;
        tTAdManager.setAppId(tTAdConfig.getAppId()).setCoppa(tTAdConfig.getCoppa()).setGdpr(tTAdConfig.getGDPR()).setName(tTAdConfig.getAppName()).setPaid(tTAdConfig.isPaid()).setKeywords(tTAdConfig.getKeywords()).setData(tTAdConfig.getData()).setTitleBarTheme(tTAdConfig.getTitleBarTheme()).setAllowShowNotifiFromSDK(tTAdConfig.isAllowShowNotify()).isUseTextureView(tTAdConfig.isUseTextureView()).setNeedClearTaskReset(tTAdConfig.getNeedClearTaskReset()).setTTSecAbs(tTAdConfig.getTTSecAbs());
        try {
            if (tTAdConfig.isDebug()) {
                q.b();
                tTAdManager.openDebugMode();
                m.a();
                com.bytedance.sdk.openadsdk.video.d.a.a();
            }
        } catch (Throwable th) {
        }
        com.bytedance.sdk.openadsdk.core.h.e.f8974a = c.b(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.2
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                if (com.bytedance.sdk.openadsdk.core.h.e.f8975b.equals(str)) {
                    String b2 = c.b(context);
                    boolean z = false;
                    if ((TextUtils.isEmpty(b2) && !TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.h.e.f8974a)) || !b2.equals(com.bytedance.sdk.openadsdk.core.h.e.f8974a)) {
                        z = true;
                    }
                    if (z) {
                        c.a(n.h()).a(true);
                        com.bytedance.sdk.openadsdk.core.h.e.f8974a = b2;
                    }
                }
            }
        };
        f8402c = onSharedPreferenceChangeListener;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, TTAdConfig tTAdConfig, boolean z) {
        if (d.a()) {
            k.f8987b.set(true);
            com.bytedance.sdk.openadsdk.multipro.d.a(context);
            if (tTAdConfig.isSupportMultiProcess()) {
                b.a();
            }
            updateAdConfig(tTAdConfig);
            b(context, tTAdConfig);
            k.a();
        }
    }

    private static void c(Context context, TTAdConfig tTAdConfig) {
        com.bytedance.sdk.openadsdk.utils.u.a((Object) context, "Context is null, please check.");
        com.bytedance.sdk.openadsdk.utils.u.a(tTAdConfig, "TTAdConfig is null, please check.");
        n.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final Context context, final TTAdConfig tTAdConfig) {
        e.a(new g("init sync") { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.3
            @Override // java.lang.Runnable
            public final void run() {
                com.bytedance.sdk.openadsdk.core.h.e h = n.h();
                if (!h.y()) {
                    synchronized (h) {
                        if (!h.y()) {
                            h.a();
                        }
                    }
                }
                com.bytedance.sdk.openadsdk.j.e.c().f();
                h.f();
                com.bytedance.sdk.openadsdk.j.e.c().e();
                com.bytedance.sdk.openadsdk.j.e.c().d();
                k.a(context);
                e.a(true);
                if (Build.VERSION.SDK_INT != 29 || !y.r()) {
                    h.a(context);
                }
                com.bytedance.sdk.openadsdk.video.a.b.a.a(context, 20);
            }
        }, 10);
        k.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!TTAdConfig.this.isSupportMultiProcess()) {
                    c.a(n.h()).a(true);
                } else if (v.a(context)) {
                    c.a(n.h()).a(true);
                    q.c("TTAdSdk", "Load setting in main process");
                }
                n.c().a();
                n.e().a();
                n.d().a();
            }
        }, 10000L);
    }

    public static TTAdManager getAdManager() {
        return f8403d;
    }

    public static int getCoppa() {
        return f8403d.getCoppa();
    }

    public static int getGdpr() {
        return f8403d.getCoppa();
    }

    public static TTAdManager init(Context context, TTAdConfig tTAdConfig) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Looper.getMainLooper() == Looper.myLooper()) {
            k.f8988c = true;
            if (f8401b) {
                return f8403d;
            }
            try {
                c(context, tTAdConfig);
                b(context, tTAdConfig, false);
                d(context, tTAdConfig);
                a(SystemClock.elapsedRealtime() - elapsedRealtime, false, tTAdConfig);
                f8401b = true;
            } catch (Throwable th) {
                th.printStackTrace();
                f8401b = false;
            }
            return f8403d;
        }
        throw new RuntimeException("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
    }

    public static void init(final Context context, final TTAdConfig tTAdConfig, final InitCallback initCallback) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Looper.getMainLooper() == Looper.myLooper()) {
            k.f8988c = true;
            if (!f8401b) {
                c(context, tTAdConfig);
                a(SystemClock.elapsedRealtime() - elapsedRealtime, true, tTAdConfig);
                k.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            TTAdSdk.b(context, tTAdConfig, true);
                            InitCallback initCallback2 = initCallback;
                            if (initCallback2 != null) {
                                initCallback2.success();
                            }
                            TTAdSdk.d(context, tTAdConfig);
                            boolean unused = TTAdSdk.f8401b = true;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            InitCallback initCallback3 = initCallback;
                            if (initCallback3 != null) {
                                initCallback3.fail(ConferenceActivity.SNACK_BAR_DURATION, th.getMessage());
                            }
                            boolean unused2 = TTAdSdk.f8401b = false;
                        }
                    }
                });
            } else if (initCallback != null) {
                initCallback.success();
            }
        } else {
            throw new RuntimeException("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
        }
    }

    public static boolean isInitSuccess() {
        return f8401b;
    }

    public static void setCoppa(int i) {
        f8403d.setCoppa(i);
        c.a(n.h()).a(true);
    }

    public static void setGdpr(int i) {
        f8403d.setGdpr(i);
        c.a(n.h()).a(true);
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        if (tTAdConfig != null) {
            if (!TextUtils.isEmpty(tTAdConfig.getData())) {
                com.bytedance.sdk.openadsdk.core.g.b().d(tTAdConfig.getData());
            }
            if (!TextUtils.isEmpty(tTAdConfig.getKeywords())) {
                com.bytedance.sdk.openadsdk.core.g.b().c(tTAdConfig.getKeywords());
            }
        }
    }
}
