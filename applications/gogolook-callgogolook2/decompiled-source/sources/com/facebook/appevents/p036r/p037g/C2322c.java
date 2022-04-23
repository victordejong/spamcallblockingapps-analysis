package com.facebook.appevents.p036r.p037g;

import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.r.g.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/c.class */
public final class C2322c {

    /* renamed from: a */
    public final String f2805a;

    /* renamed from: b */
    public final int f2806b;

    /* renamed from: c */
    public final int f2807c;

    /* renamed from: d */
    public final String f2808d;

    /* renamed from: e */
    public final String f2809e;

    /* renamed from: f */
    public final String f2810f;

    /* renamed from: g */
    public final String f2811g;

    /* renamed from: h */
    public final int f2812h;

    /* renamed from: com.facebook.appevents.r.g.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/c$a.class */
    public enum EnumC2323a {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);
        

        /* renamed from: a */
        public final int f2819a;

        EnumC2323a(int i) {
            this.f2819a = i;
        }

        /* renamed from: a */
        public int m35181a() {
            return this.f2819a;
        }
    }

    public C2322c(JSONObject jSONObject) throws JSONException {
        this.f2805a = jSONObject.getString("class_name");
        this.f2806b = jSONObject.optInt("index", -1);
        this.f2807c = jSONObject.optInt("id");
        this.f2808d = jSONObject.optString("text");
        this.f2809e = jSONObject.optString(NovaHomeBadger.TAG);
        this.f2810f = jSONObject.optString("description");
        this.f2811g = jSONObject.optString("hint");
        this.f2812h = jSONObject.optInt("match_bitmask");
    }
}
