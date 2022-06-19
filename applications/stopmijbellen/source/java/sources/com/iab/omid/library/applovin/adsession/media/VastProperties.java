package com.iab.omid.library.applovin.adsession.media;

import com.iab.omid.library.applovin.p062d.C1948c;
import com.iab.omid.library.applovin.p062d.C1950e;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/media/VastProperties.class */
public final class VastProperties {

    /* renamed from: a */
    private final boolean f7157a;

    /* renamed from: b */
    private final Float f7158b;

    /* renamed from: c */
    private final boolean f7159c;

    /* renamed from: d */
    private final Position f7160d;

    private VastProperties(boolean z, Float f, boolean z2, Position position) {
        this.f7157a = z;
        this.f7158b = f;
        this.f7159c = z2;
        this.f7160d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        C1950e.m4083a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f, boolean z, Position position) {
        C1950e.m4083a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f), z, position);
    }

    /* renamed from: a */
    public JSONObject m4177a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f7157a);
            if (this.f7157a) {
                jSONObject.put("skipOffset", this.f7158b);
            }
            jSONObject.put("autoPlay", this.f7159c);
            jSONObject.put("position", this.f7160d);
        } catch (JSONException e) {
            C1948c.m4088a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f7160d;
    }

    public Float getSkipOffset() {
        return this.f7158b;
    }

    public boolean isAutoPlay() {
        return this.f7159c;
    }

    public boolean isSkippable() {
        return this.f7157a;
    }
}
