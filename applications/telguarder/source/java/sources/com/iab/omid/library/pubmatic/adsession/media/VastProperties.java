package com.iab.omid.library.pubmatic.adsession.media;

import com.iab.omid.library.pubmatic.p014d.C1772c;
import com.iab.omid.library.pubmatic.p014d.C1774e;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/media/VastProperties.class */
public final class VastProperties {

    /* renamed from: a */
    private final boolean f225a;

    /* renamed from: b */
    private final Float f226b;

    /* renamed from: c */
    private final boolean f227c;

    /* renamed from: d */
    private final Position f228d;

    private VastProperties(boolean z, Float f, boolean z2, Position position) {
        this.f225a = z;
        this.f226b = f;
        this.f227c = z2;
        this.f228d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        C1774e.m1222a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f, boolean z, Position position) {
        C1774e.m1222a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f), z, position);
    }

    /* renamed from: a */
    public JSONObject m1312a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f225a);
            if (this.f225a) {
                jSONObject.put("skipOffset", this.f226b);
            }
            jSONObject.put("autoPlay", this.f227c);
            jSONObject.put("position", this.f228d);
        } catch (JSONException e) {
            C1772c.m1227a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f228d;
    }

    public Float getSkipOffset() {
        return this.f226b;
    }

    public boolean isAutoPlay() {
        return this.f227c;
    }

    public boolean isSkippable() {
        return this.f225a;
    }
}
