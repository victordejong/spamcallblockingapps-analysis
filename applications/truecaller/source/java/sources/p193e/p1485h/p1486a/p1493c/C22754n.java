package p193e.p1485h.p1486a.p1493c;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22714c;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.n */
/* loaded from: classes-dex2jar.jar:e/h/a/c/n.class */
public class C22754n {

    /* renamed from: a */
    public final WeakReference<C22773p> f63026a;

    public C22754n(C22773p c22773p) {
        this.f63026a = new WeakReference<>(c22773p);
    }

    @JavascriptInterface
    public void addMultiValueForKey(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null) {
            return;
        }
        if (str2 == null || str2.isEmpty()) {
            c22773p.f63088b.f63518d.m7887d(str);
        } else {
            c22773p.m7798c(str, new ArrayList<>(Collections.singletonList(str2)));
        }
    }

    @JavascriptInterface
    public void addMultiValuesForKey(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null || str2 == null) {
            return;
        }
        try {
            c22773p.m7798c(str, C22741j0.m7848b(new JSONArray(str2)));
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    @JavascriptInterface
    public void pushChargedEvent(String str, String str2) {
        HashMap<String, Object> hashMap;
        ArrayList arrayList;
        Iterator<String> it;
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null) {
            return;
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        if (str == null) {
            return;
        }
        try {
            hashMap = C22741j0.m7847c(new JSONObject(str));
        } catch (JSONException e) {
            e.getLocalizedMessage();
            hashMap = hashMap2;
        }
        if (str2 == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str2);
            boolean z = C22741j0.f62977a;
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    arrayList.add(C22741j0.m7847c(jSONArray.getJSONObject(i)));
                } catch (JSONException e2) {
                    e2.getMessage();
                }
            }
        } catch (JSONException e3) {
            e3.getLocalizedMessage();
            arrayList = null;
        }
        C22727f c22727f = c22773p.f63088b.f63518d;
        Objects.requireNonNull(c22727f);
        C22714c.EnumC22716b enumC22716b = C22714c.EnumC22716b.Event;
        if (arrayList == null) {
            c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, "Invalid Charged event: details and or items is null");
            return;
        }
        if (arrayList.size() > 50) {
            C22712a m2468F = C26232y.m2468F(522, -1, new String[0]);
            c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F.f62843b);
            c22727f.f62924k.m7926b(m2468F);
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            it = hashMap.keySet().iterator();
        } catch (Throwable th) {
            return;
        }
        while (true) {
            String str3 = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            Object obj = hashMap.get(next);
            C22712a m7923c = c22727f.f62925l.m7923c(next);
            String obj2 = m7923c.f62844c.toString();
            if (m7923c.f62842a != 0) {
                jSONObject2.put("wzrk_error", C26232y.m2333l0(m7923c));
            }
            try {
                C22712a m7922d = c22727f.f62925l.m7922d(obj, enumC22716b);
                Object obj3 = m7922d.f62844c;
                if (m7922d.f62842a != 0) {
                    jSONObject2.put("wzrk_error", C26232y.m2333l0(m7922d));
                }
                jSONObject.put(obj2, obj3);
            } catch (IllegalArgumentException e4) {
                if (obj != null) {
                    str3 = obj.toString();
                }
                C22712a m2468F2 = C26232y.m2468F(511, 7, "Charged", obj2, str3);
                c22727f.f62924k.m7926b(m2468F2);
                c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F2.f62843b);
            }
            return;
        }
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HashMap hashMap3 = (HashMap) it2.next();
            JSONObject jSONObject3 = new JSONObject();
            for (String str4 : hashMap3.keySet()) {
                Object obj4 = hashMap3.get(str4);
                C22712a m7923c2 = c22727f.f62925l.m7923c(str4);
                String obj5 = m7923c2.f62844c.toString();
                if (m7923c2.f62842a != 0) {
                    jSONObject2.put("wzrk_error", C26232y.m2333l0(m7923c2));
                }
                try {
                    C22712a m7922d2 = c22727f.f62925l.m7922d(obj4, enumC22716b);
                    Object obj6 = m7922d2.f62844c;
                    if (m7922d2.f62842a != 0) {
                        jSONObject2.put("wzrk_error", C26232y.m2333l0(m7922d2));
                    }
                    jSONObject3.put(obj5, obj6);
                } catch (IllegalArgumentException e5) {
                    C22712a m2468F3 = C26232y.m2468F(511, 15, obj5, obj4 != null ? obj4.toString() : "");
                    c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F3.f62843b);
                    c22727f.f62924k.m7926b(m2468F3);
                }
            }
            jSONArray2.put(jSONObject3);
        }
        jSONObject.put("Items", jSONArray2);
        jSONObject2.put("evtName", "Charged");
        jSONObject2.put("evtData", jSONObject);
        c22727f.f62916c.mo7812d(c22727f.f62919f, jSONObject2, 4);
    }

    @JavascriptInterface
    public void pushEvent(String str) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null) {
            return;
        }
        c22773p.m7786o(str);
    }

    @JavascriptInterface
    public void pushEvent(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str2 == null) {
            return;
        }
        try {
            c22773p.m7785p(str, C22741j0.m7847c(new JSONObject(str2)));
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    @JavascriptInterface
    public void pushProfile(String str) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null) {
            return;
        }
        try {
            c22773p.f63088b.f63518d.m7876o(C22741j0.m7847c(new JSONObject(str)));
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    @JavascriptInterface
    public void removeMultiValueForKey(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null || str2 == null) {
            return;
        }
        if (str2.isEmpty()) {
            c22773p.f63088b.f63518d.m7887d(str);
        } else {
            c22773p.m7784q(str, new ArrayList<>(Collections.singletonList(str2)));
        }
    }

    @JavascriptInterface
    public void removeMultiValuesForKey(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null || str2 == null) {
            return;
        }
        try {
            c22773p.m7784q(str, C22741j0.m7848b(new JSONArray(str2)));
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    @JavascriptInterface
    public void removeValueForKey(String str) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null) {
            return;
        }
        C22727f c22727f = c22773p.f63088b.f63518d;
        C22895k m7641c = C22882a.m7644a(c22727f.f62918e).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "removeValueForKey", new CallableC22736h(c22727f, str)));
    }

    @JavascriptInterface
    public void setMultiValueForKey(String str, String str2) {
        C22773p c22773p = this.f63026a.get();
        if (c22773p == null || str == null || str2 == null) {
            return;
        }
        try {
            ArrayList<String> m7848b = C22741j0.m7848b(new JSONArray(str2));
            C22727f c22727f = c22773p.f63088b.f63518d;
            C22895k m7641c = C22882a.m7644a(c22727f.f62918e).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "setMultiValuesForKey", new CallableC22738i(c22727f, m7848b, str)));
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }
}
