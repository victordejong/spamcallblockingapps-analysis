package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C1096x;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1143k0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.EnumC23248n0;
import s1.z.c.l;
@Metadata(d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J*\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190!2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0007J\u0010\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u000e\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00150(H\u0007J0\u0010)\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\b\u0010-\u001a\u00020\u0013H\u0007J\u001a\u0010.\u001a\u0004\u0018\u00010\u001f2\u0006\u0010$\u001a\u00020%2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, d2 = {"Lcom/facebook/appevents/AppEventQueue;", "", "()V", "FLUSH_PERIOD_IN_SECONDS", "", "NO_CONNECTIVITY_ERROR_CODE", "NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER", "TAG", "", "appEventCollection", "Lcom/facebook/appevents/AppEventCollection;", "flushRunnable", "Ljava/lang/Runnable;", "scheduledFuture", "Ljava/util/concurrent/ScheduledFuture;", "singleThreadExecutor", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "add", "", "accessTokenAppId", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "appEvent", "Lcom/facebook/appevents/AppEvent;", "buildRequestForSession", "Lcom/facebook/GraphRequest;", "appEvents", "Lcom/facebook/appevents/SessionEventsState;", "limitEventUsage", "", "flushState", "Lcom/facebook/appevents/FlushStatistics;", "buildRequests", "", "flushResults", "flush", "reason", "Lcom/facebook/appevents/FlushReason;", "flushAndWait", "getKeySet", "", "handleResponse", "request", "response", "Lcom/facebook/GraphResponse;", "persistToDisk", "sendEventsToServer", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.t */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/t.class */
public final class C1091t {

    /* renamed from: b */
    public static final String f3017b;

    /* renamed from: f */
    public static ScheduledFuture<?> f3021f;

    /* renamed from: a */
    public static final C1091t f3016a = new C1091t();

    /* renamed from: c */
    public static final int f3018c = 100;

    /* renamed from: d */
    public static volatile C1090s f3019d = new C1090s();

    /* renamed from: e */
    public static final ScheduledExecutorService f3020e = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: g */
    public static final Runnable f3022g = RunnableC0950c.f2623a;

    static {
        String name = C1091t.class.getName();
        l.d(name, "AppEventQueue::class.java.name");
        f3017b = name;
    }

    /* renamed from: a */
    public static final GraphRequest m41778a(final C1071p c1071p, final C0958f0 c0958f0, boolean z, final C0951c0 c0951c0) {
        if (C1220a.m41623b(C1091t.class)) {
            return null;
        }
        try {
            l.e(c1071p, "accessTokenAppId");
            l.e(c0958f0, "appEvents");
            l.e(c0951c0, "flushState");
            String str = c1071p.f2954a;
            C1127d0 c1127d0 = C1127d0.f3107a;
            boolean z2 = false;
            C1124c0 m41738f = C1127d0.m41738f(str, false);
            GraphRequest.C0923c c0923c = GraphRequest.f2543k;
            String format = String.format("%s/activities", Arrays.copyOf(new Object[]{str}, 1));
            l.d(format, "java.lang.String.format(format, *args)");
            final GraphRequest m41999i = c0923c.m41999i(null, format, null, null);
            m41999i.f2557j = true;
            Bundle bundle = m41999i.f2552e;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("access_token", c1071p.f2955b);
            C1096x.C1097a c1097a = C1096x.f3028c;
            synchronized (C1096x.m41765c()) {
                C1220a.m41623b(C1096x.class);
            }
            String m41757c = c1097a.m41757c();
            if (m41757c != null) {
                bundle2.putString("install_referrer", m41757c);
            }
            m41999i.m42008l(bundle2);
            if (m41738f != null) {
                z2 = m41738f.f3091a;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            int m41973c = c0958f0.m41973c(m41999i, C23228f0.m7354a(), z2, z);
            if (m41973c == 0) {
                return null;
            }
            c0951c0.f2624a += m41973c;
            m41999i.m42009k(new GraphRequest.AbstractC0922b() { // from class: com.facebook.appevents.e
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    C1071p c1071p2 = C1071p.this;
                    GraphRequest graphRequest = m41999i;
                    C0958f0 c0958f02 = c0958f0;
                    C0951c0 c0951c02 = c0951c0;
                    if (C1220a.m41623b(C1091t.class)) {
                        return;
                    }
                    try {
                        l.e(c1071p2, "$accessTokenAppId");
                        l.e(graphRequest, "$postRequest");
                        l.e(c0958f02, "$appEvents");
                        l.e(c0951c02, "$flushState");
                        l.e(c23244l0, "response");
                        C1091t.m41774e(c1071p2, graphRequest, c23244l0, c0958f02, c0951c02);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1091t.class);
                    }
                }
            });
            return m41999i;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final List<GraphRequest> m41777b(C1090s c1090s, C0951c0 c0951c0) {
        if (C1220a.m41623b(C1091t.class)) {
            return null;
        }
        try {
            l.e(c1090s, "appEventCollection");
            l.e(c0951c0, "flushResults");
            C23228f0 c23228f0 = C23228f0.f64291a;
            boolean m7347h = C23228f0.m7347h(C23228f0.m7354a());
            ArrayList arrayList = new ArrayList();
            for (C1071p c1071p : c1090s.m41779e()) {
                C0958f0 m41782b = c1090s.m41782b(c1071p);
                if (m41782b == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                GraphRequest m41778a = m41778a(c1071p, m41782b, m7347h, c0951c0);
                if (m41778a != null) {
                    arrayList.add(m41778a);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final void m41776c(final EnumC0947a0 enumC0947a0) {
        if (C1220a.m41623b(C1091t.class)) {
            return;
        }
        try {
            l.e(enumC0947a0, "reason");
            f3020e.execute(new Runnable() { // from class: com.facebook.appevents.f
                @Override // java.lang.Runnable
                public final void run() {
                    EnumC0947a0 enumC0947a02 = EnumC0947a0.this;
                    if (C1220a.m41623b(C1091t.class)) {
                        return;
                    }
                    try {
                        l.e(enumC0947a02, "$reason");
                        C1091t.m41775d(enumC0947a02);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1091t.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
        }
    }

    /* renamed from: d */
    public static final void m41775d(EnumC0947a0 enumC0947a0) {
        if (C1220a.m41623b(C1091t.class)) {
            return;
        }
        try {
            l.e(enumC0947a0, "reason");
            C1092u c1092u = C1092u.f3023a;
            f3019d.m41783a(C1092u.m41770c());
            try {
                C0951c0 m41773f = m41773f(enumC0947a0, f3019d);
                if (m41773f == null) {
                    return;
                }
                Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", m41773f.f2624a);
                intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", m41773f.f2625b);
                C23228f0 c23228f0 = C23228f0.f64291a;
                C27062a.m968b(C23228f0.m7354a()).m966d(intent);
            } catch (Exception e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
        }
    }

    /* renamed from: e */
    public static final void m41774e(final C1071p c1071p, GraphRequest graphRequest, C23244l0 c23244l0, final C0958f0 c0958f0, C0951c0 c0951c0) {
        EnumC0949b0 enumC0949b0;
        String str;
        EnumC0949b0 enumC0949b02 = EnumC0949b0.NO_CONNECTIVITY;
        EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
        EnumC0949b0 enumC0949b03 = EnumC0949b0.SUCCESS;
        if (C1220a.m41623b(C1091t.class)) {
            return;
        }
        try {
            l.e(c1071p, "accessTokenAppId");
            l.e(graphRequest, "request");
            l.e(c23244l0, "response");
            l.e(c0958f0, "appEvents");
            l.e(c0951c0, "flushState");
            FacebookRequestError facebookRequestError = c23244l0.f64335e;
            String str2 = "Success";
            if (facebookRequestError == null) {
                enumC0949b0 = enumC0949b03;
            } else if (facebookRequestError.f2530b == -1) {
                str2 = "Failed: No Connectivity";
                enumC0949b0 = enumC0949b02;
            } else {
                str2 = String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{c23244l0.toString(), facebookRequestError.toString()}, 2));
                l.d(str2, "java.lang.String.format(format, *args)");
                enumC0949b0 = EnumC0949b0.SERVER_ERROR;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (C23228f0.m7344k(enumC23248n0)) {
                try {
                    str = new JSONArray((String) graphRequest.f2553f).toString(2);
                    l.d(str, "{\n            val jsonArray = JSONArray(eventsJsonString)\n            jsonArray.toString(2)\n          }");
                } catch (JSONException e) {
                    str = "<Can't encode events for debug logging>";
                }
                C1143k0.f3139e.m41728c(enumC23248n0, f3017b, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", String.valueOf(graphRequest.f2550c), str2, str);
            }
            boolean z = facebookRequestError != null;
            synchronized (c0958f0) {
                if (!C1220a.m41623b(c0958f0)) {
                    if (z) {
                        try {
                            c0958f0.f2640c.addAll(c0958f0.f2641d);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, c0958f0);
                        }
                    }
                    c0958f0.f2641d.clear();
                    c0958f0.f2642e = 0;
                }
            }
            if (enumC0949b0 == enumC0949b02) {
                C23228f0 c23228f02 = C23228f0.f64291a;
                C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1071p c1071p2 = C1071p.this;
                        C0958f0 c0958f02 = c0958f0;
                        if (C1220a.m41623b(C1091t.class)) {
                            return;
                        }
                        try {
                            l.e(c1071p2, "$accessTokenAppId");
                            l.e(c0958f02, "$appEvents");
                            C1092u c1092u = C1092u.f3023a;
                            C1092u.m41772a(c1071p2, c0958f02);
                        } catch (Throwable th2) {
                            C1220a.m41624a(th2, C1091t.class);
                        }
                    }
                });
            }
            if (enumC0949b0 == enumC0949b03 || c0951c0.f2625b == enumC0949b02) {
                return;
            }
            l.e(enumC0949b0, "<set-?>");
            c0951c0.f2625b = enumC0949b0;
        } catch (Throwable th2) {
            C1220a.m41624a(th2, C1091t.class);
        }
    }

    /* renamed from: f */
    public static final C0951c0 m41773f(EnumC0947a0 enumC0947a0, C1090s c1090s) {
        if (C1220a.m41623b(C1091t.class)) {
            return null;
        }
        try {
            l.e(enumC0947a0, "reason");
            l.e(c1090s, "appEventCollection");
            C0951c0 c0951c0 = new C0951c0();
            List<GraphRequest> m41777b = m41777b(c1090s, c0951c0);
            if (!(!m41777b.isEmpty())) {
                return null;
            }
            C1143k0.f3139e.m41728c(EnumC23248n0.APP_EVENTS, f3017b, "Flushing %d events due to %s.", Integer.valueOf(c0951c0.f2624a), enumC0947a0.toString());
            for (GraphRequest graphRequest : m41777b) {
                graphRequest.m42017c();
            }
            return c0951c0;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
            return null;
        }
    }
}
