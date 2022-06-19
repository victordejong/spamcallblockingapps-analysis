package com.iab.omid.library.mopub.adsession.p429a;

import com.iab.omid.library.mopub.p432d.C16381c;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.adsession.a.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/e.class */
public final class C16350e {

    /* renamed from: a */
    private final boolean f57764a;

    /* renamed from: b */
    private final Float f57765b;

    /* renamed from: c */
    private final boolean f57766c;

    /* renamed from: d */
    private final EnumC16349d f57767d;

    public C16350e(boolean z, Float f, boolean z2, EnumC16349d enumC16349d) {
        this.f57764a = z;
        this.f57765b = f;
        this.f57766c = z2;
        this.f57767d = enumC16349d;
    }

    /* renamed from: a */
    public final JSONObject m7377a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f57764a);
            if (this.f57764a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f57765b);
            }
            jSONObject.put("autoPlay", this.f57766c);
            jSONObject.put("position", this.f57767d);
        } catch (JSONException e) {
            C16381c.m7327a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
