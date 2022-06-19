package com.facebook.appevents.p026i0;

import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import com.amazon.device.ads.DtbConstants;
import com.facebook.GraphRequest;
import com.facebook.appevents.p031m0.C1035g;
import com.facebook.internal.C1165q;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0002\b\u0013J\b\u0010\u0014\u001a\u00020\u0011H\u0007J\b\u0010\u0015\u001a\u00020\u0011H\u0007J\r\u0010\u0016\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\bH\u0001¢\u0006\u0002\b\u0019J\r\u0010\u001a\u001a\u00020\bH\u0001¢\u0006\u0002\b\u001bJ\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0015\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\bH\u0001¢\u0006\u0002\b#R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessManager;", "", "()V", "deviceSessionID", "", "isAppIndexingEnabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isCheckingSession", "", "isCodelessEnabled", "sensorManager", "Landroid/hardware/SensorManager;", "viewIndexer", "Lcom/facebook/appevents/codeless/ViewIndexer;", "viewIndexingTrigger", "Lcom/facebook/appevents/codeless/ViewIndexingTrigger;", "checkCodelessSession", "", "applicationId", "checkCodelessSession$facebook_core_release", "disable", "enable", "getCurrentDeviceSessionID", "getCurrentDeviceSessionID$facebook_core_release", "getIsAppIndexingEnabled", "getIsAppIndexingEnabled$facebook_core_release", "isDebugOnEmulator", "isDebugOnEmulator$facebook_core_release", "onActivityDestroyed", "activity", "Landroid/app/Activity;", "onActivityPaused", "onActivityResumed", "updateAppIndexing", "appIndexingEnabled", "updateAppIndexing$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/i.class */
public final class C0980i {

    /* renamed from: a */
    public static final C0980i f2694a = null;

    /* renamed from: c */
    public static SensorManager f2696c;

    /* renamed from: d */
    public static C0987l f2697d;

    /* renamed from: e */
    public static String f2698e;

    /* renamed from: h */
    public static volatile boolean f2701h;

    /* renamed from: b */
    public static final C0991m f2695b = new C0991m();

    /* renamed from: f */
    public static final AtomicBoolean f2699f = new AtomicBoolean(true);

    /* renamed from: g */
    public static final AtomicBoolean f2700g = new AtomicBoolean(false);

    /* renamed from: a */
    public static final void m41952a(final String str) {
        if (C1220a.m41623b(C0980i.class)) {
            return;
        }
        try {
            if (f2701h) {
                return;
            }
            f2701h = true;
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.i0.b
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = str;
                    if (C1220a.m41623b(C0980i.class)) {
                        return;
                    }
                    try {
                        GraphRequest.C0923c c0923c = GraphRequest.f2543k;
                        boolean z = true;
                        String format = String.format(Locale.US, "%s/app_indexing_session", Arrays.copyOf(new Object[]{str2}, 1));
                        l.d(format, "java.lang.String.format(locale, format, *args)");
                        GraphRequest m41999i = c0923c.m41999i(null, format, null, null);
                        Bundle bundle = m41999i.f2552e;
                        Bundle bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                        }
                        C23228f0 c23228f02 = C23228f0.f64291a;
                        C1165q m41703b = C1165q.C1166a.m41703b(C23228f0.m7354a());
                        JSONArray jSONArray = new JSONArray();
                        String str3 = Build.MODEL;
                        if (str3 == null) {
                            str3 = "";
                        }
                        jSONArray.put(str3);
                        if ((m41703b == null ? null : m41703b.m41705a()) != null) {
                            jSONArray.put(m41703b.m41705a());
                        } else {
                            jSONArray.put("");
                        }
                        jSONArray.put(DtbConstants.NETWORK_TYPE_UNKNOWN);
                        Object obj = DtbConstants.NETWORK_TYPE_UNKNOWN;
                        if (C1035g.m41866c()) {
                            obj = "1";
                        }
                        jSONArray.put(obj);
                        Locale m41662u = C1168q0.m41662u();
                        Locale locale = m41662u;
                        if (m41662u == null) {
                            locale = Locale.getDefault();
                            l.d(locale, "getDefault()");
                        }
                        jSONArray.put(locale.getLanguage() + '_' + ((Object) locale.getCountry()));
                        String jSONArray2 = jSONArray.toString();
                        l.d(jSONArray2, "extInfoArray.toString()");
                        bundle2.putString("device_session_id", C0980i.m41951b());
                        bundle2.putString("extinfo", jSONArray2);
                        m41999i.m42008l(bundle2);
                        JSONObject jSONObject = m41999i.m42017c().f64333c;
                        AtomicBoolean atomicBoolean = C0980i.f2700g;
                        if (jSONObject == null || !jSONObject.optBoolean("is_app_indexing_enabled", false)) {
                            z = false;
                        }
                        atomicBoolean.set(z);
                        if (!atomicBoolean.get()) {
                            C0980i.f2698e = null;
                        } else {
                            C0987l c0987l = C0980i.f2697d;
                            if (c0987l != null) {
                                c0987l.m41935c();
                            }
                        }
                        C0980i.f2701h = false;
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C0980i.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C0980i.class);
        }
    }

    /* renamed from: b */
    public static final String m41951b() {
        if (C1220a.m41623b(C0980i.class)) {
            return null;
        }
        try {
            if (f2698e == null) {
                f2698e = UUID.randomUUID().toString();
            }
            String str = f2698e;
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        } catch (Throwable th) {
            C1220a.m41624a(th, C0980i.class);
            return null;
        }
    }
}
