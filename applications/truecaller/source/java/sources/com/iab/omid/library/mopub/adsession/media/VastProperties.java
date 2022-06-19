package com.iab.omid.library.mopub.adsession.media;

import com.iab.omid.library.mopub.p127d.C2616c;
import com.iab.omid.library.mopub.p127d.C2618e;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/media/VastProperties.class */
public final class VastProperties {

    /* renamed from: a */
    private final boolean f8338a;

    /* renamed from: b */
    private final Float f8339b;

    /* renamed from: c */
    private final boolean f8340c;

    /* renamed from: d */
    private final Position f8341d;

    private VastProperties(boolean z, Float f, boolean z2, Position position) {
        this.f8338a = z;
        this.f8339b = f;
        this.f8340c = z2;
        this.f8341d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        C2618e.m36398a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f, boolean z, Position position) {
        C2618e.m36398a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f), z, position);
    }

    /* renamed from: a */
    public JSONObject m36484a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f8338a);
            if (this.f8338a) {
                jSONObject.put("skipOffset", this.f8339b);
            }
            jSONObject.put("autoPlay", this.f8340c);
            jSONObject.put("position", this.f8341d);
        } catch (JSONException e) {
            C2616c.m36403a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f8341d;
    }

    public Float getSkipOffset() {
        return this.f8339b;
    }

    public boolean isAutoPlay() {
        return this.f8340c;
    }

    public boolean isSkippable() {
        return this.f8338a;
    }
}
