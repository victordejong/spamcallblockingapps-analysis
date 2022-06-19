package com.iab.omid.library.verizonmedia.adsession.p447a;

import com.iab.omid.library.verizonmedia.p450d.C16513c;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.a.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/c.class */
public final class C16482c {

    /* renamed from: a */
    private final boolean f58025a;

    /* renamed from: b */
    private final Float f58026b;

    /* renamed from: c */
    private final boolean f58027c;

    /* renamed from: d */
    private final EnumC16481b f58028d;

    private C16482c(boolean z, Float f, boolean z2, EnumC16481b enumC16481b) {
        this.f58025a = z;
        this.f58026b = f;
        this.f58027c = z2;
        this.f58028d = enumC16481b;
    }

    /* renamed from: a */
    public static C16482c m7159a(float f, boolean z, EnumC16481b enumC16481b) {
        C16514d.m7102a(enumC16481b, "Position is null");
        return new C16482c(true, Float.valueOf(f), z, enumC16481b);
    }

    /* renamed from: a */
    public final JSONObject m7160a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f58025a);
            if (this.f58025a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f58026b);
            }
            jSONObject.put("autoPlay", this.f58027c);
            jSONObject.put("position", this.f58028d);
        } catch (JSONException e) {
            C16513c.m7104a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
