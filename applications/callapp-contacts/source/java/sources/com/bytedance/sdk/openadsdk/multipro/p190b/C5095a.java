package com.bytedance.sdk.openadsdk.multipro.p190b;

import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b/a.class */
public class C5095a {

    /* renamed from: a */
    public boolean f18359a;

    /* renamed from: b */
    public boolean f18360b;

    /* renamed from: c */
    public boolean f18361c;

    /* renamed from: d */
    public boolean f18362d;

    /* renamed from: e */
    public long f18363e;

    /* renamed from: f */
    public long f18364f;

    /* renamed from: g */
    public long f18365g;

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b/a$a.class */
    public interface AbstractC5096a {
        /* renamed from: a */
        C5095a mo33081a();
    }

    /* renamed from: a */
    public static C5095a m33088a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C5095a c5095a = new C5095a();
        c5095a.m33085b(jSONObject.optBoolean("isCompleted"));
        c5095a.m33083c(jSONObject.optBoolean("isFromVideoDetailPage"));
        c5095a.m33082d(jSONObject.optBoolean("isFromDetailPage"));
        c5095a.m33089a(jSONObject.optLong(VastIconXmlManager.DURATION));
        c5095a.m33086b(jSONObject.optLong("totalPlayDuration"));
        c5095a.m33084c(jSONObject.optLong("currentPlayPosition"));
        c5095a.m33087a(jSONObject.optBoolean("isAutoPlay"));
        return c5095a;
    }

    /* renamed from: a */
    public C5095a m33089a(long j) {
        this.f18363e = j;
        return this;
    }

    /* renamed from: a */
    public C5095a m33087a(boolean z) {
        this.f18362d = z;
        return this;
    }

    /* renamed from: a */
    public JSONObject m33090a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.f18359a);
            jSONObject.put("isFromVideoDetailPage", this.f18360b);
            jSONObject.put("isFromDetailPage", this.f18361c);
            jSONObject.put(VastIconXmlManager.DURATION, this.f18363e);
            jSONObject.put("totalPlayDuration", this.f18364f);
            jSONObject.put("currentPlayPosition", this.f18365g);
            jSONObject.put("isAutoPlay", this.f18362d);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public C5095a m33086b(long j) {
        this.f18364f = j;
        return this;
    }

    /* renamed from: b */
    public C5095a m33085b(boolean z) {
        this.f18359a = z;
        return this;
    }

    /* renamed from: c */
    public C5095a m33084c(long j) {
        this.f18365g = j;
        return this;
    }

    /* renamed from: c */
    public C5095a m33083c(boolean z) {
        this.f18360b = z;
        return this;
    }

    /* renamed from: d */
    public C5095a m33082d(boolean z) {
        this.f18361c = z;
        return this;
    }
}
