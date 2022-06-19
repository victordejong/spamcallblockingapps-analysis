package com.facebook.appevents.p035q0;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.ViewAction;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\b\u0010\u0014\u001a\u00020\rH\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;", "", "()V", "CLICKED_PATH_STORE", "", "SUGGESTED_EVENTS_HISTORY", "clickedViewPaths", "", "initialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "shardPreferences", "Landroid/content/SharedPreferences;", "addPrediction", "", "pathID", "predictedEvent", "getPathID", ViewAction.VIEW, "Landroid/view/View;", "text", "initAndWait", "queryEvent", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/f.class */
public final class C1081f {

    /* renamed from: c */
    public static SharedPreferences f2985c;

    /* renamed from: a */
    public static final C1081f f2983a = new C1081f();

    /* renamed from: b */
    public static final Map<String, String> f2984b = new LinkedHashMap();

    /* renamed from: d */
    public static final AtomicBoolean f2986d = new AtomicBoolean(false);

    /* renamed from: a */
    public static final void m41804a(String str, String str2) {
        if (C1220a.m41623b(C1081f.class)) {
            return;
        }
        try {
            l.e(str, "pathID");
            l.e(str2, "predictedEvent");
            if (!f2986d.get()) {
                f2983a.m41802c();
            }
            Map<String, String> map = f2984b;
            map.put(str, str2);
            SharedPreferences sharedPreferences = f2985c;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("SUGGESTED_EVENTS_HISTORY", C1168q0.m41694H(i.W0(map))).apply();
            } else {
                l.l("shardPreferences");
                throw null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1081f.class);
        }
    }

    /* renamed from: b */
    public static final String m41803b(View view, String str) {
        if (C1220a.m41623b(C1081f.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            l.e(str, "text");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("text", str);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    C1000f c1000f = C1000f.f2756a;
                    view = C1000f.m41921i(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException e) {
            }
            return C1168q0.m41684R(jSONObject.toString());
        } catch (Throwable th) {
            C1220a.m41624a(th, C1081f.class);
            return null;
        }
    }

    /* renamed from: c */
    public final void m41802c() {
        String str = "";
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f2986d;
            if (atomicBoolean.get()) {
                return;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
            l.d(sharedPreferences, "FacebookSdk.getApplicationContext()\n            .getSharedPreferences(CLICKED_PATH_STORE, Context.MODE_PRIVATE)");
            f2985c = sharedPreferences;
            Map<String, String> map = f2984b;
            SharedPreferences sharedPreferences2 = f2985c;
            if (sharedPreferences2 == null) {
                l.l("shardPreferences");
                throw null;
            }
            String string = sharedPreferences2.getString("SUGGESTED_EVENTS_HISTORY", "");
            if (string != null) {
                str = string;
            }
            map.putAll(C1168q0.m41697E(str));
            atomicBoolean.set(true);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
