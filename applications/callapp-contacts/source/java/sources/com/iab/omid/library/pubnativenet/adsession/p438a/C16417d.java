package com.iab.omid.library.pubnativenet.adsession.p438a;

import com.iab.omid.library.pubnativenet.p441d.C16447c;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.a.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/d.class */
public final class C16417d {

    /* renamed from: a */
    private final boolean f57896a;

    /* renamed from: b */
    private final Float f57897b;

    /* renamed from: c */
    private final boolean f57898c;

    /* renamed from: d */
    private final EnumC16416c f57899d;

    public C16417d(boolean z, Float f, boolean z2, EnumC16416c enumC16416c) {
        this.f57896a = z;
        this.f57897b = f;
        this.f57898c = z2;
        this.f57899d = enumC16416c;
    }

    /* renamed from: a */
    public final JSONObject m7279a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f57896a);
            if (this.f57896a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f57897b);
            }
            jSONObject.put("autoPlay", this.f57898c);
            jSONObject.put("position", this.f57899d);
        } catch (JSONException e) {
            C16447c.m7225a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
