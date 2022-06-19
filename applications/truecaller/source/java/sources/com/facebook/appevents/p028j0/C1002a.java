package com.facebook.appevents.p028j0;

import com.facebook.appevents.C1087r;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\fH\u0002J&\u0010\u000e\u001a\u00020\f2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J\u0016\u0010\u0012\u001a\u00020\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0007H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;", "", "()V", "deprecatedEvents", "", "", "deprecatedParamFilters", "", "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;", "enabled", "", "enable", "", "initialize", "processDeprecatedParameters", "parameters", "", "eventName", "processEvents", "events", "Lcom/facebook/appevents/AppEvent;", "DeprecatedParamFilter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.j0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/j0/a.class */
public final class C1002a {

    /* renamed from: b */
    public static boolean f2762b;

    /* renamed from: a */
    public static final C1002a f2761a = new C1002a();

    /* renamed from: c */
    public static final List<C1003a> f2763c = new ArrayList();

    /* renamed from: d */
    public static final Set<String> f2764d = new HashSet();

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\b\n\b��\u0018��2\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;", "", "eventName", "", "deprecateParams", "", "(Ljava/lang/String;Ljava/util/List;)V", "getDeprecateParams", "()Ljava/util/List;", "setDeprecateParams", "(Ljava/util/List;)V", "getEventName", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.j0.a$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/j0/a$a.class */
    public static final class C1003a {

        /* renamed from: a */
        public String f2765a;

        /* renamed from: b */
        public List<String> f2766b;

        public C1003a(String str, List<String> list) {
            l.e(str, "eventName");
            l.e(list, "deprecateParams");
            this.f2765a = str;
            this.f2766b = list;
        }
    }

    /* renamed from: b */
    public static final void m41914b(List<C1087r> list) {
        if (C1220a.m41623b(C1002a.class)) {
            return;
        }
        try {
            l.e(list, "events");
            if (!f2762b) {
                return;
            }
            Iterator<C1087r> it = list.iterator();
            while (it.hasNext()) {
                if (f2764d.contains(it.next().f3009d)) {
                    it.remove();
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1002a.class);
        }
    }

    /* renamed from: a */
    public final void m41915a() {
        boolean z;
        C1124c0 m41738f;
        synchronized (this) {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                C1127d0 c1127d0 = C1127d0.f3107a;
                C23228f0 c23228f0 = C23228f0.f64291a;
                z = false;
                m41738f = C1127d0.m41738f(C23228f0.m7353b(), false);
            } catch (Exception e) {
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return;
            }
            if (m41738f == null) {
                return;
            }
            String str = m41738f.f3103m;
            if (str != null) {
                if (str.length() > 0) {
                    z = true;
                }
                if (z) {
                    JSONObject jSONObject = new JSONObject(str);
                    f2763c.clear();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        if (jSONObject2 != null) {
                            if (jSONObject2.optBoolean("is_deprecated_event")) {
                                Set<String> set = f2764d;
                                l.d(next, AnalyticsConstants.KEY);
                                set.add(next);
                            } else {
                                JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                                l.d(next, AnalyticsConstants.KEY);
                                C1003a c1003a = new C1003a(next, new ArrayList());
                                if (optJSONArray != null) {
                                    List<String> m41676g = C1168q0.m41676g(optJSONArray);
                                    l.e(m41676g, "<set-?>");
                                    c1003a.f2766b = m41676g;
                                }
                                f2763c.add(c1003a);
                            }
                        }
                    }
                }
            }
        }
    }
}
