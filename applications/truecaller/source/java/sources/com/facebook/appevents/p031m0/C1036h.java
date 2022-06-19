package com.facebook.appevents.p031m0;

import android.content.Context;
import android.preference.PreferenceManager;
import com.facebook.appevents.C1075q;
import com.facebook.internal.C1143k0;
import com.facebook.internal.C1165q;
import com.facebook.internal.C1168q0;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import s1.k;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/internal/AppEventsLoggerUtility;", "", "()V", "API_ACTIVITY_TYPE_TO_STRING", "", "Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;", "", "getJSONObjectForGraphAPICall", "Lorg/json/JSONObject;", "activityType", "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", "limitEventUsage", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "GraphAPIActivityType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/h.class */
public final class C1036h {

    /* renamed from: a */
    public static final C1036h f2858a = null;

    /* renamed from: b */
    public static final Map<EnumC1037a, String> f2859b = i.I(new k[]{new k(EnumC1037a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL"), new k(EnumC1037a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS")});

    @Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;", "", "(Ljava/lang/String;I)V", "MOBILE_INSTALL_EVENT", "CUSTOM_APP_EVENTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.m0.h$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/h$a.class */
    public enum EnumC1037a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    /* renamed from: a */
    public static final JSONObject m41865a(EnumC1037a enumC1037a, C1165q c1165q, String str, boolean z, Context context) throws JSONException {
        l.e(enumC1037a, "activityType");
        l.e(context, AnalyticsConstants.CONTEXT);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f2859b.get(enumC1037a));
        C1075q c1075q = C1075q.f2964a;
        if (!C1075q.f2968e && !C1075q.f2968e) {
            ReentrantReadWriteLock reentrantReadWriteLock = C1075q.f2966c;
            reentrantReadWriteLock.writeLock().lock();
            try {
                if (!C1075q.f2968e) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    C1075q.f2967d = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                    C1075q.f2968e = true;
                }
                reentrantReadWriteLock.writeLock().unlock();
            } catch (Throwable th) {
                C1075q.f2966c.writeLock().unlock();
                throw th;
            }
        }
        ReentrantReadWriteLock reentrantReadWriteLock2 = C1075q.f2966c;
        reentrantReadWriteLock2.readLock().lock();
        try {
            String str2 = C1075q.f2967d;
            reentrantReadWriteLock2.readLock().unlock();
            if (str2 != null) {
                jSONObject.put("app_user_id", str2);
            }
            C1168q0.m41687O(jSONObject, c1165q, str, z, context);
            try {
                C1168q0.m41686P(jSONObject, context);
            } catch (Exception e) {
                C1143k0.f3139e.m41728c(EnumC23248n0.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
            }
            JSONObject m41667p = C1168q0.m41667p();
            if (m41667p != null) {
                Iterator<String> keys = m41667p.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, m41667p.get(next));
                }
            }
            jSONObject.put("application_package_name", context.getPackageName());
            return jSONObject;
        } catch (Throwable th2) {
            C1075q.f2966c.readLock().unlock();
            throw th2;
        }
    }
}
