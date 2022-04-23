package com.integralads.avid.library.mopub.session.internal.jsbridge;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent.class */
public class AvidEvent {

    /* renamed from: a */
    public int f33080a;

    /* renamed from: b */
    public String f33081b;

    /* renamed from: c */
    public JSONObject f33082c;

    public AvidEvent() {
    }

    public AvidEvent(int i, String str) {
        this(i, str, null);
    }

    public AvidEvent(int i, String str, JSONObject jSONObject) {
        this.f33080a = i;
        this.f33081b = str;
        this.f33082c = jSONObject;
    }

    public JSONObject getData() {
        return this.f33082c;
    }

    public int getTag() {
        return this.f33080a;
    }

    public String getType() {
        return this.f33081b;
    }

    public void setData(JSONObject jSONObject) {
        this.f33082c = jSONObject;
    }

    public void setTag(int i) {
        this.f33080a = i;
    }

    public void setType(String str) {
        this.f33081b = str;
    }
}
