package p068d2;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: d2.f4 */
/* loaded from: classes-dex2jar.jar:d2/f4.class */
public class C2267f4 {

    /* renamed from: a */
    public final JSONObject f8159a;

    public C2267f4() {
        this.f8159a = new JSONObject();
    }

    public C2267f4(String str) throws JSONException {
        this.f8159a = new JSONObject(str);
    }

    public C2267f4(Map<?, ?> map) {
        this.f8159a = new JSONObject(map);
    }

    public C2267f4(JSONObject jSONObject) throws NullPointerException {
        this.f8159a = jSONObject;
    }

    /* renamed from: a */
    public void m3711a(String[] strArr) {
        synchronized (this.f8159a) {
            for (String str : strArr) {
                this.f8159a.remove(str);
            }
        }
    }

    /* renamed from: b */
    public C2267f4 m3710b(String str, int i) throws JSONException {
        synchronized (this.f8159a) {
            this.f8159a.put(str, i);
        }
        return this;
    }

    /* renamed from: c */
    public C2267f4 m3709c(String str, String str2) throws JSONException {
        synchronized (this.f8159a) {
            this.f8159a.put(str, str2);
        }
        return this;
    }

    /* renamed from: d */
    public final Iterator<String> m3708d() {
        return this.f8159a.keys();
    }

    /* renamed from: e */
    public int m3707e() {
        return this.f8159a.length();
    }

    /* renamed from: f */
    public int m3706f(String str) throws JSONException {
        int i;
        synchronized (this.f8159a) {
            i = this.f8159a.getInt(str);
        }
        return i;
    }

    /* renamed from: g */
    public boolean m3705g(String str, int i) throws JSONException {
        synchronized (this.f8159a) {
            if (!this.f8159a.has(str)) {
                this.f8159a.put(str, i);
                return true;
            }
            return false;
        }
    }

    /* renamed from: h */
    public C2200d4 m3704h(String str) throws JSONException {
        C2200d4 c2200d4;
        synchronized (this.f8159a) {
            c2200d4 = new C2200d4(this.f8159a.getJSONArray(str));
        }
        return c2200d4;
    }

    /* renamed from: i */
    public String m3703i(String str) throws JSONException {
        String string;
        synchronized (this.f8159a) {
            string = this.f8159a.getString(str);
        }
        return string;
    }

    /* renamed from: j */
    public Integer m3702j(String str) {
        int i;
        try {
            synchronized (this.f8159a) {
                i = this.f8159a.getInt(str);
            }
            return Integer.valueOf(i);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: k */
    public C2200d4 m3701k(String str) {
        C2200d4 c2200d4;
        synchronized (this.f8159a) {
            JSONArray optJSONArray = this.f8159a.optJSONArray(str);
            c2200d4 = optJSONArray != null ? new C2200d4(optJSONArray) : null;
        }
        return c2200d4;
    }

    /* renamed from: l */
    public C2267f4 m3700l(String str) {
        C2267f4 c2267f4;
        synchronized (this.f8159a) {
            JSONObject optJSONObject = this.f8159a.optJSONObject(str);
            c2267f4 = optJSONObject != null ? new C2267f4(optJSONObject) : new C2267f4();
        }
        return c2267f4;
    }

    /* renamed from: m */
    public C2267f4 m3699m(String str) {
        C2267f4 c2267f4;
        synchronized (this.f8159a) {
            JSONObject optJSONObject = this.f8159a.optJSONObject(str);
            c2267f4 = optJSONObject != null ? new C2267f4(optJSONObject) : null;
        }
        return c2267f4;
    }

    /* renamed from: n */
    public Object m3698n(String str) {
        Object opt;
        synchronized (this.f8159a) {
            opt = this.f8159a.isNull(str) ? null : this.f8159a.opt(str);
        }
        return opt;
    }

    /* renamed from: o */
    public String m3697o(String str) {
        String optString;
        synchronized (this.f8159a) {
            optString = this.f8159a.optString(str);
        }
        return optString;
    }

    /* renamed from: p */
    public void m3696p(String str) {
        synchronized (this.f8159a) {
            this.f8159a.remove(str);
        }
    }

    public String toString() {
        String jSONObject;
        synchronized (this.f8159a) {
            jSONObject = this.f8159a.toString();
        }
        return jSONObject;
    }
}
