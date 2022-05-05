package com.flurry.sdk;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.cr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/cr.class */
public final class C2921cr {

    /* renamed from: a */
    public String f4515a;

    /* renamed from: b */
    public EnumC2922cs f4516b;

    /* renamed from: c */
    public String f4517c;

    /* renamed from: d */
    public int f4518d;

    /* renamed from: e */
    public int f4519e;

    /* renamed from: f */
    public List<JSONObject> f4520f;

    /* renamed from: g */
    public Map<String, String> f4521g = new HashMap();

    public final String toString() {
        return "\n { \n name " + this.f4515a + ",\n type " + this.f4516b + ",\n value " + this.f4517c + ",\n width " + this.f4518d + ",\n height " + this.f4519e + ",\n embeddedLandingUrls " + this.f4520f + ",\n params " + this.f4521g + "\n } \n";
    }
}
