package p081h.p160h.p179e.p180a.p183i;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6343d;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.i.e */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/i/e.class */
public class C6362e extends AbstractC6361d {

    /* renamed from: b */
    public static String f15829b;

    /* renamed from: a */
    public JSONObject f15830a;

    public C6362e() {
        this.f15830a = null;
        this.f15830a = new JSONObject();
    }

    @Override // p081h.p160h.p179e.p180a.p183i.AbstractC6361d
    /* renamed from: a */
    public JSONObject mo23001a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "status");
            jSONObject.put("ts", System.currentTimeMillis());
            if (!TextUtils.isEmpty(f15829b) && this.f15830a.isNull("iid")) {
                this.f15830a.put("iid", f15829b);
            }
            jSONObject.put("data", this.f15830a);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m23000a(String str, double d) {
        try {
            this.f15830a.put(str, d);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public void m22999a(String str, long j) {
        try {
            if (!str.endsWith("_time")) {
                str = str + "_time";
            }
            this.f15830a.put(str, j);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public void m22998a(String str, String str2) {
        try {
            this.f15830a.put(str, str2);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public void m22997a(String str, ArrayList arrayList) {
        try {
            if (arrayList != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                this.f15830a.put(str, jSONArray);
                return;
            }
            throw new C6343d("invalid input");
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public void m22996a(String str, boolean z) {
        try {
            this.f15830a.put(str, z);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }
}
