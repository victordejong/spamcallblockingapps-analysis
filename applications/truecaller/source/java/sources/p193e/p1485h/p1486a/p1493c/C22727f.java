package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.inapp.CTInAppNotification;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import com.mopub.mobileads.AdData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.util.AbstractLocaleUtils;
import e.h.a.c.x0.g;
import e.h.a.c.x0.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22714c;
import p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22820h;
import p193e.p1485h.p1486a.p1493c.p1509x0.C22880e;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.f */
/* loaded from: classes-dex2jar.jar:e/h/a/c/f.class */
public class C22727f extends AbstractC22740j {

    /* renamed from: a */
    public final C22751m f62914a;

    /* renamed from: c */
    public final AbstractC22755a f62916c;

    /* renamed from: d */
    public final AbstractC22742k f62917d;

    /* renamed from: e */
    public final CleverTapInstanceConfig f62918e;

    /* renamed from: f */
    public final Context f62919f;

    /* renamed from: g */
    public final C22844v f62920g;

    /* renamed from: h */
    public final C22858w f62921h;

    /* renamed from: i */
    public final C22718b0 f62922i;

    /* renamed from: j */
    public final C22731f0 f62923j;

    /* renamed from: k */
    public final C22713b f62924k;

    /* renamed from: l */
    public final C22714c f62925l;

    /* renamed from: b */
    public final HashMap<String, Integer> f62915b = new HashMap<>(8);

    /* renamed from: m */
    public final HashMap<String, Object> f62926m = new HashMap<>();

    /* renamed from: n */
    public final Object f62927n = new Object();

    /* renamed from: o */
    public final HashMap<String, Object> f62928o = new HashMap<>();

    /* renamed from: e.h.a.c.f$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/f$a.class */
    public class CallableC22728a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Bundle f62929a;

        public CallableC22728a(Bundle bundle) {
            C22727f.this = r4;
            this.f62929a = bundle;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                this.f62929a.getString("wzrk_inapp");
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("inapp_notifs", jSONArray);
                jSONArray.put(new JSONObject(this.f62929a.getString("wzrk_inapp")));
                C22880e c22880e = new C22880e();
                C22727f c22727f = C22727f.this;
                new j(c22880e, c22727f.f62918e, c22727f.f62920g, true).a(jSONObject, (String) null, C22727f.this.f62919f);
                return null;
            } catch (Throwable th) {
                return null;
            }
        }
    }

    /* renamed from: e.h.a.c.f$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/f$b.class */
    public class CallableC22729b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Bundle f62931a;

        public CallableC22729b(Bundle bundle) {
            C22727f.this = r4;
            this.f62931a = bundle;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                this.f62931a.getString("wzrk_inbox");
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("inbox_notifs", jSONArray);
                JSONObject jSONObject2 = new JSONObject(this.f62931a.getString("wzrk_inbox"));
                jSONObject2.put("_id", String.valueOf(System.currentTimeMillis() / 1000));
                jSONArray.put(jSONObject2);
                C22727f c22727f = C22727f.this;
                CleverTapInstanceConfig cleverTapInstanceConfig = c22727f.f62918e;
                C22751m c22751m = c22727f.f62914a;
                AbstractC22742k abstractC22742k = c22727f.f62917d;
                C22844v c22844v = c22727f.f62920g;
                C22735g0 m42081b = cleverTapInstanceConfig.m42081b();
                Object obj = c22751m.f63016a;
                Context context = C22727f.this.f62919f;
                if (cleverTapInstanceConfig.f2244e) {
                    m42081b.m7855b(cleverTapInstanceConfig.f2240a, "CleverTap instance is configured to analytics only, not processing inbox messages");
                    return null;
                }
                m42081b.m7855b(cleverTapInstanceConfig.f2240a, "Inbox: Processing response");
                if (!jSONObject.has("inbox_notifs")) {
                    m42081b.m7855b(cleverTapInstanceConfig.f2240a, "Inbox: Response JSON object doesn't contain the inbox key");
                    return null;
                }
                JSONArray jSONArray2 = jSONObject.getJSONArray("inbox_notifs");
                synchronized (obj) {
                    if (c22844v.f63410e == null) {
                        c22844v.m7695a();
                    }
                    C22820h c22820h = c22844v.f63410e;
                    if (c22820h != null && c22820h.m7735e(jSONArray2)) {
                        Objects.requireNonNull((C22768o) abstractC22742k);
                    }
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        }
    }

    /* renamed from: e.h.a.c.f$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/f$c.class */
    public class CallableC22730c implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Map f62933a;

        public CallableC22730c(Map map) {
            C22727f.this = r4;
            this.f62933a = map;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22727f c22727f = C22727f.this;
            Map map = this.f62933a;
            Objects.requireNonNull(c22727f);
            if (map == null || map.isEmpty()) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                for (String str : map.keySet()) {
                    Object obj = map.get(str);
                    C22712a m7923c = c22727f.f62925l.m7923c(str);
                    String obj2 = m7923c.f62844c.toString();
                    if (m7923c.f62842a != 0) {
                        c22727f.f62924k.m7926b(m7923c);
                    }
                    if (obj2.isEmpty()) {
                        C22712a m2468F = C26232y.m2468F(512, 2, new String[0]);
                        c22727f.f62924k.m7926b(m2468F);
                        c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F.f62843b);
                    } else {
                        C22712a m7922d = c22727f.f62925l.m7922d(obj, C22714c.EnumC22716b.Profile);
                        Object obj3 = m7922d.f62844c;
                        if (m7922d.f62842a != 0) {
                            c22727f.f62924k.m7926b(m7922d);
                        }
                        String str2 = obj3;
                        if (obj2.equalsIgnoreCase("Phone")) {
                            try {
                                String obj4 = obj3.toString();
                                String m7912h = c22727f.f62922i.m7912h();
                                if ((m7912h == null || m7912h.isEmpty()) && !obj4.startsWith("+")) {
                                    C22712a m2468F2 = C26232y.m2468F(512, 4, obj4);
                                    c22727f.f62924k.m7926b(m2468F2);
                                    c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F2.f62843b);
                                }
                                C22735g0 m42081b = c22727f.f62918e.m42081b();
                                String str3 = c22727f.f62918e.f2240a;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Profile phone is: ");
                                sb.append((Object) obj4);
                                sb.append(" device country code is: ");
                                if (m7912h == null) {
                                    m7912h = AnalyticsConstants.NULL;
                                }
                                sb.append(m7912h);
                                m42081b.m7855b(str3, sb.toString());
                                str2 = obj4;
                            } catch (Exception e) {
                                c22727f.f62924k.m7926b(C26232y.m2468F(512, 5, new String[0]));
                                C22735g0 m42081b2 = c22727f.f62918e.m42081b();
                                String str4 = c22727f.f62918e.f2240a;
                                m42081b2.m7856a(str4, "Invalid phone number: " + e.getLocalizedMessage());
                            }
                        }
                        jSONObject2.put(obj2, str2);
                        jSONObject.put(obj2, str2);
                    }
                }
                C22735g0 m42081b3 = c22727f.f62918e.m42081b();
                String str5 = c22727f.f62918e.f2240a;
                m42081b3.m7855b(str5, "Constructed custom profile: " + jSONObject.toString());
                if (jSONObject2.length() > 0) {
                    c22727f.f62923j.m7862n(jSONObject2, Boolean.FALSE);
                }
                c22727f.f62916c.mo7814b(jSONObject);
                return null;
            } catch (Throwable th) {
                C22735g0 m42081b4 = c22727f.f62918e.m42081b();
                String str6 = c22727f.f62918e.f2240a;
                Objects.requireNonNull(m42081b4);
                return null;
            }
        }
    }

    public C22727f(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, AbstractC22755a abstractC22755a, C22714c c22714c, C22713b c22713b, C22858w c22858w, C22731f0 c22731f0, C22718b0 c22718b0, AbstractC22742k abstractC22742k, C22844v c22844v, C22751m c22751m) {
        this.f62919f = context;
        this.f62918e = cleverTapInstanceConfig;
        this.f62916c = abstractC22755a;
        this.f62925l = c22714c;
        this.f62924k = c22713b;
        this.f62921h = c22858w;
        this.f62923j = c22731f0;
        this.f62922i = c22718b0;
        this.f62917d = abstractC22742k;
        this.f62914a = c22751m;
        this.f62920g = c22844v;
    }

    /* renamed from: f */
    public static void m7885f(C22727f c22727f, ArrayList arrayList, String str, String str2) {
        Objects.requireNonNull(c22727f);
        if (str == null) {
            return;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            c22727f.m7887d(str);
            return;
        }
        C22712a m7923c = c22727f.f62925l.m7923c(str);
        String str3 = (String) m7923c.f62844c;
        String str4 = null;
        try {
            if (C22714c.EnumC22715a.valueOf(str3) != null) {
                C22712a m2468F = C26232y.m2468F(523, 24, str3);
                m7923c.f62843b = m2468F.f62843b;
                m7923c.f62842a = m2468F.f62842a;
                m7923c.f62844c = null;
            }
        } catch (Throwable th) {
        }
        if (m7923c.f62842a != 0) {
            c22727f.f62924k.m7926b(m7923c);
        }
        Object obj = m7923c.f62844c;
        if (obj != null) {
            str4 = obj.toString();
        }
        if (str4 != null && !str4.isEmpty()) {
            try {
                c22727f.m7886e(c22727f.m7888c(str4, str2), c22727f.m7889b(arrayList, str4), arrayList, str4, str2);
                return;
            } catch (Throwable th2) {
                C22735g0 m42081b = c22727f.f62918e.m42081b();
                String str5 = c22727f.f62918e.f2240a;
                Objects.requireNonNull(m42081b);
                return;
            }
        }
        c22727f.f62924k.m7926b(C26232y.m2468F(523, 23, str));
        c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, "Invalid multi-value property key " + str + " profile multi value operation aborted");
    }

    @Override // p193e.p1485h.p1486a.p1493c.AbstractC22740j
    /* renamed from: a */
    public void mo7850a() {
        if (this.f62918e.f2244e) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("t", 1);
            jSONObject.put("evtName", "wzrk_fetch");
            jSONObject.put("evtData", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f62916c.mo7812d(this.f62919f, jSONObject, 7);
    }

    /* renamed from: b */
    public final JSONArray m7889b(ArrayList<String> arrayList, String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                String str2 = next;
                if (next == null) {
                    str2 = "";
                }
                C22712a m7924b = this.f62925l.m7924b(str2);
                if (m7924b.f62842a != 0) {
                    this.f62924k.m7926b(m7924b);
                }
                Object obj = m7924b.f62844c;
                String obj2 = obj != null ? obj.toString() : null;
                if (obj2 != null && !obj2.isEmpty()) {
                    jSONArray.put(obj2);
                }
                m7887d(str);
                return null;
            }
            return jSONArray;
        } catch (Throwable th) {
            C22735g0 m42081b = this.f62918e.m42081b();
            String str3 = this.f62918e.f2240a;
            Objects.requireNonNull(m42081b);
            m7887d(str);
            return null;
        }
    }

    /* renamed from: c */
    public final JSONArray m7888c(String str, String str2) {
        String str3;
        boolean equals = str2.equals("$remove");
        boolean equals2 = str2.equals("$add");
        if (equals || equals2) {
            Object m7870f = this.f62923j.m7870f(str);
            if (m7870f == null) {
                if (!equals) {
                    return new JSONArray();
                }
                return null;
            } else if (m7870f instanceof JSONArray) {
                return (JSONArray) m7870f;
            } else {
                JSONArray jSONArray = equals2 ? new JSONArray() : null;
                try {
                    str3 = m7870f.toString();
                } catch (Exception e) {
                    str3 = null;
                }
                String str4 = str3;
                if (str3 != null) {
                    C22712a m7924b = this.f62925l.m7924b(str3);
                    if (m7924b.f62842a != 0) {
                        this.f62924k.m7926b(m7924b);
                    }
                    Object obj = m7924b.f62844c;
                    String str5 = null;
                    if (obj != null) {
                        str5 = obj.toString();
                    }
                    str4 = str5;
                }
                if (str4 != null) {
                    jSONArray = new JSONArray().put(str4);
                }
                return jSONArray;
            }
        }
        return new JSONArray();
    }

    /* renamed from: d */
    public void m7887d(String str) {
        C22712a m2468F = C26232y.m2468F(512, 1, str);
        this.f62924k.m7926b(m2468F);
        this.f62918e.m42081b().m7856a(this.f62918e.f2240a, m2468F.f62843b);
    }

    /* renamed from: e */
    public final void m7886e(JSONArray jSONArray, JSONArray jSONArray2, ArrayList<String> arrayList, String str, String str2) {
        Boolean bool = Boolean.FALSE;
        if (jSONArray == null || jSONArray2 == null || str == null) {
            return;
        }
        try {
            C22712a m7921e = this.f62925l.m7921e(jSONArray, jSONArray2, str2.equals("$remove") ? "multiValuePropertyRemoveValues" : "multiValuePropertyAddValues", str);
            if (m7921e.f62842a != 0) {
                this.f62924k.m7926b(m7921e);
            }
            JSONArray jSONArray3 = (JSONArray) m7921e.f62844c;
            if (jSONArray3 != null && jSONArray3.length() > 0) {
                this.f62923j.m7863m(str, jSONArray3, bool, true);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str2, new JSONArray((Collection) arrayList));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(str, jSONObject);
                this.f62916c.mo7814b(jSONObject2);
                C22735g0 m42081b = this.f62918e.m42081b();
                String str3 = this.f62918e.f2240a;
                m42081b.m7855b(str3, "Constructed multi-value profile push: " + jSONObject2.toString());
            }
            this.f62923j.m7865k(str, bool, true);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(str2, new JSONArray((Collection) arrayList));
            JSONObject jSONObject22 = new JSONObject();
            jSONObject22.put(str, jSONObject3);
            this.f62916c.mo7814b(jSONObject22);
            C22735g0 m42081b2 = this.f62918e.m42081b();
            String str32 = this.f62918e.f2240a;
            m42081b2.m7855b(str32, "Constructed multi-value profile push: " + jSONObject22.toString());
        } catch (Throwable th) {
            C22735g0 m42081b3 = this.f62918e.m42081b();
            String str4 = this.f62918e.f2240a;
            Objects.requireNonNull(m42081b3);
        }
    }

    /* renamed from: g */
    public final boolean m7884g(Bundle bundle, HashMap<String, Object> hashMap, int i) {
        boolean z;
        synchronized (this.f62927n) {
            boolean z2 = false;
            try {
                String string = bundle.getString("wzrk_id");
                long currentTimeMillis = System.currentTimeMillis();
                z = false;
                if (hashMap.containsKey(string)) {
                    z = false;
                    if (currentTimeMillis - ((Long) hashMap.get(string)).longValue() < i) {
                        z = true;
                    }
                }
                z2 = z;
                hashMap.put(string, Long.valueOf(currentTimeMillis));
            } catch (Throwable th) {
                z = z2;
            }
        }
        return z;
    }

    /* renamed from: h */
    public void m7883h() {
        if (this.f62918e.f2249j) {
            this.f62921h.m7671d(true);
            this.f62918e.m42081b().m7856a(this.f62918e.f2240a, "App Launched Events disabled in the Android Manifest file");
        } else if (this.f62921h.m7672c()) {
            this.f62918e.m42081b().m7855b(this.f62918e.f2240a, "App Launched has already been triggered. Will not trigger it ");
        } else {
            this.f62918e.m42081b().m7855b(this.f62918e.f2240a, "Firing App Launched event");
            this.f62921h.m7671d(true);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("evtName", "App Launched");
                jSONObject.put("evtData", this.f62922i.m7914f());
            } catch (Throwable th) {
            }
            this.f62916c.mo7812d(this.f62919f, jSONObject, 4);
        }
    }

    /* renamed from: i */
    public void m7882i(Uri uri, boolean z) {
        synchronized (this) {
            if (uri == null) {
                return;
            }
            try {
                JSONObject m2463G0 = C26232y.m2463G0(uri);
                if (m2463G0.has(AbstractLocaleUtils.ISO_US)) {
                    C22858w c22858w = this.f62921h;
                    String obj = m2463G0.get(AbstractLocaleUtils.ISO_US).toString();
                    synchronized (c22858w) {
                        if (c22858w.f63466p == null) {
                            c22858w.f63466p = obj;
                        }
                    }
                }
                if (m2463G0.has("um")) {
                    C22858w c22858w2 = this.f62921h;
                    String obj2 = m2463G0.get("um").toString();
                    synchronized (c22858w2) {
                        if (c22858w2.f63467q == null) {
                            c22858w2.f63467q = obj2;
                        }
                    }
                }
                if (m2463G0.has("uc")) {
                    C22858w c22858w3 = this.f62921h;
                    String obj3 = m2463G0.get("uc").toString();
                    synchronized (c22858w3) {
                        if (c22858w3.f63468r == null) {
                            c22858w3.f63468r = obj3;
                        }
                    }
                }
                m2463G0.put("referrer", uri.toString());
                if (z) {
                    m2463G0.put("install", true);
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (m2463G0.length() > 0) {
                        Iterator<String> keys = m2463G0.keys();
                        while (keys.hasNext()) {
                            try {
                                String next = keys.next();
                                jSONObject.put(next, m2463G0.getString(next));
                            } catch (ClassCastException e) {
                            }
                        }
                    }
                    this.f62916c.mo7812d(this.f62919f, jSONObject, 1);
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                C22735g0 m42081b = this.f62918e.m42081b();
                String str = this.f62918e.f2240a;
                Objects.requireNonNull(m42081b);
            }
        }
    }

    /* renamed from: j */
    public void m7881j(boolean z, CTInAppNotification cTInAppNotification, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = cTInAppNotification.f2350w;
            Iterator<String> keys = jSONObject3.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.startsWith("wzrk_")) {
                    jSONObject2.put(next, jSONObject3.get(next));
                }
            }
            if (bundle != null) {
                for (String str : bundle.keySet()) {
                    Object obj = bundle.get(str);
                    if (obj != null) {
                        jSONObject2.put(str, obj);
                    }
                }
            }
            if (z) {
                try {
                    this.f62921h.m7669f(jSONObject2);
                } catch (Throwable th) {
                }
                jSONObject.put("evtName", "Notification Clicked");
            } else {
                jSONObject.put("evtName", "Notification Viewed");
            }
            jSONObject.put("evtData", jSONObject2);
            this.f62916c.mo7812d(this.f62919f, jSONObject, 4);
        } catch (Throwable th2) {
        }
    }

    /* renamed from: k */
    public void m7880k(boolean z, CTInboxMessage cTInboxMessage, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject m42058a = cTInboxMessage.m42058a();
            if (bundle != null) {
                for (String str : bundle.keySet()) {
                    Object obj = bundle.get(str);
                    if (obj != null) {
                        m42058a.put(str, obj);
                    }
                }
            }
            if (z) {
                try {
                    this.f62921h.m7669f(m42058a);
                } catch (Throwable th) {
                }
                jSONObject.put("evtName", "Notification Clicked");
            } else {
                jSONObject.put("evtName", "Notification Viewed");
            }
            jSONObject.put("evtData", m42058a);
            this.f62916c.mo7812d(this.f62919f, jSONObject, 4);
        } catch (Throwable th2) {
        }
    }

    /* renamed from: l */
    public void m7879l(String str) {
        try {
            C22735g0 m42081b = this.f62918e.m42081b();
            String str2 = this.f62918e.f2240a;
            m42081b.m7855b(str2, "Referrer received: " + str);
            if (str == null) {
                return;
            }
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            if (this.f62915b.containsKey(str) && currentTimeMillis - this.f62915b.get(str).intValue() < 10) {
                this.f62918e.m42081b().m7855b(this.f62918e.f2240a, "Skipping install referrer due to duplicate within 10 seconds");
                return;
            }
            this.f62915b.put(str, Integer.valueOf(currentTimeMillis));
            m7882i(Uri.parse("wzrk://track?install=true&" + str), true);
        } catch (Throwable th) {
        }
    }

    /* renamed from: m */
    public void m7878m(Bundle bundle) {
        String str;
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f62918e;
        if (cleverTapInstanceConfig.f2244e) {
            cleverTapInstanceConfig.m42081b().m7856a(this.f62918e.f2240a, "is Analytics Only - will not process Notification Clicked event.");
        } else if (bundle == null || bundle.isEmpty() || bundle.get("wzrk_pn") == null) {
            C22735g0 m42081b = this.f62918e.m42081b();
            String str2 = this.f62918e.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Push notification: ");
            m8728C.append(bundle == null ? "NULL" : bundle.toString());
            m8728C.append(" not from CleverTap - will not process Notification Clicked event.");
            m42081b.m7856a(str2, m8728C.toString());
        } else {
            try {
                str = bundle.getString("wzrk_acct_id");
            } catch (Throwable th) {
                str = null;
            }
            if (!((str == null && this.f62918e.f2252m) || this.f62918e.f2240a.equals(str))) {
                this.f62918e.m42081b().m7856a(this.f62918e.f2240a, "Push notification not targeted at this instance, not processing Notification Clicked Event");
            } else if (bundle.containsKey("wzrk_inapp")) {
                C22895k m7641c = C22882a.m7644a(this.f62918e).m7641c();
                m7641c.f63554c.execute(new RunnableC22894j(m7641c, "testInappNotification", new CallableC22728a(bundle)));
            } else if (bundle.containsKey("wzrk_inbox")) {
                C22895k m7641c2 = C22882a.m7644a(this.f62918e).m7641c();
                m7641c2.f63554c.execute(new RunnableC22894j(m7641c2, "testInboxNotification", new CallableC22729b(bundle)));
            } else if (bundle.containsKey("wzrk_adunit")) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    String string = bundle.getString("wzrk_adunit");
                    JSONArray jSONArray = new JSONArray();
                    jSONObject.put("adUnit_notifs", jSONArray);
                    jSONArray.put(new JSONObject(string));
                    new g(new C22880e(), this.f62918e, this.f62917d, this.f62920g).a(jSONObject, (String) null, this.f62919f);
                } catch (Throwable th2) {
                }
            } else if (!bundle.containsKey("wzrk_id") || bundle.getString("wzrk_id") == null) {
                C22735g0 m42081b2 = this.f62918e.m42081b();
                String str3 = this.f62918e.f2240a;
                StringBuilder m8728C2 = C22128a.m8728C("Push notification ID Tag is null, not processing Notification Clicked event for:  ");
                m8728C2.append(bundle.toString());
                m42081b2.m7856a(str3, m8728C2.toString());
            } else if (m7884g(bundle, this.f62926m, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS)) {
                C22735g0 m42081b3 = this.f62918e.m42081b();
                String str4 = this.f62918e.f2240a;
                StringBuilder m8728C3 = C22128a.m8728C("Already processed Notification Clicked event for ");
                m8728C3.append(bundle.toString());
                m8728C3.append(", dropping duplicate.");
                m42081b3.m7856a(str4, m8728C3.toString());
            } else {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    for (String str5 : bundle.keySet()) {
                        if (str5.startsWith("wzrk_")) {
                            jSONObject3.put(str5, bundle.get(str5));
                        }
                    }
                    jSONObject2.put("evtName", "Notification Clicked");
                    jSONObject2.put("evtData", jSONObject3);
                    this.f62916c.mo7812d(this.f62919f, jSONObject2, 4);
                    this.f62921h.m7669f(C26232y.m2447K0(bundle));
                } catch (Throwable th3) {
                }
                Objects.requireNonNull(this.f62917d);
            }
        }
    }

    /* renamed from: n */
    public void m7877n(Bundle bundle) {
        if (bundle == null || bundle.isEmpty() || bundle.get("wzrk_pn") == null) {
            C22735g0 m42081b = this.f62918e.m42081b();
            String str = this.f62918e.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Push notification: ");
            m8728C.append(bundle == null ? "NULL" : bundle.toString());
            m8728C.append(" not from CleverTap - will not process Notification Viewed event.");
            m42081b.m7856a(str, m8728C.toString());
        } else if (!bundle.containsKey("wzrk_id") || bundle.getString("wzrk_id") == null) {
            C22735g0 m42081b2 = this.f62918e.m42081b();
            String str2 = this.f62918e.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Push notification ID Tag is null, not processing Notification Viewed event for:  ");
            m8728C2.append(bundle.toString());
            m42081b2.m7856a(str2, m8728C2.toString());
        } else if (m7884g(bundle, this.f62928o, 2000)) {
            C22735g0 m42081b3 = this.f62918e.m42081b();
            String str3 = this.f62918e.f2240a;
            StringBuilder m8728C3 = C22128a.m8728C("Already processed Notification Viewed event for ");
            m8728C3.append(bundle.toString());
            m8728C3.append(", dropping duplicate.");
            m42081b3.m7856a(str3, m8728C3.toString());
        } else {
            C22735g0 m42081b4 = this.f62918e.m42081b();
            bundle.toString();
            Objects.requireNonNull(m42081b4);
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject m2447K0 = C26232y.m2447K0(bundle);
                jSONObject.put("evtName", "Notification Viewed");
                jSONObject.put("evtData", m2447K0);
            } catch (Throwable th) {
            }
            this.f62916c.mo7812d(this.f62919f, jSONObject, 6);
        }
    }

    /* renamed from: o */
    public void m7876o(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        C22895k m7641c = C22882a.m7644a(this.f62918e).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "profilePush", new CallableC22730c(map)));
    }
}
