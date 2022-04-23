package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.g;
import com.facebook.internal.b.b.a;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.facebook.internal.x;
import com.facebook.j;
import com.facebook.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19528a = "com.facebook.appevents.e";
    private static ScheduledFuture e;

    /* renamed from: b  reason: collision with root package name */
    private static final Integer f19529b = 100;

    /* renamed from: c  reason: collision with root package name */
    private static volatile d f19530c = new d();

    /* renamed from: d  reason: collision with root package name */
    private static final ScheduledExecutorService f19531d = Executors.newSingleThreadScheduledExecutor();
    private static final Runnable f = new Runnable() { // from class: com.facebook.appevents.e.1
        @Override // java.lang.Runnable
        public final void run() {
            if (!a.a(this)) {
                try {
                    e.a((ScheduledFuture) null);
                    if (g.a() != g.a.f19574b) {
                        e.b(j.TIMER);
                    }
                } catch (Throwable th) {
                    a.a(th, this);
                }
            }
        }
    };

    e() {
    }

    private static GraphRequest a(final a aVar, final o oVar, boolean z, final l lVar) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            String str = aVar.f19415b;
            boolean z2 = false;
            p a2 = q.a(str, false);
            final GraphRequest a3 = GraphRequest.a((AccessToken) null, String.format("%s/activities", str), (JSONObject) null, (GraphRequest.b) null);
            Bundle bundle = a3.f19373d;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString(AccessToken.ACCESS_TOKEN_KEY, aVar.f19414a);
            String d2 = h.d();
            if (d2 != null) {
                bundle2.putString("device_token", d2);
            }
            String e2 = h.e();
            if (e2 != null) {
                bundle2.putString("install_referrer", e2);
            }
            a3.f19373d = bundle2;
            if (a2 != null) {
                z2 = a2.f19958a;
            }
            int a4 = oVar.a(a3, com.facebook.g.i(), z2, z);
            if (a4 == 0) {
                return null;
            }
            lVar.f19656a += a4;
            a3.a(new GraphRequest.b() { // from class: com.facebook.appevents.e.5
                @Override // com.facebook.GraphRequest.b
                public final void a(j jVar) {
                    e.a(a.this, a3, jVar, oVar, lVar);
                }
            });
            return a3;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ d a(d dVar) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            f19530c = dVar;
            return dVar;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static l a(j jVar, d dVar) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            l lVar = new l();
            List<GraphRequest> a2 = a(dVar, lVar);
            if (a2.size() <= 0) {
                return null;
            }
            x.a(m.APP_EVENTS, f19528a, "Flushing %d events due to %s.", Integer.valueOf(lVar.f19656a), jVar.toString());
            for (GraphRequest graphRequest : a2) {
                GraphRequest.a(graphRequest);
            }
            return lVar;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static List<GraphRequest> a(d dVar, l lVar) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            boolean b2 = com.facebook.g.b(com.facebook.g.i());
            ArrayList arrayList = new ArrayList();
            for (a aVar : dVar.a()) {
                GraphRequest a2 = a(aVar, dVar.a(aVar), b2, lVar);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ ScheduledFuture a(ScheduledFuture scheduledFuture) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            e = scheduledFuture;
            return scheduledFuture;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static void a() {
        if (!a.a(e.class)) {
            try {
                f19531d.execute(new Runnable() { // from class: com.facebook.appevents.e.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!a.a(this)) {
                            try {
                                f.a(e.c());
                                e.a(new d());
                            } catch (Throwable th) {
                                a.a(th, this);
                            }
                        }
                    }
                });
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    static void a(final a aVar, GraphRequest graphRequest, j jVar, final o oVar, l lVar) {
        String str;
        if (!a.a(e.class)) {
            try {
                FacebookRequestError facebookRequestError = jVar.f20037b;
                String str2 = "Success";
                k kVar = k.SUCCESS;
                boolean z = true;
                if (facebookRequestError != null) {
                    if (facebookRequestError.getErrorCode() == -1) {
                        str2 = "Failed: No Connectivity";
                        kVar = k.NO_CONNECTIVITY;
                    } else {
                        str2 = String.format("Failed:\n  Response: %s\n  Error %s", jVar.toString(), facebookRequestError.toString());
                        kVar = k.SERVER_ERROR;
                    }
                }
                if (com.facebook.g.b(m.APP_EVENTS)) {
                    try {
                        str = new JSONArray((String) graphRequest.f).toString(2);
                    } catch (JSONException e2) {
                        str = "<Can't encode events for debug logging>";
                    }
                    x.a(m.APP_EVENTS, f19528a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.f19372c.toString(), str2, str);
                }
                if (facebookRequestError == null) {
                    z = false;
                }
                oVar.a(z);
                if (kVar == k.NO_CONNECTIVITY) {
                    com.facebook.g.f().execute(new Runnable() { // from class: com.facebook.appevents.e.6
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.a(this)) {
                                try {
                                    f.a(a.this, oVar);
                                } catch (Throwable th) {
                                    a.a(th, this);
                                }
                            }
                        }
                    });
                }
                if (kVar != k.SUCCESS && lVar.f19657b != k.NO_CONNECTIVITY) {
                    lVar.f19657b = kVar;
                }
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    public static void a(final a aVar, final c cVar) {
        if (!a.a(e.class)) {
            try {
                f19531d.execute(new Runnable() { // from class: com.facebook.appevents.e.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!a.a(this)) {
                            try {
                                e.c().a(a.this, cVar);
                                if (g.a() != g.a.f19574b && e.c().b() > e.d().intValue()) {
                                    e.b(j.EVENT_THRESHOLD);
                                } else if (e.e() == null) {
                                    e.a(e.g().schedule(e.f(), 15L, TimeUnit.SECONDS));
                                }
                            } catch (Throwable th) {
                                a.a(th, this);
                            }
                        }
                    }
                });
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    public static void a(final j jVar) {
        if (!a.a(e.class)) {
            try {
                f19531d.execute(new Runnable() { // from class: com.facebook.appevents.e.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!a.a(this)) {
                            try {
                                e.b(j.this);
                            } catch (Throwable th) {
                                a.a(th, this);
                            }
                        }
                    }
                });
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    public static Set<a> b() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return f19530c.a();
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static void b(j jVar) {
        if (!a.a(e.class)) {
            try {
                f19530c.a(f.a());
                try {
                    l a2 = a(jVar, f19530c);
                    if (a2 != null) {
                        Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                        intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", a2.f19656a);
                        intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", a2.f19657b);
                        androidx.i.a.a.a(com.facebook.g.i()).a(intent);
                    }
                } catch (Exception e2) {
                    Log.w(f19528a, "Caught unexpected exception while flushing app events: ", e2);
                }
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    static /* synthetic */ d c() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return f19530c;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ Integer d() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return f19529b;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ ScheduledFuture e() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return e;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ Runnable f() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return f;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    static /* synthetic */ ScheduledExecutorService g() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return f19531d;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }
}
