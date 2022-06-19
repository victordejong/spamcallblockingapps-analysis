package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.p052i.p053a.C1179a;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.EnumC10396m;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10046g;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
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
/* renamed from: com.facebook.appevents.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/e.class */
public class C10016e {

    /* renamed from: a */
    private static final String f33283a = "com.facebook.appevents.e";

    /* renamed from: e */
    private static ScheduledFuture f33287e;

    /* renamed from: b */
    private static final Integer f33284b = 100;

    /* renamed from: c */
    private static volatile C10008d f33285c = new C10008d();

    /* renamed from: d */
    private static final ScheduledExecutorService f33286d = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: f */
    private static final Runnable f33288f = new Runnable() { // from class: com.facebook.appevents.e.1
        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                C10016e.m23598a((ScheduledFuture) null);
                if (C10046g.m23539a() == C10046g.EnumC10047a.f33340b) {
                    return;
                }
                C10016e.m23596b(EnumC10084j.TIMER);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    };

    C10016e() {
    }

    /* renamed from: a */
    private static GraphRequest m23603a(final C9958a c9958a, final C10101o c10101o, boolean z, final C10096l c10096l) {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            String str = c9958a.f33137b;
            boolean z2 = false;
            C10302p m23026a = C10306q.m23026a(str, false);
            final GraphRequest m23799a = GraphRequest.m23799a((AccessToken) null, String.format("%s/activities", str), (JSONObject) null, (GraphRequest.AbstractC9933b) null);
            Bundle bundle = m23799a.f33078d;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString(AccessToken.ACCESS_TOKEN_KEY, c9958a.f33136a);
            String m23476d = C10063h.m23476d();
            if (m23476d != null) {
                bundle2.putString("device_token", m23476d);
            }
            String m23475e = C10063h.m23475e();
            if (m23475e != null) {
                bundle2.putString("install_referrer", m23475e);
            }
            m23799a.f33078d = bundle2;
            if (m23026a != null) {
                z2 = m23026a.f33844a;
            }
            int m23407a = c10101o.m23407a(m23799a, C10181g.m23290i(), z2, z);
            if (m23407a == 0) {
                return null;
            }
            c10096l.f33443a += m23407a;
            m23799a.m23798a(new GraphRequest.AbstractC9933b() { // from class: com.facebook.appevents.e.5
                @Override // com.facebook.GraphRequest.AbstractC9933b
                /* renamed from: a */
                public final void mo22725a(C10351j c10351j) {
                    C10016e.m23605a(c9958a, m23799a, c10351j, c10101o, c10096l);
                }
            });
            return m23799a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ C10008d m23602a(C10008d c10008d) {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            f33285c = c10008d;
            return c10008d;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static C10096l m23599a(EnumC10084j enumC10084j, C10008d c10008d) {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            C10096l c10096l = new C10096l();
            List<GraphRequest> m23601a = m23601a(c10008d, c10096l);
            if (m23601a.size() <= 0) {
                return null;
            }
            C10336x.m22992a(EnumC10396m.APP_EVENTS, f33283a, "Flushing %d events due to %s.", Integer.valueOf(c10096l.f33443a), enumC10084j.toString());
            for (GraphRequest graphRequest : m23601a) {
                GraphRequest.m23796a(graphRequest);
            }
            return c10096l;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static List<GraphRequest> m23601a(C10008d c10008d, C10096l c10096l) {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            boolean m23300b = C10181g.m23300b(C10181g.m23290i());
            ArrayList arrayList = new ArrayList();
            for (C9958a c9958a : c10008d.m23635a()) {
                GraphRequest m23603a = m23603a(c9958a, c10008d.m23634a(c9958a), m23300b, c10096l);
                if (m23603a != null) {
                    arrayList.add(m23603a);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ ScheduledFuture m23598a(ScheduledFuture scheduledFuture) {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            f33287e = scheduledFuture;
            return scheduledFuture;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23606a() {
        if (C10249a.m23108a(C10016e.class)) {
            return;
        }
        try {
            f33286d.execute(new Runnable() { // from class: com.facebook.appevents.e.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10024f.m23584a(C10016e.m23595c());
                        C10016e.m23602a(new C10008d());
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
        }
    }

    /* renamed from: a */
    static void m23605a(final C9958a c9958a, GraphRequest graphRequest, C10351j c10351j, final C10101o c10101o, C10096l c10096l) {
        String str;
        if (C10249a.m23108a(C10016e.class)) {
            return;
        }
        try {
            FacebookRequestError facebookRequestError = c10351j.f33960b;
            String str2 = "Success";
            EnumC10095k enumC10095k = EnumC10095k.SUCCESS;
            boolean z = true;
            if (facebookRequestError != null) {
                if (facebookRequestError.getErrorCode() == -1) {
                    str2 = "Failed: No Connectivity";
                    enumC10095k = EnumC10095k.NO_CONNECTIVITY;
                } else {
                    str2 = String.format("Failed:\n  Response: %s\n  Error %s", c10351j.toString(), facebookRequestError.toString());
                    enumC10095k = EnumC10095k.SERVER_ERROR;
                }
            }
            if (C10181g.m23298b(EnumC10396m.APP_EVENTS)) {
                try {
                    str = new JSONArray((String) graphRequest.f33080f).toString(2);
                } catch (JSONException e) {
                    str = "<Can't encode events for debug logging>";
                }
                C10336x.m22992a(EnumC10396m.APP_EVENTS, f33283a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.f33077c.toString(), str2, str);
            }
            if (facebookRequestError == null) {
                z = false;
            }
            c10101o.m23405a(z);
            if (enumC10095k == EnumC10095k.NO_CONNECTIVITY) {
                C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.e.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            C10024f.m23585a(c9958a, c10101o);
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                });
            }
            if (enumC10095k == EnumC10095k.SUCCESS || c10096l.f33444b == EnumC10095k.NO_CONNECTIVITY) {
                return;
            }
            c10096l.f33444b = enumC10095k;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
        }
    }

    /* renamed from: a */
    public static void m23604a(final C9958a c9958a, final C10002c c10002c) {
        if (C10249a.m23108a(C10016e.class)) {
            return;
        }
        try {
            f33286d.execute(new Runnable() { // from class: com.facebook.appevents.e.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10016e.m23595c().m23633a(c9958a, c10002c);
                        if (C10046g.m23539a() != C10046g.EnumC10047a.f33340b && C10016e.m23595c().m23631b() > C10016e.m23594d().intValue()) {
                            C10016e.m23596b(EnumC10084j.EVENT_THRESHOLD);
                        } else if (C10016e.m23593e() != null) {
                        } else {
                            C10016e.m23598a(C10016e.m23591g().schedule(C10016e.m23592f(), 15L, TimeUnit.SECONDS));
                        }
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
        }
    }

    /* renamed from: a */
    public static void m23600a(final EnumC10084j enumC10084j) {
        if (C10249a.m23108a(C10016e.class)) {
            return;
        }
        try {
            f33286d.execute(new Runnable() { // from class: com.facebook.appevents.e.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10016e.m23596b(enumC10084j);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
        }
    }

    /* renamed from: b */
    public static Set<C9958a> m23597b() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33285c.m23635a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: b */
    static void m23596b(EnumC10084j enumC10084j) {
        if (C10249a.m23108a(C10016e.class)) {
            return;
        }
        try {
            f33285c.m23632a(C10024f.m23586a());
            try {
                C10096l m23599a = m23599a(enumC10084j, f33285c);
                if (m23599a == null) {
                    return;
                }
                Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", m23599a.f33443a);
                intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", m23599a.f33444b);
                C1179a.m43410a(C10181g.m23290i()).m43409a(intent);
            } catch (Exception e) {
                Log.w(f33283a, "Caught unexpected exception while flushing app events: ", e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
        }
    }

    /* renamed from: c */
    static /* synthetic */ C10008d m23595c() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33285c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: d */
    static /* synthetic */ Integer m23594d() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33284b;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: e */
    static /* synthetic */ ScheduledFuture m23593e() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33287e;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: f */
    static /* synthetic */ Runnable m23592f() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33288f;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }

    /* renamed from: g */
    static /* synthetic */ ScheduledExecutorService m23591g() {
        if (C10249a.m23108a(C10016e.class)) {
            return null;
        }
        try {
            return f33286d;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10016e.class);
            return null;
        }
    }
}
