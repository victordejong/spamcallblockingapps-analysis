package com.iab.omid.library.mopub.adsession.a;

import com.iab.omid.library.mopub.d.c;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33241a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f33242b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33243c;

    /* renamed from: d  reason: collision with root package name */
    private final d f33244d;

    public e(boolean z, Float f, boolean z2, d dVar) {
        this.f33241a = z;
        this.f33242b = f;
        this.f33243c = z2;
        this.f33244d = dVar;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f33241a);
            if (this.f33241a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f33242b);
            }
            jSONObject.put("autoPlay", this.f33243c);
            jSONObject.put("position", this.f33244d);
        } catch (JSONException e) {
            c.a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }
}
