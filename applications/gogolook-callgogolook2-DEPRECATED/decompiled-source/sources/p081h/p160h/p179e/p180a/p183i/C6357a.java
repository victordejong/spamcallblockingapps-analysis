package p081h.p160h.p179e.p180a.p183i;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import androidx.media2.session.MediaSessionImplBase;
import androidx.work.impl.background.systemalarm.CommandHandler;
import com.appsflyer.AppsFlyerProperties;
import com.gogolook.whoscallsdk.core.utils.JniLibUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p182h.C6355a;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.i.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/i/a.class */
public class C6357a {

    /* renamed from: a */
    public static final Map<String, Object> f15796a = new HashMap();

    /* renamed from: b */
    public static JSONObject f15797b = null;

    /* renamed from: c */
    public static JSONObject f15798c = null;

    /* renamed from: d */
    public static final String f15799d = null;

    /* renamed from: e */
    public static String f15800e = null;

    /* renamed from: f */
    public static long f15801f = 0;

    /* renamed from: g */
    public static String f15802g = null;

    /* renamed from: h */
    public static String f15803h = null;

    /* renamed from: i */
    public static String f15804i = null;

    /* renamed from: h.h.e.a.i.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/i/a$a.class */
    public static final class C6358a extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C6359b f15805a;

        /* renamed from: b */
        public final /* synthetic */ String f15806b;

        /* renamed from: c */
        public final /* synthetic */ JSONObject f15807c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC6378d f15808d;

        public C6358a(C6359b bVar, String str, JSONObject jSONObject, AbstractC6378d dVar) {
            this.f15805a = bVar;
            this.f15806b = str;
            this.f15807c = jSONObject;
            this.f15808d = dVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C6438i.m22578d("gga statusCode = " + i + ", result = " + jSONObject);
            if (C6344e.m23189d()) {
                try {
                    if (this.f15805a.f15813e == 2) {
                        C6438i.m22577e("[gga] status : " + i + " ,request path = " + this.f15806b + ", type = " + this.f15807c.getString("data_type") + ", seq = " + this.f15807c.getLong("seq") + " body = " + this.f15807c.toString());
                    } else {
                        C6438i.m22577e("[gga] status : " + i + " ,request path = " + this.f15806b + ", type = " + this.f15807c.getString("data_type") + ", seq = " + this.f15807c.getLong("seq"));
                    }
                } catch (Exception e) {
                }
            }
            AbstractC6378d dVar = this.f15808d;
            if (dVar != null) {
                dVar.mo1272a(i, jSONObject);
            }
        }
    }

    /* renamed from: a */
    public static C6360c m23040a(int i) {
        C6360c cVar = new C6360c(f15800e, f15803h, i);
        if (i == 2) {
            cVar.m23009a(C6334a.m23211s().m23231c());
            cVar.m23003b(C6334a.m23211s().m23220j());
        }
        return cVar;
    }

    /* renamed from: a */
    public static String m23037a(C6359b bVar) {
        int i;
        return (bVar == null || (i = bVar.f15813e) == 3) ? "/general_feedback/fbs" : i == 4 ? "/hitrate/v2/fbs" : "/data/v2";
    }

    /* renamed from: a */
    public static void m23041a() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (C6430c.m22641b()) {
                C6432e.m22605a("KeyStoreError", "encryptByKeystoreError");
            } else if (!C6430c.m22645a()) {
                C6432e.m22605a("KeyStoreError", "decryptByKeystoreError");
            }
        }
        try {
            JniLibUtils.getPrefsKey();
            JniLibUtils.getOriginalKey();
            JniLibUtils.getIV(8);
        } catch (Throwable th) {
            C6432e.m22605a("KeyStoreError", "Jni error:" + th.toString());
        }
    }

    /* renamed from: a */
    public static void m23039a(long j) {
        int a = C6334a.m23211s().m23253a("pref_gga_job_start_count", 0);
        int a2 = C6334a.m23211s().m23253a("pref_gga_job_error_count", 0);
        int a3 = C6334a.m23211s().m23253a("pref_gga_job_last_error", 0);
        int a4 = C6334a.m23211s().m23253a("pref_gga_job_deserialize_error", 0);
        long a5 = C6334a.m23211s().m23252a("pref_gga_job_last_success_time", 0L);
        C6334a.m23211s().m23216n().edit().putInt("pref_gga_job_start_count", 0).putInt("pref_gga_job_error_count", 0).putInt("pref_gga_job_last_error", 0).putInt("pref_gga_job_deserialize_error", 0).putLong("pref_gga_job_last_success_time", 0L).apply();
        int h = C6334a.m23211s().m23222h();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(a));
        arrayList.add(Integer.valueOf(a2));
        arrayList.add(Integer.valueOf(a3));
        arrayList.add(Integer.valueOf(h));
        arrayList.add(Integer.valueOf(a4));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.valueOf(a5));
        arrayList2.add(String.valueOf(j));
        m23027a("gf_sdk_analytics", arrayList2, arrayList, C6359b.m23011c(), null);
    }

    /* renamed from: a */
    public static void m23038a(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    m23032a(str, (String) obj);
                } else if (obj instanceof Boolean) {
                    m23026a(str, ((Boolean) obj).booleanValue());
                }
            }
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static void m23036a(AbstractC6361d dVar, C6359b bVar) {
        m23035a(dVar, bVar, (AbstractC6378d) null);
    }

    /* renamed from: a */
    public static void m23035a(AbstractC6361d dVar, C6359b bVar, AbstractC6378d dVar2) {
        m23024a(dVar.mo23001a(), bVar, dVar2);
    }

    /* renamed from: a */
    public static void m23033a(String str, int i, int i2) {
        if (C6344e.m23196a()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i));
            arrayList2.add(Integer.valueOf(i2));
            m23027a("gf_sdk_api_tracking", arrayList, arrayList2, C6359b.m23013a(), null);
        }
    }

    /* renamed from: a */
    public static void m23032a(String str, String str2) {
        if (str2 != null) {
            C6334a.m23211s().m23233b(str, str2, true);
            f15796a.put(str, str2);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static void m23031a(String str, String str2, long j) {
        f15800e = m23022b();
        f15801f = j;
        f15802g = str;
        f15803h = str2;
        f15804i = null;
        C6334a.m23211s().m23226d("pref_gga_session", f15800e);
        C6334a.m23211s().m23226d("pref_gga_referer", f15802g);
        C6334a.m23211s().m23226d("pref_gga_pv", f15803h);
        C6334a.m23211s().m23226d("pref_gga_prev_pv", f15804i);
        C6334a.m23211s().m23235b("pref_gga_session_start_time", f15801f);
    }

    /* renamed from: a */
    public static void m23030a(String str, String str2, String str3, String str4, long j, long j2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "pv");
            jSONObject.put("ts", System.currentTimeMillis());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("sid", str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put("referer", str2);
            }
            jSONObject2.put("pv", str3);
            jSONObject2.put("prev_pv", str4);
            jSONObject2.put("beg", j);
            if (j2 != 0) {
                jSONObject2.put("end", j2);
            }
            jSONObject.put("data", jSONObject2);
            m23024a(jSONObject, C6359b.m23013a(), (AbstractC6378d) null);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public static void m23029a(String str, String str2, boolean z) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                f15797b = new JSONObject();
                f15797b.put(AppsFlyerProperties.APP_ID, str);
                f15797b.put("appkey", str2);
            } catch (JSONException e) {
                C6438i.m22583a(e);
            }
        }
        if (z) {
            long j = f15801f;
            if (j <= 0) {
                j = C6334a.m23211s().m23252a("pref_gga_session_start_time", 0L);
            }
            f15801f = j;
            String str3 = f15800e;
            if (str3 == null) {
                str3 = C6334a.m23211s().m23234b("pref_gga_session", m23022b());
            }
            f15800e = str3;
            String str4 = f15802g;
            if (str4 == null) {
                str4 = C6334a.m23211s().m23234b("pref_gga_referer", f15799d);
            }
            f15802g = str4;
            String str5 = f15803h;
            if (str5 == null) {
                str5 = C6334a.m23211s().m23234b("pref_gga_pv", (String) null);
            }
            f15803h = str5;
            String str6 = f15804i;
            if (str6 == null) {
                str6 = C6334a.m23211s().m23234b("pref_gga_prev_pv", (String) null);
            }
            f15804i = str6;
        }
    }

    /* renamed from: a */
    public static void m23028a(String str, List<String> list, List<Integer> list2, C6359b bVar) {
        m23027a(str, list, list2, bVar, null);
    }

    /* renamed from: a */
    public static void m23027a(String str, List<String> list, List<Integer> list2, C6359b bVar, AbstractC6378d dVar) {
        C6360c a = m23040a(2);
        a.m23005a(str, list, list2);
        if (bVar.f15813e == 1) {
            bVar.f15813e = 3;
        }
        m23035a(a, bVar, dVar);
    }

    /* renamed from: a */
    public static void m23026a(String str, boolean z) {
        C6334a.m23211s().m23232b(str, z);
        f15796a.put(str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    public static void m23025a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("datas");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                String string = jSONObject2.getString("type");
                long a = C6334a.m23211s().m23252a(string, 0L) + 1;
                C6334a.m23211s().m23235b(string, a);
                jSONObject2.put("seq", a);
            }
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public static void m23024a(JSONObject jSONObject, C6359b bVar, AbstractC6378d dVar) {
        JSONObject jSONObject2;
        try {
            if (!bVar.f15812d && !TextUtils.isEmpty(C6364a.m22969e()) && !TextUtils.isEmpty(C6364a.m22978b())) {
                jSONObject2 = new JSONObject(C6364a.m22991a());
            } else if (f15797b != null) {
                jSONObject2 = new JSONObject(f15797b.toString());
            } else if (dVar != null) {
                try {
                    dVar.mo1272a(-5, null);
                    return;
                } catch (Exception e) {
                    return;
                }
            } else {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(f15798c.toString());
            String e2 = C6364a.m22969e();
            String j = C6334a.m23211s().m23220j();
            if (TextUtils.isEmpty(e2)) {
                e2 = j;
            }
            jSONObject3.put("uid", e2);
            jSONObject3.put("did", j);
            if (bVar.f15813e == 3) {
                if (!TextUtils.isEmpty(m23020b("common_city"))) {
                    jSONObject3.put("city", m23020b("common_city"));
                }
                if (m23034a("common_subscription")) {
                    jSONObject3.put("subs", m23034a("common_subscription") ? 1 : 0);
                }
                jSONObject3.put("ab_testing", C6355a.m23047e());
                jSONObject3.put("adid", C6334a.m23211s().m23225e());
                jSONObject3.put("os_ver", C6432e.m22611a());
                jSONObject3.put(WebvttCueParser.TAG_LANG, C6432e.m22600b());
            }
            if (bVar.f15813e == 4) {
                jSONObject3.put("adid", C6334a.m23211s().m23225e());
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            jSONObject3.put("datas", jSONArray);
            m23023a(jSONObject3, jSONObject2, bVar, dVar);
        } catch (Exception e3) {
            C6438i.m22583a(e3);
        }
    }

    /* renamed from: a */
    public static void m23023a(JSONObject jSONObject, JSONObject jSONObject2, C6359b bVar, AbstractC6378d dVar) {
        int i = bVar.f15813e;
        if (!(i == 3 || i == 4)) {
            m23025a(jSONObject);
        }
        C6341b bVar2 = new C6341b();
        String b = m23021b(bVar);
        String a = m23037a(bVar);
        bVar2.f15755a = b + a;
        bVar2.f15756b = "POST";
        bVar2.f15757c = jSONObject.toString();
        if (jSONObject2 != null) {
            bVar2.f15758d = jSONObject2.toString();
        }
        bVar2.f15760f = new C6358a(bVar, a, jSONObject, dVar);
        bVar2.f15765k = bVar.f15809a;
        bVar2.f15768n = true;
        int i2 = bVar.f15813e;
        bVar2.f15766l = (i2 == 3 || i2 == 4) ? false : C6344e.m23190c();
        int i3 = bVar.f15813e;
        bVar2.f15767m = i3 == 3 || i3 == 4;
        bVar2.f15772r = bVar.f15813e;
        if (bVar.f15810b) {
            bVar2.f15771q = 1;
        }
        if (C6344e.m23189d()) {
            try {
                if (bVar.f15813e == 2) {
                    C6438i.m22577e("[gga] request path = " + a + ", type = " + jSONObject.getString("data_type") + ", seq = " + jSONObject.getLong("seq") + " body = " + jSONObject.toString());
                } else {
                    C6438i.m22577e("[gga] request path = " + a + ", type = " + jSONObject.getString("data_type") + ", seq = " + jSONObject.getLong("seq"));
                }
            } catch (Exception e) {
            }
        }
        if (C6334a.m23211s().m23269a(bVar2.f15772r, bVar2.f15771q)) {
            C6438i.m22586a(C6363f.m22994a(bVar.f15811c, bVar.f15813e, bVar2.f15771q));
        }
        if (bVar.f15811c) {
            C6334a.m23211s().m23238b(bVar2);
            return;
        }
        C6334a.m23211s().m23261a(bVar2);
        if (dVar != null) {
            try {
                dVar.mo1272a(0, null);
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m23034a(String str) {
        if (f15796a.containsKey(str)) {
            return ((Boolean) f15796a.get(str)).booleanValue();
        }
        boolean a = C6334a.m23211s().m23244a(str, false);
        f15796a.put(str, Boolean.valueOf(a));
        return a;
    }

    /* renamed from: b */
    public static String m23022b() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    /* renamed from: b */
    public static String m23021b(C6359b bVar) {
        if (C6344e.m23186g()) {
            return (bVar == null || bVar.f15813e != 2) ? "https://gga.whoscall.com" : "https://ggad.whoscall.com";
        }
        return (bVar == null || bVar.f15813e != 2) ? "https://gga-staging.whoscall.com" : "https://ggad-staging.whoscall.com";
    }

    /* renamed from: b */
    public static String m23020b(String str) {
        if (f15796a.containsKey(str)) {
            return (String) f15796a.get(str);
        }
        String a = C6334a.m23211s().m23246a(str, (String) null, true);
        if (!TextUtils.isEmpty(a)) {
            f15796a.put(str, a);
            return a;
        }
        f15796a.put(str, "");
        return null;
    }

    /* renamed from: b */
    public static void m23019b(String str, String str2) {
        if (TextUtils.isEmpty(str) || str2 == null) {
            throw new NullPointerException();
        }
        try {
            f15798c = new JSONObject();
            f15798c.put("appvcode", str);
            f15798c.put("region", str2);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: b */
    public static void m23018b(String str, String str2, long j) {
        f15803h = str;
        f15804i = str2;
        f15801f = j;
        C6334a.m23211s().m23226d("pref_gga_pv", f15803h);
        C6334a.m23211s().m23226d("pref_gga_prev_pv", f15804i);
        C6334a.m23211s().m23235b("pref_gga_session_start_time", f15801f);
    }

    /* renamed from: c */
    public static String m23017c() {
        JSONObject jSONObject = f15797b;
        if (jSONObject != null) {
            return jSONObject.toString();
        }
        return null;
    }

    /* renamed from: c */
    public static void m23016c(String str) {
        if (!TextUtils.isEmpty(f15800e) && !TextUtils.isEmpty(f15803h)) {
            m23030a(f15800e, f15802g, f15803h, f15804i, f15801f, 0L);
        }
        m23031a(str, (String) null, 0L);
    }

    /* renamed from: d */
    public static C6360c m23015d() {
        return new C6360c(f15800e, f15803h, 1);
    }

    /* renamed from: d */
    public static String m23014d(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = f15801f;
        if (j != 0 && currentTimeMillis - j > CommandHandler.WORK_PROCESSING_TIME_IN_MS) {
            if (!TextUtils.isEmpty(f15800e) && !TextUtils.isEmpty(f15803h)) {
                m23030a(f15800e, f15802g, f15803h, f15804i, f15801f, 0L);
            }
            m23031a((String) null, str, currentTimeMillis);
        }
        if (TextUtils.isEmpty(f15803h)) {
            m23018b(str, null, currentTimeMillis);
        } else if (!f15803h.equals(str)) {
            m23030a(f15800e, f15802g, f15803h, f15804i, f15801f, currentTimeMillis);
            m23018b(str, f15803h, currentTimeMillis);
        }
        String str2 = f15804i;
        if (str2 == null || !str2.contains(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
            return f15804i;
        }
        String[] split = f15804i.split("\\.");
        return split[split.length - 1];
    }
}
