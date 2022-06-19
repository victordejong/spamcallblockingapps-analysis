package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.facebook.GraphRequest;
import com.facebook.internal.p036t0.C1194a;
import com.facebook.internal.p036t0.C1195b;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23228f0;
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001:\u00013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u001fH\u0007J\u001c\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020'J\u0012\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0012H\u0007J\u001f\u0010)\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0015H\u0001¢\u0006\u0002\b+J\b\u0010,\u001a\u00020'H\u0002J\u0018\u0010-\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u001fH\u0007J\b\u0010/\u001a\u00020'H\u0007J\u001a\u00100\u001a\u00020'2\b\b\u0002\u0010\u001d\u001a\u00020\u00042\u0006\u00101\u001a\u000202H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001b¨\u00064"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager;", "", "()V", "APPLICATION_FIELDS", "", "APPLICATION_GATEKEEPER_CACHE_TIMEOUT", "", "APPLICATION_GATEKEEPER_EDGE", "APPLICATION_GATEKEEPER_FIELD", "APPLICATION_GRAPH_DATA", "APPLICATION_PLATFORM", "APPLICATION_SDK_VERSION", "APP_GATEKEEPERS_PREFS_KEY_FORMAT", "APP_GATEKEEPERS_PREFS_STORE", "APP_PLATFORM", "TAG", "callbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "fetchedAppGateKeepers", "", "Lorg/json/JSONObject;", "gateKeeperRuntimeCache", "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "isLoading", "Ljava/util/concurrent/atomic/AtomicBoolean;", "timestamp", "Ljava/lang/Long;", "getAppGateKeepersQueryResponse", "applicationId", "getGateKeeperForKey", "", AnalyticsConstants.NAME, "defaultValue", "getGateKeepersForApplication", "", "isTimestampValid", "(Ljava/lang/Long;)Z", "loadAppGateKeepersAsync", "", "callback", "parseAppGateKeepersFromJSON", "gateKeepersJSON", "parseAppGateKeepersFromJSON$facebook_core_release", "pollCallbacks", "queryAppGateKeepers", "forceRequery", "resetRuntimeGateKeeperCache", "setRuntimeGateKeeper", "gateKeeper", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.b0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/b0.class */
public final class C1121b0 {

    /* renamed from: a */
    public static final C1121b0 f3084a = null;

    /* renamed from: b */
    public static final AtomicBoolean f3085b = new AtomicBoolean(false);

    /* renamed from: c */
    public static final ConcurrentLinkedQueue<AbstractC1122a> f3086c = new ConcurrentLinkedQueue<>();

    /* renamed from: d */
    public static final Map<String, JSONObject> f3087d = new ConcurrentHashMap();

    /* renamed from: e */
    public static Long f3088e;

    /* renamed from: f */
    public static C1195b f3089f;

    @Metadata(d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "", "onCompleted", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.b0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/b0$a.class */
    public interface AbstractC1122a {
        /* renamed from: a */
        void mo41744a();
    }

    static {
        d0.a(C1121b0.class).c();
    }

    /* renamed from: a */
    public static final JSONObject m41749a() {
        Bundle m8654X0 = C22128a.m8654X0("platform", Constants.ANDROID_PLATFORM);
        C23228f0 c23228f0 = C23228f0.f64291a;
        C23228f0 c23228f02 = C23228f0.f64291a;
        m8654X0.putString(HianalyticsBaseData.SDK_VERSION, "13.0.0");
        m8654X0.putString("fields", "gatekeepers");
        GraphRequest.C0923c c0923c = GraphRequest.f2543k;
        String format = String.format("app/%s", Arrays.copyOf(new Object[]{"mobile_sdk_gk"}, 1));
        l.d(format, "java.lang.String.format(format, *args)");
        GraphRequest m42000h = c0923c.m42000h(null, format, null);
        m42000h.m42008l(m8654X0);
        JSONObject jSONObject = m42000h.m42017c().f64336f;
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return jSONObject2;
    }

    /* renamed from: b */
    public static final boolean m41748b(String str, String str2, boolean z) {
        HashMap hashMap;
        l.e(str, AnalyticsConstants.NAME);
        ArrayList arrayList = null;
        m41747c(null);
        if (!f3087d.containsKey(str2)) {
            hashMap = new HashMap();
        } else {
            C1195b c1195b = f3089f;
            if (c1195b != null) {
                l.e(str2, "appId");
                ConcurrentHashMap<String, C1194a> concurrentHashMap = c1195b.f3256a.get(str2);
                if (concurrentHashMap != null) {
                    ArrayList arrayList2 = new ArrayList(concurrentHashMap.size());
                    Iterator<Map.Entry<String, C1194a>> it = concurrentHashMap.entrySet().iterator();
                    while (true) {
                        arrayList = arrayList2;
                        if (!it.hasNext()) {
                            break;
                        }
                        arrayList2.add(it.next().getValue());
                    }
                }
            }
            if (arrayList != null) {
                HashMap hashMap2 = new HashMap();
                Iterator it2 = arrayList.iterator();
                while (true) {
                    hashMap = hashMap2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    C1194a c1194a = (C1194a) it2.next();
                    hashMap2.put(c1194a.f3254a, Boolean.valueOf(c1194a.f3255b));
                }
            } else {
                HashMap hashMap3 = new HashMap();
                JSONObject jSONObject = f3087d.get(str2);
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject == null) {
                    jSONObject2 = new JSONObject();
                }
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    l.d(next, AnalyticsConstants.KEY);
                    hashMap3.put(next, Boolean.valueOf(jSONObject2.optBoolean(next)));
                }
                C1195b c1195b2 = f3089f;
                C1195b c1195b3 = c1195b2;
                if (c1195b2 == null) {
                    c1195b3 = new C1195b();
                }
                ArrayList arrayList3 = new ArrayList(hashMap3.size());
                for (Map.Entry entry : hashMap3.entrySet()) {
                    arrayList3.add(new C1194a((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                l.e(str2, "appId");
                l.e(arrayList3, "gateKeeperList");
                ConcurrentHashMap<String, C1194a> concurrentHashMap2 = new ConcurrentHashMap<>();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    C1194a c1194a2 = (C1194a) it3.next();
                    concurrentHashMap2.put(c1194a2.f3254a, c1194a2);
                }
                c1195b3.f3256a.put(str2, concurrentHashMap2);
                f3089f = c1195b3;
                hashMap = hashMap3;
            }
        }
        if (hashMap.containsKey(str)) {
            Boolean bool = (Boolean) hashMap.get(str);
            if (bool == null) {
                return z;
            }
            z = bool.booleanValue();
        }
        return z;
    }

    /* renamed from: c */
    public static final void m41747c(AbstractC1122a abstractC1122a) {
        synchronized (C1121b0.class) {
            if (abstractC1122a != null) {
                try {
                    f3086c.add(abstractC1122a);
                } catch (Throwable th) {
                    throw th;
                }
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            final String m7353b = C23228f0.m7353b();
            Long l = f3088e;
            if (!(l != null && System.currentTimeMillis() - l.longValue() < DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL) || !f3087d.containsKey(m7353b)) {
                final Context m7354a = C23228f0.m7354a();
                final String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{m7353b}, 1));
                l.d(format, "java.lang.String.format(format, *args)");
                JSONObject jSONObject = null;
                String string = m7354a.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
                if (!C1168q0.m41700B(string)) {
                    try {
                        jSONObject = new JSONObject(string);
                    } catch (JSONException e) {
                        C1168q0.m41696F("FacebookSDK", e);
                    }
                    if (jSONObject != null) {
                        m41746d(m7353b, jSONObject);
                    }
                }
                C23228f0 c23228f02 = C23228f0.f64291a;
                Executor m7350e = C23228f0.m7350e();
                if (!f3085b.compareAndSet(false, true)) {
                    return;
                }
                m7350e.execute(new Runnable() { // from class: com.facebook.internal.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str = m7353b;
                        Context context = m7354a;
                        String str2 = format;
                        l.e(str, "$applicationId");
                        l.e(context, "$context");
                        l.e(str2, "$gateKeepersKey");
                        C1121b0 c1121b0 = C1121b0.f3084a;
                        JSONObject m41749a = C1121b0.m41749a();
                        if (m41749a.length() != 0) {
                            C1121b0.m41746d(str, m41749a);
                            context.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(str2, m41749a.toString()).apply();
                            C1121b0.f3088e = Long.valueOf(System.currentTimeMillis());
                        }
                        C1121b0.m41745e();
                        C1121b0.f3085b.set(false);
                    }
                });
                return;
            }
            Handler handler = new Handler(Looper.getMainLooper());
            while (true) {
                ConcurrentLinkedQueue<AbstractC1122a> concurrentLinkedQueue = f3086c;
                if (concurrentLinkedQueue.isEmpty()) {
                    return;
                }
                AbstractC1122a poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new RunnableC1126d(poll));
                }
            }
        }
    }

    /* renamed from: d */
    public static final JSONObject m41746d(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        synchronized (C1121b0.class) {
            try {
                l.e(str, "applicationId");
                JSONObject jSONObject4 = f3087d.get(str);
                jSONObject2 = jSONObject4;
                if (jSONObject4 == null) {
                    jSONObject2 = new JSONObject();
                }
                int i = 0;
                if (jSONObject == null) {
                    jSONObject3 = null;
                } else {
                    JSONArray optJSONArray = jSONObject.optJSONArray(RemoteMessageConst.DATA);
                    jSONObject3 = optJSONArray == null ? null : optJSONArray.optJSONObject(0);
                }
                JSONObject jSONObject5 = jSONObject3;
                if (jSONObject3 == null) {
                    jSONObject5 = new JSONObject();
                }
                JSONArray optJSONArray2 = jSONObject5.optJSONArray("gatekeepers");
                JSONArray jSONArray = optJSONArray2;
                if (optJSONArray2 == null) {
                    jSONArray = new JSONArray();
                }
                int length = jSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i2 = i + 1;
                        try {
                            JSONObject jSONObject6 = jSONArray.getJSONObject(i);
                            jSONObject2.put(jSONObject6.getString(AnalyticsConstants.KEY), jSONObject6.getBoolean("value"));
                        } catch (JSONException e) {
                            C1168q0.m41696F("FacebookSDK", e);
                        }
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                }
                f3087d.put(str, jSONObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject2;
    }

    /* renamed from: e */
    public static final void m41745e() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<AbstractC1122a> concurrentLinkedQueue = f3086c;
            if (!concurrentLinkedQueue.isEmpty()) {
                AbstractC1122a poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new RunnableC1126d(poll));
                }
            } else {
                return;
            }
        }
    }
}
