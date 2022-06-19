package com.facebook.appevents.p035q0;

import android.app.Activity;
import com.facebook.appevents.p031m0.C1033f;
import com.facebook.appevents.p032n0.C1056h;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010#\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\fH\u0002J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0011J\b\u0010\u0012\u001a\u00020\u000fH\u0007J\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0014J\u0017\u0010\u0015\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0002\b\u0017J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;", "", "()V", "ELIGIBLE_EVENTS_KEY", "", "PRODUCTION_EVENTS_KEY", "eligibleEvents", "", "enabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "productionEvents", "enable", "", "initialize", "isEligibleEvents", "", "event", "isEligibleEvents$facebook_core_release", "isEnabled", "isProductionEvents", "isProductionEvents$facebook_core_release", "populateEventsFromRawJsonString", "rawSuggestedEventSetting", "populateEventsFromRawJsonString$facebook_core_release", "trackActivity", "activity", "Landroid/app/Activity;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/h.class */
public final class C1083h {

    /* renamed from: a */
    public static final C1083h f2989a = new C1083h();

    /* renamed from: b */
    public static final AtomicBoolean f2990b = new AtomicBoolean(false);

    /* renamed from: c */
    public static final Set<String> f2991c = new LinkedHashSet();

    /* renamed from: d */
    public static final Set<String> f2992d = new LinkedHashSet();

    /* renamed from: c */
    public static final void m41794c(Activity activity) {
        if (C1220a.m41623b(C1083h.class)) {
            return;
        }
        try {
            l.e(activity, "activity");
            try {
                if (f2990b.get()) {
                    boolean z = false;
                    if (!C1220a.m41623b(C1080e.class)) {
                        try {
                            z = C1080e.f2982f;
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C1080e.class);
                        }
                    }
                    if (z && (!f2991c.isEmpty() || !f2992d.isEmpty())) {
                        ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i = ViewTreeObserver$OnGlobalLayoutListenerC1084i.f2993d;
                        ViewTreeObserver$OnGlobalLayoutListenerC1084i.m41791c(activity);
                        return;
                    }
                }
                ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i2 = ViewTreeObserver$OnGlobalLayoutListenerC1084i.f2993d;
                ViewTreeObserver$OnGlobalLayoutListenerC1084i.m41790d(activity);
            } catch (Exception e) {
            }
        } catch (Throwable th2) {
            C1220a.m41624a(th2, C1083h.class);
        }
    }

    /* renamed from: a */
    public final void m41796a() {
        String str;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1127d0 c1127d0 = C1127d0.f3107a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            C1124c0 m41738f = C1127d0.m41738f(C23228f0.m7353b(), false);
            if (m41738f == null || (str = m41738f.f3102l) == null) {
                return;
            }
            m41795b(str);
            if (!(!f2991c.isEmpty()) && !(!f2992d.isEmpty())) {
                return;
            }
            C1056h c1056h = C1056h.f2914a;
            File m41848d = C1056h.m41848d(C1056h.EnumC1057a.MTML_APP_EVENT_PREDICTION);
            if (m41848d == null) {
                return;
            }
            C1080e.m41813d(m41848d);
            C1033f c1033f = C1033f.f2846a;
            WeakReference<Activity> weakReference = C1033f.f2857l;
            Activity activity = null;
            if (weakReference != null) {
                activity = weakReference == null ? null : weakReference.get();
            }
            if (activity == null) {
                return;
            }
            m41794c(activity);
        } catch (Exception e) {
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: b */
    public final void m41795b(String str) {
        JSONArray jSONArray;
        int length;
        JSONArray jSONArray2;
        int length2;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = 0;
            if (jSONObject.has("production_events") && (length2 = (jSONArray2 = jSONObject.getJSONArray("production_events")).length()) > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    int i4 = i3 + 1;
                    Set<String> set = f2991c;
                    String string = jSONArray2.getString(i3);
                    l.d(string, "jsonArray.getString(i)");
                    set.add(string);
                    if (i4 >= length2) {
                        break;
                    }
                    i2 = i4;
                }
            }
            if (!jSONObject.has("eligible_for_prediction_events") || (length = (jSONArray = jSONObject.getJSONArray("eligible_for_prediction_events")).length()) <= 0) {
                return;
            }
            while (true) {
                int i5 = i;
                i = i5 + 1;
                Set<String> set2 = f2992d;
                String string2 = jSONArray.getString(i5);
                l.d(string2, "jsonArray.getString(i)");
                set2.add(string2);
                if (i >= length) {
                    return;
                }
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
