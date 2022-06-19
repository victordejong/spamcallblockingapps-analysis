package com.facebook.appevents.p034p0;

import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010#\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0007J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J&\u0010\u0018\u001a\u00020\u00112\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001a2\u0006\u0010\u0013\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;", "", "()V", "PROCESS_EVENT_NAME", "", "REPLACEMENT_STRING", "RESTRICTIVE_PARAM", "RESTRICTIVE_PARAM_KEY", "TAG", "enabled", "", "restrictedEvents", "", "restrictiveParamFilters", "", "Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "enable", "", "getMatchedRuleType", "eventName", "paramKey", "initialize", "isRestrictedEvent", "processEvent", "processParameters", "parameters", "", "RestrictiveParamFilter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.p0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/p0/a.class */
public final class C1073a {

    /* renamed from: b */
    public static boolean f2959b;

    /* renamed from: a */
    public static final C1073a f2958a = new C1073a();

    /* renamed from: c */
    public static final List<C1074a> f2960c = new ArrayList();

    /* renamed from: d */
    public static final Set<String> f2961d = new CopyOnWriteArraySet();

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n\u0002\b\n\b��\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "", "eventName", "", "restrictiveParams", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getEventName", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "getRestrictiveParams", "()Ljava/util/Map;", "setRestrictiveParams", "(Ljava/util/Map;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.p0.a$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/p0/a$a.class */
    public static final class C1074a {

        /* renamed from: a */
        public String f2962a;

        /* renamed from: b */
        public Map<String, String> f2963b;

        public C1074a(String str, Map<String, String> map) {
            l.e(str, "eventName");
            l.e(map, "restrictiveParams");
            this.f2962a = str;
            this.f2963b = map;
        }
    }

    /* renamed from: a */
    public final String m41818a(String str, String str2) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Iterator it = new ArrayList(f2960c).iterator();
            while (it.hasNext()) {
                C1074a c1074a = (C1074a) it.next();
                if (c1074a != null && l.a(str, c1074a.f2962a)) {
                    for (String str3 : c1074a.f2963b.keySet()) {
                        if (l.a(str2, str3)) {
                            return c1074a.f2963b.get(str3);
                        }
                    }
                    continue;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41817b() {
        String str;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1127d0 c1127d0 = C1127d0.f3107a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            boolean z = false;
            C1124c0 m41738f = C1127d0.m41738f(C23228f0.m7353b(), false);
            if (m41738f == null || (str = m41738f.f3103m) == null) {
                return;
            }
            if (str.length() == 0) {
                z = true;
            }
            if (z) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            f2960c.clear();
            f2961d.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2 != null) {
                    JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                    l.d(next, AnalyticsConstants.KEY);
                    C1074a c1074a = new C1074a(next, new HashMap());
                    if (optJSONObject != null) {
                        Map<String, String> m41674i = C1168q0.m41674i(optJSONObject);
                        l.e(m41674i, "<set-?>");
                        c1074a.f2963b = m41674i;
                        f2960c.add(c1074a);
                    }
                    if (jSONObject2.has("process_event_name")) {
                        f2961d.add(c1074a.f2962a);
                    }
                }
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
