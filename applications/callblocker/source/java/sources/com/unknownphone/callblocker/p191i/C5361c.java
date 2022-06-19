package com.unknownphone.callblocker.p191i;

import org.json.JSONObject;
/* renamed from: com.unknownphone.callblocker.i.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/i/c.class */
public class C5361c {

    /* renamed from: a */
    private long f22338a;

    /* renamed from: b */
    private String f22339b;

    /* renamed from: c */
    private String f22340c;

    public C5361c(JSONObject jSONObject) {
        this.f22338a = jSONObject.getLong("date");
        this.f22339b = jSONObject.getString("user");
        this.f22340c = jSONObject.getString("comment");
    }

    /* renamed from: a */
    public long m925a() {
        return this.f22338a;
    }

    /* renamed from: b */
    public String m924b() {
        return this.f22339b;
    }

    /* renamed from: c */
    public String m923c() {
        return this.f22340c;
    }
}
