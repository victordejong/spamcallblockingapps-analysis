package com.bytedance.sdk.openadsdk.multipro.b;

import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9888a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f9889b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9890c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9891d;
    public long e;
    public long f;
    public long g;

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b/a$a.class */
    public interface AbstractC0181a {
        a a();
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.b(jSONObject.optBoolean("isCompleted"));
        aVar.c(jSONObject.optBoolean("isFromVideoDetailPage"));
        aVar.d(jSONObject.optBoolean("isFromDetailPage"));
        aVar.a(jSONObject.optLong(VastIconXmlManager.DURATION));
        aVar.b(jSONObject.optLong("totalPlayDuration"));
        aVar.c(jSONObject.optLong("currentPlayPosition"));
        aVar.a(jSONObject.optBoolean("isAutoPlay"));
        return aVar;
    }

    public a a(long j) {
        this.e = j;
        return this;
    }

    public a a(boolean z) {
        this.f9891d = z;
        return this;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.f9888a);
            jSONObject.put("isFromVideoDetailPage", this.f9889b);
            jSONObject.put("isFromDetailPage", this.f9890c);
            jSONObject.put(VastIconXmlManager.DURATION, this.e);
            jSONObject.put("totalPlayDuration", this.f);
            jSONObject.put("currentPlayPosition", this.g);
            jSONObject.put("isAutoPlay", this.f9891d);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public a b(long j) {
        this.f = j;
        return this;
    }

    public a b(boolean z) {
        this.f9888a = z;
        return this;
    }

    public a c(long j) {
        this.g = j;
        return this;
    }

    public a c(boolean z) {
        this.f9889b = z;
        return this;
    }

    public a d(boolean z) {
        this.f9890c = z;
        return this;
    }
}
