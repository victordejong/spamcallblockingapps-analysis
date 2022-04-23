package com.facebook.appevents.b.a;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f19454a;

    /* renamed from: b  reason: collision with root package name */
    public final int f19455b;

    /* renamed from: c  reason: collision with root package name */
    public final int f19456c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19457d;
    public final String e;
    public final String f;
    public final String g;
    public final int h;

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/c$a.class */
    public enum a {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);
        
        private final int value;

        a(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(JSONObject jSONObject) throws JSONException {
        this.f19454a = jSONObject.getString("class_name");
        this.f19455b = jSONObject.optInt("index", -1);
        this.f19456c = jSONObject.optInt("id");
        this.f19457d = jSONObject.optString("text");
        this.e = jSONObject.optString("tag");
        this.f = jSONObject.optString("description");
        this.g = jSONObject.optString("hint");
        this.h = jSONObject.optInt("match_bitmask");
    }
}
