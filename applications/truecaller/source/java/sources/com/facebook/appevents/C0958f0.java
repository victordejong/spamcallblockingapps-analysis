package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.p028j0.C1002a;
import com.facebook.appevents.p031m0.C1036h;
import com.facebook.internal.C1165q;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018�� %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u000fJ\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bJ&\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001bJ0\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020$2\u0006\u0010\"\u001a\u00020\u001bH\u0002R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lcom/facebook/appevents/SessionEventsState;", "", "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", "", "(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V", "accumulatedEventCount", "", "getAccumulatedEventCount", "()I", "accumulatedEvents", "", "Lcom/facebook/appevents/AppEvent;", "eventsToPersist", "", "getEventsToPersist", "()Ljava/util/List;", "inFlightEvents", "numSkippedEventsDueToFullBuffer", "accumulatePersistedEvents", "", "events", "addEvent", "event", "clearInFlightAndStats", "moveToAccumulated", "", "populateRequest", "request", "Lcom/facebook/GraphRequest;", "applicationContext", "Landroid/content/Context;", "includeImplicitEvents", "limitEventUsage", "numSkipped", "Lorg/json/JSONArray;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.f0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/f0.class */
public final class C0958f0 {

    /* renamed from: f */
    public static final String f2636f;

    /* renamed from: g */
    public static final int f2637g = 1000;

    /* renamed from: a */
    public final C1165q f2638a;

    /* renamed from: b */
    public final String f2639b;

    /* renamed from: c */
    public List<C1087r> f2640c = new ArrayList();

    /* renamed from: d */
    public final List<C1087r> f2641d = new ArrayList();

    /* renamed from: e */
    public int f2642e;

    static {
        String simpleName = C0958f0.class.getSimpleName();
        l.d(simpleName, "SessionEventsState::class.java.simpleName");
        f2636f = simpleName;
    }

    public C0958f0(C1165q c1165q, String str) {
        l.e(c1165q, "attributionIdentifiers");
        l.e(str, "anonymousAppDeviceGUID");
        this.f2638a = c1165q;
        this.f2639b = str;
    }

    /* renamed from: a */
    public final void m41975a(C1087r c1087r) {
        synchronized (this) {
            if (C1220a.m41623b(this)) {
                return;
            }
            l.e(c1087r, "event");
            if (this.f2640c.size() + this.f2641d.size() >= f2637g) {
                this.f2642e++;
            } else {
                this.f2640c.add(c1087r);
            }
        }
    }

    /* renamed from: b */
    public final List<C1087r> m41974b() {
        synchronized (this) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            List<C1087r> list = this.f2640c;
            this.f2640c = new ArrayList();
            return list;
        }
    }

    /* renamed from: c */
    public final int m41973c(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        if (C1220a.m41623b(this)) {
            return 0;
        }
        try {
            l.e(graphRequest, "request");
            l.e(context, "applicationContext");
            synchronized (this) {
                int i = this.f2642e;
                C1002a c1002a = C1002a.f2761a;
                C1002a.m41914b(this.f2640c);
                this.f2641d.addAll(this.f2640c);
                this.f2640c.clear();
                JSONArray jSONArray = new JSONArray();
                for (C1087r c1087r : this.f2641d) {
                    if (!(c1087r.f3010e == null ? true : l.a(c1087r.m41785a(), c1087r.f3010e))) {
                        l.j("Event with invalid checksum: ", c1087r);
                        C23228f0 c23228f0 = C23228f0.f64291a;
                        boolean z3 = C23228f0.f64299i;
                    } else if (z || !c1087r.f3007b) {
                        jSONArray.put(c1087r.f3006a);
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                m41972d(graphRequest, context, i, jSONArray, z2);
                return jSONArray.length();
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return 0;
        }
    }

    /* renamed from: d */
    public final void m41972d(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                C1036h c1036h = C1036h.f2858a;
                JSONObject m41865a = C1036h.m41865a(C1036h.EnumC1037a.CUSTOM_APP_EVENTS, this.f2638a, this.f2639b, z, context);
                jSONObject = m41865a;
                if (this.f2642e > 0) {
                    m41865a.put("num_skipped_events", i);
                    jSONObject = m41865a;
                }
            } catch (JSONException e) {
                jSONObject = new JSONObject();
            }
            graphRequest.f2550c = jSONObject;
            Bundle bundle = graphRequest.f2552e;
            String jSONArray2 = jSONArray.toString();
            l.d(jSONArray2, "events.toString()");
            bundle.putString("custom_events", jSONArray2);
            graphRequest.f2553f = jSONArray2;
            graphRequest.m42008l(bundle);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
