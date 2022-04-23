package com.inmobi.commons.core.utilities.p516b;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.utilities.b.h */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/h.class */
public class C8405h {

    /* renamed from: e */
    public static final String f32681e = "h";

    /* renamed from: f */
    public static C8405h f32682f;

    /* renamed from: g */
    public static final Object f32683g = new Object();

    /* renamed from: a */
    public String f32684a;

    /* renamed from: b */
    public long f32685b;

    /* renamed from: c */
    public long f32686c;

    /* renamed from: d */
    public boolean f32687d;

    /* renamed from: a */
    public static C8405h m5655a() {
        C8405h hVar = f32682f;
        C8405h hVar2 = hVar;
        if (hVar == null) {
            synchronized (f32683g) {
                C8405h hVar3 = f32682f;
                hVar2 = hVar3;
                if (hVar3 == null) {
                    hVar2 = new C8405h();
                    f32682f = hVar2;
                }
            }
        }
        return hVar2;
    }

    /* renamed from: a */
    public final void m5654a(boolean z) {
        this.f32687d = z;
        if (!z) {
            this.f32684a = null;
            this.f32685b = 0L;
            this.f32686c = 0L;
        }
    }

    /* renamed from: b */
    public final JSONObject m5653b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sid", this.f32684a);
            jSONObject.put("s-ts", this.f32685b);
            jSONObject.put("e-ts", this.f32686c);
        } catch (JSONException e) {
        }
        return jSONObject;
    }
}
