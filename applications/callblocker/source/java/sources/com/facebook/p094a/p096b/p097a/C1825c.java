package com.facebook.p094a.p096b.p097a;

import org.json.JSONObject;
/* renamed from: com.facebook.a.b.a.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/c.class */
public final class C1825c {

    /* renamed from: a */
    public final String f5554a;

    /* renamed from: b */
    public final int f5555b;

    /* renamed from: c */
    public final int f5556c;

    /* renamed from: d */
    public final String f5557d;

    /* renamed from: e */
    public final String f5558e;

    /* renamed from: f */
    public final String f5559f;

    /* renamed from: g */
    public final String f5560g;

    /* renamed from: h */
    public final int f5561h;

    /* renamed from: com.facebook.a.b.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/c$a.class */
    public enum EnumC1826a {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);
        

        /* renamed from: f */
        private final int f5568f;

        EnumC1826a(int i) {
            this.f5568f = i;
        }

        /* renamed from: a */
        public int m16190a() {
            return this.f5568f;
        }
    }

    public C1825c(JSONObject jSONObject) {
        this.f5554a = jSONObject.getString("class_name");
        this.f5555b = jSONObject.optInt("index", -1);
        this.f5556c = jSONObject.optInt("id");
        this.f5557d = jSONObject.optString("text");
        this.f5558e = jSONObject.optString("tag");
        this.f5559f = jSONObject.optString("description");
        this.f5560g = jSONObject.optString("hint");
        this.f5561h = jSONObject.optInt("match_bitmask");
    }
}
