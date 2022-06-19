package com.facebook.appevents.p280b.p281a;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.b.a.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/c.class */
public final class C9977c {

    /* renamed from: a */
    public final String f33186a;

    /* renamed from: b */
    public final int f33187b;

    /* renamed from: c */
    public final int f33188c;

    /* renamed from: d */
    public final String f33189d;

    /* renamed from: e */
    public final String f33190e;

    /* renamed from: f */
    public final String f33191f;

    /* renamed from: g */
    public final String f33192g;

    /* renamed from: h */
    public final int f33193h;

    /* renamed from: com.facebook.appevents.b.a.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/c$a.class */
    public enum EnumC9978a {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);
        
        private final int value;

        EnumC9978a(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public C9977c(JSONObject jSONObject) throws JSONException {
        this.f33186a = jSONObject.getString("class_name");
        this.f33187b = jSONObject.optInt("index", -1);
        this.f33188c = jSONObject.optInt("id");
        this.f33189d = jSONObject.optString("text");
        this.f33190e = jSONObject.optString("tag");
        this.f33191f = jSONObject.optString("description");
        this.f33192g = jSONObject.optString("hint");
        this.f33193h = jSONObject.optInt("match_bitmask");
    }
}
