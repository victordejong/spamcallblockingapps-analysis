package com.google.android.gms.ads.nonagon.transaction.omid;

import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p225a.p230d.p231a.p232a.C3236a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/transaction/omid/OmidSettings.class */
public class OmidSettings {

    /* renamed from: a */
    public final JSONObject f22911a;

    public OmidSettings(JSONObject jSONObject) {
        this.f22911a = jSONObject;
    }

    /* renamed from: a */
    public OmidMediaType m17916a() {
        int optInt = this.f22911a.optInt("media_type", -1);
        return optInt != 0 ? optInt != 1 ? OmidMediaType.UNKNOWN : OmidMediaType.VIDEO : OmidMediaType.DISPLAY;
    }

    /* renamed from: b */
    public String m17915b() {
        if (C3236a.f11929a[m17916a().ordinal()] != 1) {
            return "javascript";
        }
        return null;
    }
}
