package p157l5;

import org.json.JSONException;
import org.json.JSONObject;
import p015b0.C0713a;
import p168m5.C3645e;
/* renamed from: l5.e */
/* loaded from: classes-dex2jar.jar:l5/e.class */
public class C3501e {

    /* renamed from: a */
    public final C0713a f11620a;

    public C3501e(C0713a c0713a) {
        this.f11620a = c0713a;
    }

    /* renamed from: a */
    public C3645e m2225a(JSONObject jSONObject) throws JSONException {
        return (jSONObject.getInt("settings_version") != 3 ? new C3497a() : new C3503g()).mo2224a(this.f11620a, jSONObject);
    }
}
