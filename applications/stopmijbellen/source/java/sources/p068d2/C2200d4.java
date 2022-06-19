package p068d2;

import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: d2.d4 */
/* loaded from: classes-dex2jar.jar:d2/d4.class */
public class C2200d4 {

    /* renamed from: a */
    public final JSONArray f8025a;

    public C2200d4() {
        this.f8025a = new JSONArray();
    }

    public C2200d4(String str) throws JSONException {
        this.f8025a = new JSONArray(str);
    }

    public C2200d4(JSONArray jSONArray) throws NullPointerException {
        Objects.requireNonNull(jSONArray);
        this.f8025a = jSONArray;
    }

    /* renamed from: a */
    public C2200d4 m3764a(C2267f4 c2267f4) {
        synchronized (this.f8025a) {
            this.f8025a.put(c2267f4.f8159a);
        }
        return this;
    }

    /* renamed from: b */
    public C2200d4 m3763b(String str) {
        synchronized (this.f8025a) {
            this.f8025a.put(str);
        }
        return this;
    }

    /* renamed from: c */
    public int m3762c() {
        return this.f8025a.length();
    }

    /* renamed from: d */
    public C2267f4 m3761d(int i) {
        C2267f4 c2267f4;
        synchronized (this.f8025a) {
            JSONObject optJSONObject = this.f8025a.optJSONObject(i);
            c2267f4 = optJSONObject != null ? new C2267f4(optJSONObject) : new C2267f4();
        }
        return c2267f4;
    }

    /* renamed from: e */
    public String m3760e(int i) {
        String optString;
        synchronized (this.f8025a) {
            optString = this.f8025a.optString(i);
        }
        return optString;
    }

    public String toString() {
        String jSONArray;
        synchronized (this.f8025a) {
            jSONArray = this.f8025a.toString();
        }
        return jSONArray;
    }
}
