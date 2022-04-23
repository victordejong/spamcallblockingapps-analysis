package com.iab.omid.library.pubnativenet.adsession.a;

import com.iab.omid.library.pubnativenet.d.c;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33337a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f33338b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33339c;

    /* renamed from: d  reason: collision with root package name */
    private final c f33340d;

    public d(boolean z, Float f, boolean z2, c cVar) {
        this.f33337a = z;
        this.f33338b = f;
        this.f33339c = z2;
        this.f33340d = cVar;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f33337a);
            if (this.f33337a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f33338b);
            }
            jSONObject.put("autoPlay", this.f33339c);
            jSONObject.put("position", this.f33340d);
        } catch (JSONException e) {
            c.a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
