package com.iab.omid.library.verizonmedia.adsession.a;

import com.iab.omid.library.verizonmedia.d.d;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33432a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f33433b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33434c;

    /* renamed from: d  reason: collision with root package name */
    private final b f33435d;

    private c(boolean z, Float f, boolean z2, b bVar) {
        this.f33432a = z;
        this.f33433b = f;
        this.f33434c = z2;
        this.f33435d = bVar;
    }

    public static c a(float f, boolean z, b bVar) {
        d.a(bVar, "Position is null");
        return new c(true, Float.valueOf(f), z, bVar);
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f33432a);
            if (this.f33432a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f33433b);
            }
            jSONObject.put("autoPlay", this.f33434c);
            jSONObject.put("position", this.f33435d);
        } catch (JSONException e) {
            com.iab.omid.library.verizonmedia.d.c.a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
