package p081h.p160h.p179e.p180a.p184j;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p190p.C6428a;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.j.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/j/c.class */
public class C6368c {

    /* renamed from: b */
    public static String f15849b = "timestamp";

    /* renamed from: c */
    public static String f15850c = "scope";

    /* renamed from: d */
    public static String f15851d = "scope_search";

    /* renamed from: e */
    public static String f15852e = "data";

    /* renamed from: f */
    public static String f15853f = "reason";

    /* renamed from: a */
    public JSONObject f15854a;

    public C6368c(@NonNull String str, @NonNull C6369d dVar, String str2) {
        this.f15854a = null;
        this.f15854a = new JSONObject();
        try {
            long e = C6432e.m22589e();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f15849b, e);
            jSONObject.put(f15850c, dVar.m22948a());
            jSONObject.put(f15851d, dVar.m22946b());
            String c = C6428a.m22648c(str, jSONObject.toString());
            if (!TextUtils.isEmpty(c)) {
                this.f15854a.put(f15852e, c);
            }
            if (!TextUtils.isEmpty(str2)) {
                this.f15854a.put(f15853f, str2);
            }
            this.f15854a.put(f15849b, e);
        } catch (JSONException e2) {
            C6438i.m22583a(e2);
        }
    }

    /* renamed from: a */
    public static String m22950a(@NonNull String str, C6369d dVar, String str2) {
        C6368c cVar = new C6368c(str, dVar, str2);
        if (cVar.m22951a()) {
            return cVar.m22949b();
        }
        return null;
    }

    /* renamed from: a */
    public boolean m22951a() {
        JSONObject jSONObject = this.f15854a;
        return jSONObject != null && !jSONObject.isNull(f15852e);
    }

    /* renamed from: b */
    public String m22949b() {
        return this.f15854a.toString();
    }
}
