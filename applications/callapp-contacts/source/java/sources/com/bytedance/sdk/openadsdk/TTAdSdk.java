package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4592k;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4652u;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import com.bytedance.sdk.openadsdk.core.p157h.RunnableC4584c;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.C5105d;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5471m;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5483u;
import com.bytedance.sdk.openadsdk.utils.C5484v;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import com.bytedance.sdk.openadsdk.video.p227a.p229b.C5496a;
import com.bytedance.sdk.openadsdk.video.p233d.C5503a;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdSdk.class */
public final class TTAdSdk {

    /* renamed from: c */
    private static SharedPreferences.OnSharedPreferenceChangeListener f15597c;

    /* renamed from: a */
    private static AtomicBoolean f15595a = new AtomicBoolean(false);

    /* renamed from: b */
    private static volatile boolean f15596b = false;

    /* renamed from: d */
    private static final TTAdManager f15598d = new C4652u();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdSdk$InitCallback.class */
    public interface InitCallback {
        void fail(int i, String str);

        void success();
    }

    /* renamed from: a */
    private static void m36039a(final long j, final boolean z, final TTAdConfig tTAdConfig) {
        C5052e.m33162a(new AbstractRunnableC5055g("initMustBeCall") { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.5
            @Override // java.lang.Runnable
            public final void run() {
                if (C4600n.m34805h().m34854z()) {
                    try {
                        boolean m35016c = C4570g.m35020b().m35016c();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(VastIconXmlManager.DURATION, j);
                        jSONObject.put("is_async", z);
                        jSONObject.put("is_multi_process", tTAdConfig.isSupportMultiProcess());
                        jSONObject.put("is_debug", tTAdConfig.isDebug());
                        jSONObject.put("is_use_texture_view", tTAdConfig.isUseTextureView());
                        jSONObject.put("is_activate_init", m35016c);
                        C4570g.m35020b().m35022a(false);
                        C4927a.m33549a().m33541a("pangle_sdk_init", jSONObject);
                        C5478q.m32116a("TTAdSdk", "pangle_sdk_init = ", jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    /* renamed from: b */
    private static void m36035b(final Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig.getHttpStack() != null) {
            C4959e.m33440a(tTAdConfig.getHttpStack());
        }
        C4592k.f16794a = tTAdConfig.isAsyncInit();
        TTAdManager tTAdManager = f15598d;
        tTAdManager.setAppId(tTAdConfig.getAppId()).setCoppa(tTAdConfig.getCoppa()).setGdpr(tTAdConfig.getGDPR()).setName(tTAdConfig.getAppName()).setPaid(tTAdConfig.isPaid()).setKeywords(tTAdConfig.getKeywords()).setData(tTAdConfig.getData()).setTitleBarTheme(tTAdConfig.getTitleBarTheme()).setAllowShowNotifiFromSDK(tTAdConfig.isAllowShowNotify()).isUseTextureView(tTAdConfig.isUseTextureView()).setNeedClearTaskReset(tTAdConfig.getNeedClearTaskReset()).setTTSecAbs(tTAdConfig.getTTSecAbs());
        try {
            if (tTAdConfig.isDebug()) {
                C5478q.m32114b();
                tTAdManager.openDebugMode();
                C5471m.m32131a();
                C5503a.m31973a();
            }
        } catch (Throwable th) {
        }
        C4588e.f16731a = RunnableC4584c.m34926b(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.2
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                if (C4588e.f16732b.equals(str)) {
                    String m34926b = RunnableC4584c.m34926b(context);
                    boolean z = false;
                    if ((TextUtils.isEmpty(m34926b) && !TextUtils.isEmpty(C4588e.f16731a)) || !m34926b.equals(C4588e.f16731a)) {
                        z = true;
                    }
                    if (!z) {
                        return;
                    }
                    RunnableC4584c.m34933a(C4600n.m34805h()).m34928a(true);
                    C4588e.f16731a = m34926b;
                }
            }
        };
        f15597c = onSharedPreferenceChangeListener;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    /* renamed from: b */
    public static void m36034b(Context context, TTAdConfig tTAdConfig, boolean z) {
        if (!C4587d.m34919a()) {
            return;
        }
        C4592k.f16795b.set(true);
        C5105d.m33052a(context);
        if (tTAdConfig.isSupportMultiProcess()) {
            C5094b.m33092a();
        }
        updateAdConfig(tTAdConfig);
        m36035b(context, tTAdConfig);
        C4592k.m34837a();
    }

    /* renamed from: c */
    private static void m36033c(Context context, TTAdConfig tTAdConfig) {
        C5483u.m32083a((Object) context, "Context is null, please check.");
        C5483u.m32083a(tTAdConfig, "TTAdConfig is null, please check.");
        C4600n.m34814a(context);
    }

    /* renamed from: d */
    public static void m36032d(final Context context, final TTAdConfig tTAdConfig) {
        C5052e.m33161a(new AbstractRunnableC5055g("init sync") { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.3
            @Override // java.lang.Runnable
            public final void run() {
                C4588e m34805h = C4600n.m34805h();
                if (!m34805h.m34855y()) {
                    synchronized (m34805h) {
                        if (!m34805h.m34855y()) {
                            m34805h.mo34915a();
                        }
                    }
                }
                C4959e.m33434c().m33431f();
                C5461h.m32153f();
                C4959e.m33434c().m33432e();
                C4959e.m33434c().m33433d();
                C4592k.m34836a(context);
                C5052e.m33160a(true);
                if (Build.VERSION.SDK_INT != 29 || !C5487y.m32037r()) {
                    C5461h.m32166a(context);
                }
                C5496a.m32002a(context, 20);
            }
        }, 10);
        C4592k.m34835b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!tTAdConfig.isSupportMultiProcess()) {
                    RunnableC4584c.m34933a(C4600n.m34805h()).m34928a(true);
                } else if (C5484v.m32078a(context)) {
                    RunnableC4584c.m34933a(C4600n.m34805h()).m34928a(true);
                    C5478q.m32109c("TTAdSdk", "Load setting in main process");
                }
                C4600n.m34810c().mo33798a();
                C4600n.m34808e().mo33798a();
                C4600n.m34809d().mo33798a();
            }
        }, 10000L);
    }

    public static TTAdManager getAdManager() {
        return f15598d;
    }

    public static int getCoppa() {
        return f15598d.getCoppa();
    }

    public static int getGdpr() {
        return f15598d.getCoppa();
    }

    public static TTAdManager init(Context context, TTAdConfig tTAdConfig) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Looper.getMainLooper() == Looper.myLooper()) {
            C4592k.f16796c = true;
            if (f15596b) {
                return f15598d;
            }
            try {
                m36033c(context, tTAdConfig);
                m36034b(context, tTAdConfig, false);
                m36032d(context, tTAdConfig);
                m36039a(SystemClock.elapsedRealtime() - elapsedRealtime, false, tTAdConfig);
                f15596b = true;
            } catch (Throwable th) {
                th.printStackTrace();
                f15596b = false;
            }
            return f15598d;
        }
        throw new RuntimeException("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
    }

    public static void init(final Context context, final TTAdConfig tTAdConfig, final InitCallback initCallback) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Looper.getMainLooper() == Looper.myLooper()) {
            C4592k.f16796c = true;
            if (f15596b) {
                if (initCallback == null) {
                    return;
                }
                initCallback.success();
                return;
            }
            m36033c(context, tTAdConfig);
            m36039a(SystemClock.elapsedRealtime() - elapsedRealtime, true, tTAdConfig);
            C4592k.m34835b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        TTAdSdk.m36034b(context, tTAdConfig, true);
                        InitCallback initCallback2 = initCallback;
                        if (initCallback2 != null) {
                            initCallback2.success();
                        }
                        TTAdSdk.m36032d(context, tTAdConfig);
                        boolean unused = TTAdSdk.f15596b = true;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        InitCallback initCallback3 = initCallback;
                        if (initCallback3 != null) {
                            initCallback3.fail(ConferenceActivity.SNACK_BAR_DURATION, th.getMessage());
                        }
                        boolean unused2 = TTAdSdk.f15596b = false;
                    }
                }
            });
            return;
        }
        throw new RuntimeException("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
    }

    public static boolean isInitSuccess() {
        return f15596b;
    }

    public static void setCoppa(int i) {
        f15598d.setCoppa(i);
        RunnableC4584c.m34933a(C4600n.m34805h()).m34928a(true);
    }

    public static void setGdpr(int i) {
        f15598d.setGdpr(i);
        RunnableC4584c.m34933a(C4600n.m34805h()).m34928a(true);
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        if (tTAdConfig == null) {
            return;
        }
        if (!TextUtils.isEmpty(tTAdConfig.getData())) {
            C4570g.m35020b().m35010d(tTAdConfig.getData());
        }
        if (TextUtils.isEmpty(tTAdConfig.getKeywords())) {
            return;
        }
        C4570g.m35020b().m35014c(tTAdConfig.getKeywords());
    }
}
