package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.callapp.contacts.model.Constants;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.j;
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
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001:\u00012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u001fH\u0007J\u001c\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020'J\u0012\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010)\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\b\u0010+\u001a\u00020'H\u0002J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u001fH\u0007J\b\u0010.\u001a\u00020'H\u0007J\u001a\u0010/\u001a\u00020'2\b\b\u0002\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u000201H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001b¨\u00063"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager;", "", "()V", "APPLICATION_FIELDS", "", "APPLICATION_GATEKEEPER_CACHE_TIMEOUT", "", "APPLICATION_GATEKEEPER_EDGE", "APPLICATION_GATEKEEPER_FIELD", "APPLICATION_GRAPH_DATA", "APPLICATION_PLATFORM", "APPLICATION_SDK_VERSION", "APP_GATEKEEPERS_PREFS_KEY_FORMAT", "APP_GATEKEEPERS_PREFS_STORE", "APP_PLATFORM", "TAG", "callbacks", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "fetchedAppGateKeepers", "", "Lorg/json/JSONObject;", "gateKeeperRuntimeCache", "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "isLoading", "Ljava/util/concurrent/atomic/AtomicBoolean;", Reporting.Key.TIMESTAMP, "Ljava/lang/Long;", "getAppGateKeepersQueryResponse", "applicationId", "getGateKeeperForKey", "", "name", "defaultValue", "getGateKeepersForApplication", "", "isTimestampValid", "(Ljava/lang/Long;)Z", "loadAppGateKeepersAsync", "", "callback", "parseAppGateKeepersFromJSON", "gateKeepersJSON", "pollCallbacks", "queryAppGateKeepers", "forceRequery", "resetRuntimeGateKeeperCache", "setRuntimeGateKeeper", "gateKeeper", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "Callback", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f19950a = new o();

    /* renamed from: b  reason: collision with root package name */
    private static final String f19951b = ac.b(o.class).an_();

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f19952c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentLinkedQueue<a> f19953d = new ConcurrentLinkedQueue<>();
    private static final Map<String, JSONObject> e = new ConcurrentHashMap();
    private static Long f;
    private static com.facebook.internal.a.b g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "", "onCompleted", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$a.class */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$b.class */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f19954a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f19955b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f19956c;

        b(String str, Context context, String str2) {
            this.f19954a = str;
            this.f19955b = context;
            this.f19956c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        o oVar = o.f19950a;
                        String applicationId = this.f19954a;
                        p.b(applicationId, "applicationId");
                        JSONObject c2 = o.c(applicationId);
                        if (c2.length() != 0) {
                            o oVar2 = o.f19950a;
                            String applicationId2 = this.f19954a;
                            p.b(applicationId2, "applicationId");
                            oVar2.a(applicationId2, c2);
                            this.f19955b.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(this.f19956c, c2.toString()).apply();
                            o oVar3 = o.f19950a;
                            o.f = Long.valueOf(System.currentTimeMillis());
                        }
                        o oVar4 = o.f19950a;
                        o.c();
                        o oVar5 = o.f19950a;
                        o.f19952c.set(false);
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/o$c.class */
    public static final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f19957a;

        c(a aVar) {
            this.f19957a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        this.f19957a.a();
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    private o() {
    }

    public static final JSONObject a(String applicationId) {
        p.d(applicationId, "applicationId");
        JSONObject c2 = c(applicationId);
        Context i = g.i();
        ag agVar = ag.f36785a;
        String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{applicationId}, 1));
        p.b(format, "java.lang.String.format(format, *args)");
        i.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(format, c2.toString()).apply();
        return f19950a.a(applicationId, c2);
    }

    public static final void a(a aVar) {
        synchronized (o.class) {
            if (aVar != null) {
                try {
                    f19953d.add(aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            String applicationId = g.m();
            Long l = f;
            if (!(l != null && System.currentTimeMillis() - l.longValue() < Constants.HOUR_IN_MILLIS) || !e.containsKey(applicationId)) {
                Context i = g.i();
                ag agVar = ag.f36785a;
                String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{applicationId}, 1));
                p.b(format, "java.lang.String.format(format, *args)");
                if (i != null) {
                    JSONObject jSONObject = null;
                    String string = i.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
                    if (!ae.a(string)) {
                        try {
                            jSONObject = new JSONObject(string);
                        } catch (JSONException e2) {
                            ae.a("FacebookSDK", (Exception) e2);
                        }
                        if (jSONObject != null) {
                            o oVar = f19950a;
                            p.b(applicationId, "applicationId");
                            oVar.a(applicationId, jSONObject);
                        }
                    }
                    Executor f2 = g.f();
                    if (f2 != null) {
                        if (f19952c.compareAndSet(false, true)) {
                            f2.execute(new b(applicationId, i, format));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            c();
        }
    }

    public static final boolean a(String name, String str, boolean z) {
        HashMap hashMap;
        Boolean bool;
        p.d(name, "name");
        List<com.facebook.internal.a.a> list = null;
        a((a) null);
        if (str != null) {
            Map<String, JSONObject> map = e;
            if (map.containsKey(str)) {
                com.facebook.internal.a.b bVar = g;
                if (bVar != null) {
                    list = bVar.a(str);
                }
                if (list != null) {
                    HashMap hashMap2 = new HashMap();
                    for (com.facebook.internal.a.a aVar : list) {
                        hashMap2.put(aVar.f19801a, Boolean.valueOf(aVar.f19802b));
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
                        p.b(key, "key");
                        hashMap3.put(key, Boolean.valueOf(jSONObject2.optBoolean(key)));
                    }
                    com.facebook.internal.a.b bVar2 = g;
                    com.facebook.internal.a.b bVar3 = bVar2;
                    if (bVar2 == null) {
                        bVar3 = new com.facebook.internal.a.b();
                    }
                    ArrayList arrayList = new ArrayList(hashMap3.size());
                    for (Map.Entry entry : hashMap3.entrySet()) {
                        arrayList.add(new com.facebook.internal.a.a((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                    }
                    bVar3.a(str, arrayList);
                    g = bVar3;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", com.mopub.common.Constants.ANDROID_PLATFORM);
        bundle.putString("sdk_version", g.k());
        bundle.putString("fields", "gatekeepers");
        ag agVar = ag.f36785a;
        String format = String.format("%s/%s", Arrays.copyOf(new Object[]{str, "mobile_sdk_gk"}, 2));
        p.b(format, "java.lang.String.format(format, *args)");
        GraphRequest request = GraphRequest.a(format);
        request.a();
        p.b(request, "request");
        request.a(bundle);
        j b2 = request.b();
        p.b(b2, "request.executeAndWait()");
        JSONObject b3 = b2.b();
        JSONObject jSONObject = b3;
        if (b3 == null) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<a> concurrentLinkedQueue = f19953d;
            if (!concurrentLinkedQueue.isEmpty()) {
                a poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new c(poll));
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
        if (r0 == null) goto L_0x0045;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject a(java.lang.String r6, org.json.JSONObject r7) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r6
            java.lang.String r1 = "applicationId"
            kotlin.jvm.internal.p.d(r0, r1)     // Catch: all -> 0x00af
            java.util.Map<java.lang.String, org.json.JSONObject> r0 = com.facebook.internal.o.e     // Catch: all -> 0x00af
            r1 = r6
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00af
            org.json.JSONObject r0 = (org.json.JSONObject) r0     // Catch: all -> 0x00af
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0026
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: all -> 0x00af
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: all -> 0x00af
        L_0x0026:
            r0 = 0
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0045
            r0 = r7
            java.lang.String r1 = "data"
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: all -> 0x00af
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 0
            org.json.JSONObject r0 = r0.optJSONObject(r1)     // Catch: all -> 0x00af
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x004d
        L_0x0045:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: all -> 0x00af
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x00af
        L_0x004d:
            r0 = r7
            java.lang.String r1 = "gatekeepers"
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: all -> 0x00af
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0063
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: all -> 0x00af
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x00af
        L_0x0063:
            r0 = r7
            int r0 = r0.length()     // Catch: all -> 0x00af
            r11 = r0
        L_0x0069:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L_0x009e
            r0 = r7
            r1 = r10
            org.json.JSONObject r0 = r0.getJSONObject(r1)     // Catch: JSONException -> 0x008e, all -> 0x00af
            r8 = r0
            r0 = r9
            r1 = r8
            java.lang.String r2 = "key"
            java.lang.String r1 = r1.getString(r2)     // Catch: JSONException -> 0x008e, all -> 0x00af
            r2 = r8
            java.lang.String r3 = "value"
            boolean r2 = r2.getBoolean(r3)     // Catch: JSONException -> 0x008e, all -> 0x00af
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: JSONException -> 0x008e, all -> 0x00af
            goto L_0x0098
        L_0x008e:
            r8 = move-exception
            java.lang.String r0 = "FacebookSDK"
            r1 = r8
            java.lang.Exception r1 = (java.lang.Exception) r1     // Catch: all -> 0x00af
            com.facebook.internal.ae.a(r0, r1)     // Catch: all -> 0x00af
        L_0x0098:
            int r10 = r10 + 1
            goto L_0x0069
        L_0x009e:
            java.util.Map<java.lang.String, org.json.JSONObject> r0 = com.facebook.internal.o.e     // Catch: all -> 0x00af
            r1 = r6
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x00af
            r0 = r5
            monitor-exit(r0)
            r0 = r9
            return r0
        L_0x00af:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.o.a(java.lang.String, org.json.JSONObject):org.json.JSONObject");
    }
}
