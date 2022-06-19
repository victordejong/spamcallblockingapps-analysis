package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.callapp.contacts.model.Constants;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.GraphRequest;
import com.facebook.internal.p298a.C10204a;
import com.facebook.internal.p298a.C10205b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001:\u00012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u001fH\u0007J\u001c\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020'J\u0012\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010)\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\b\u0010+\u001a\u00020'H\u0002J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u001fH\u0007J\b\u0010.\u001a\u00020'H\u0007J\u001a\u0010/\u001a\u00020'2\b\b\u0002\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u000201H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001b¨\u00063"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager;", "", "()V", "APPLICATION_FIELDS", "", "APPLICATION_GATEKEEPER_CACHE_TIMEOUT", "", "APPLICATION_GATEKEEPER_EDGE", "APPLICATION_GATEKEEPER_FIELD", "APPLICATION_GRAPH_DATA", "APPLICATION_PLATFORM", "APPLICATION_SDK_VERSION", "APP_GATEKEEPERS_PREFS_KEY_FORMAT", "APP_GATEKEEPERS_PREFS_STORE", "APP_PLATFORM", "TAG", "callbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "fetchedAppGateKeepers", "", "Lorg/json/JSONObject;", "gateKeeperRuntimeCache", "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "isLoading", "Ljava/util/concurrent/atomic/AtomicBoolean;", Reporting.Key.TIMESTAMP, "Ljava/lang/Long;", "getAppGateKeepersQueryResponse", "applicationId", "getGateKeeperForKey", "", "name", "defaultValue", "getGateKeepersForApplication", "", "isTimestampValid", "(Ljava/lang/Long;)Z", "loadAppGateKeepersAsync", "", "callback", "parseAppGateKeepersFromJSON", "gateKeepersJSON", "pollCallbacks", "queryAppGateKeepers", "forceRequery", "resetRuntimeGateKeeperCache", "setRuntimeGateKeeper", "gateKeeper", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "Callback", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.o */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/o.class */
public final class C10298o {

    /* renamed from: a */
    public static final C10298o f33832a = new C10298o();

    /* renamed from: b */
    private static final String f33833b = C18496ac.m3882b(C10298o.class).an_();

    /* renamed from: c */
    private static final AtomicBoolean f33834c = new AtomicBoolean(false);

    /* renamed from: d */
    private static final ConcurrentLinkedQueue<AbstractC10299a> f33835d = new ConcurrentLinkedQueue<>();

    /* renamed from: e */
    private static final Map<String, JSONObject> f33836e = new ConcurrentHashMap();

    /* renamed from: f */
    private static Long f33837f;

    /* renamed from: g */
    private static C10205b f33838g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "", "onCompleted", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.o$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$a.class */
    public interface AbstractC10299a {
        /* renamed from: a */
        void mo23033a();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.o$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$b.class */
    public static final class RunnableC10300b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f33839a;

        /* renamed from: b */
        final /* synthetic */ Context f33840b;

        /* renamed from: c */
        final /* synthetic */ String f33841c;

        RunnableC10300b(String str, Context context, String str2) {
            this.f33839a = str;
            this.f33840b = context;
            this.f33841c = str2;
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
                C10298o c10298o = C10298o.f33832a;
                String applicationId = this.f33839a;
                C18524p.m3843b(applicationId, "applicationId");
                JSONObject m23034c = C10298o.m23034c(applicationId);
                if (m23034c.length() != 0) {
                    C10298o c10298o2 = C10298o.f33832a;
                    String applicationId2 = this.f33839a;
                    C18524p.m3843b(applicationId2, "applicationId");
                    c10298o2.m23038a(applicationId2, m23034c);
                    this.f33840b.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(this.f33841c, m23034c.toString()).apply();
                    C10298o c10298o3 = C10298o.f33832a;
                    C10298o.f33837f = Long.valueOf(System.currentTimeMillis());
                }
                C10298o c10298o4 = C10298o.f33832a;
                C10298o.m23035c();
                C10298o c10298o5 = C10298o.f33832a;
                C10298o.f33834c.set(false);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.o$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$c.class */
    public static final class RunnableC10301c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC10299a f33842a;

        RunnableC10301c(AbstractC10299a abstractC10299a) {
            this.f33842a = abstractC10299a;
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
                this.f33842a.mo23033a();
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    private C10298o() {
    }

    /* renamed from: a */
    public static final JSONObject m23040a(String applicationId) {
        C18524p.m3840d(applicationId, "applicationId");
        JSONObject m23034c = m23034c(applicationId);
        Context m23290i = C10181g.m23290i();
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{applicationId}, 1));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        m23290i.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(format, m23034c.toString()).apply();
        return f33832a.m23038a(applicationId, m23034c);
    }

    /* renamed from: a */
    public static final void m23042a(AbstractC10299a abstractC10299a) {
        synchronized (C10298o.class) {
            if (abstractC10299a != null) {
                try {
                    f33835d.add(abstractC10299a);
                } catch (Throwable th) {
                    throw th;
                }
            }
            String applicationId = C10181g.m23286m();
            Long l = f33837f;
            if ((l != null && System.currentTimeMillis() - l.longValue() < Constants.HOUR_IN_MILLIS) && f33836e.containsKey(applicationId)) {
                m23035c();
                return;
            }
            Context m23290i = C10181g.m23290i();
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{applicationId}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            if (m23290i == null) {
                return;
            }
            JSONObject jSONObject = null;
            String string = m23290i.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
            if (!C10213ae.m23230a(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    C10213ae.m23228a("FacebookSDK", (Exception) e);
                }
                if (jSONObject != null) {
                    C10298o c10298o = f33832a;
                    C18524p.m3843b(applicationId, "applicationId");
                    c10298o.m23038a(applicationId, jSONObject);
                }
            }
            Executor m23293f = C10181g.m23293f();
            if (m23293f == null) {
                return;
            }
            if (!f33834c.compareAndSet(false, true)) {
                return;
            }
            m23293f.execute(new RunnableC10300b(applicationId, m23290i, format));
        }
    }

    /* renamed from: a */
    public static final boolean m23039a(String name, String str, boolean z) {
        HashMap hashMap;
        Boolean bool;
        C18524p.m3840d(name, "name");
        List<C10204a> list = null;
        m23042a((AbstractC10299a) null);
        if (str != null) {
            Map<String, JSONObject> map = f33836e;
            if (map.containsKey(str)) {
                C10205b c10205b = f33838g;
                if (c10205b != null) {
                    list = c10205b.m23264a(str);
                }
                if (list != null) {
                    HashMap hashMap2 = new HashMap();
                    for (C10204a c10204a : list) {
                        hashMap2.put(c10204a.f33639a, Boolean.valueOf(c10204a.f33640b));
                    }
                    hashMap = hashMap2;
                } else {
                    HashMap hashMap3 = new HashMap();
                    JSONObject jSONObject = map.get(str);
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject == null) {
                        jSONObject2 = new JSONObject();
                    }
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String key = keys.next();
                        C18524p.m3843b(key, "key");
                        hashMap3.put(key, Boolean.valueOf(jSONObject2.optBoolean(key)));
                    }
                    C10205b c10205b2 = f33838g;
                    C10205b c10205b3 = c10205b2;
                    if (c10205b2 == null) {
                        c10205b3 = new C10205b();
                    }
                    ArrayList arrayList = new ArrayList(hashMap3.size());
                    for (Map.Entry entry : hashMap3.entrySet()) {
                        arrayList.add(new C10204a((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                    }
                    c10205b3.m23263a(str, arrayList);
                    f33838g = c10205b3;
                    hashMap = hashMap3;
                }
                if (!hashMap.containsKey(name) && (bool = (Boolean) hashMap.get(name)) != null) {
                }
                return z;
            }
        }
        hashMap = new HashMap();
        return !hashMap.containsKey(name) ? z : bool.booleanValue();
    }

    /* renamed from: c */
    public static JSONObject m23034c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", com.mopub.common.Constants.ANDROID_PLATFORM);
        bundle.putString("sdk_version", C10181g.m23288k());
        bundle.putString("fields", "gatekeepers");
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("%s/%s", Arrays.copyOf(new Object[]{str, "mobile_sdk_gk"}, 2));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        GraphRequest request = GraphRequest.m23790a(format);
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

    /* renamed from: c */
    public static void m23035c() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<AbstractC10299a> concurrentLinkedQueue = f33835d;
            if (!concurrentLinkedQueue.isEmpty()) {
                AbstractC10299a poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new RunnableC10301c(poll));
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
        if (r0 == null) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject m23038a(java.lang.String r6, org.json.JSONObject r7) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r6
            java.lang.String r1 = "applicationId"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)     // Catch: java.lang.Throwable -> Laf
            java.util.Map<java.lang.String, org.json.JSONObject> r0 = com.facebook.internal.C10298o.f33836e     // Catch: java.lang.Throwable -> Laf
            r1 = r6
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Laf
            org.json.JSONObject r0 = (org.json.JSONObject) r0     // Catch: java.lang.Throwable -> Laf
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L26
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Laf
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> Laf
        L26:
            r0 = 0
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L45
            r0 = r7
            java.lang.String r1 = "data"
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: java.lang.Throwable -> Laf
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L45
            r0 = r7
            r1 = 0
            org.json.JSONObject r0 = r0.optJSONObject(r1)     // Catch: java.lang.Throwable -> Laf
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L4d
        L45:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Laf
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: java.lang.Throwable -> Laf
        L4d:
            r0 = r7
            java.lang.String r1 = "gatekeepers"
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: java.lang.Throwable -> Laf
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L63
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Laf
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: java.lang.Throwable -> Laf
        L63:
            r0 = r7
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Laf
            r11 = r0
        L69:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L9e
            r0 = r7
            r1 = r10
            org.json.JSONObject r0 = r0.getJSONObject(r1)     // Catch: org.json.JSONException -> L8e java.lang.Throwable -> Laf
            r8 = r0
            r0 = r9
            r1 = r8
            java.lang.String r2 = "key"
            java.lang.String r1 = r1.getString(r2)     // Catch: org.json.JSONException -> L8e java.lang.Throwable -> Laf
            r2 = r8
            java.lang.String r3 = "value"
            boolean r2 = r2.getBoolean(r3)     // Catch: org.json.JSONException -> L8e java.lang.Throwable -> Laf
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: org.json.JSONException -> L8e java.lang.Throwable -> Laf
            goto L98
        L8e:
            r8 = move-exception
            java.lang.String r0 = "FacebookSDK"
            r1 = r8
            java.lang.Exception r1 = (java.lang.Exception) r1     // Catch: java.lang.Throwable -> Laf
            com.facebook.internal.C10213ae.m23228a(r0, r1)     // Catch: java.lang.Throwable -> Laf
        L98:
            int r10 = r10 + 1
            goto L69
        L9e:
            java.util.Map<java.lang.String, org.json.JSONObject> r0 = com.facebook.internal.C10298o.f33836e     // Catch: java.lang.Throwable -> Laf
            r1 = r6
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Laf
            r0 = r5
            monitor-exit(r0)
            r0 = r9
            return r0
        Laf:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10298o.m23038a(java.lang.String, org.json.JSONObject):org.json.JSONObject");
    }
}
