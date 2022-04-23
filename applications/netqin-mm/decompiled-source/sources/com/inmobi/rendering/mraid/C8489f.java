package com.inmobi.rendering.mraid;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.rendering.mraid.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/f.class */
public class C8489f {

    /* renamed from: e */
    public static String f32971e = "f";

    /* renamed from: b */
    public String f32973b = "none";

    /* renamed from: c */
    public String f32974c = "right";

    /* renamed from: a */
    public boolean f32972a = true;

    /* renamed from: d */
    public String f32975d = null;

    /* renamed from: a */
    public static C8489f m5467a(String str, C8489f fVar) {
        C8489f fVar2;
        C8489f fVar3 = new C8489f();
        fVar3.f32975d = str;
        try {
            JSONObject jSONObject = new JSONObject(str);
            fVar3.f32973b = jSONObject.optString("forceOrientation", fVar.f32973b);
            fVar3.f32972a = jSONObject.optBoolean("allowOrientationChange", fVar.f32972a);
            fVar3.f32974c = jSONObject.optString("direction", fVar.f32974c);
            if (!fVar3.f32973b.equals("portrait") && !fVar3.f32973b.equals("landscape")) {
                fVar3.f32973b = "none";
            }
            fVar2 = fVar3;
            if (!fVar3.f32974c.equals("left")) {
                fVar2 = fVar3;
                if (!fVar3.f32974c.equals("right")) {
                    fVar3.f32974c = "right";
                    fVar2 = fVar3;
                }
            }
        } catch (JSONException e) {
            fVar2 = null;
        }
        return fVar2;
    }
}
