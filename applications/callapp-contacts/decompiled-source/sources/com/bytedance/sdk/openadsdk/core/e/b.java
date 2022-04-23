package com.bytedance.sdk.openadsdk.core.e;

import com.bytedance.sdk.openadsdk.utils.q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f8863a;

    /* renamed from: b  reason: collision with root package name */
    private String f8864b;

    /* renamed from: c  reason: collision with root package name */
    private String f8865c;

    /* renamed from: d  reason: collision with root package name */
    private int f8866d;
    private int e;
    private int f;

    public String a() {
        return this.f8863a;
    }

    public void a(int i) {
        this.f8866d = i;
    }

    public void a(String str) {
        this.f8863a = str;
    }

    public String b() {
        return this.f8864b;
    }

    public void b(int i) {
        this.e = i;
    }

    public void b(String str) {
        this.f8864b = str;
    }

    public String c() {
        return this.f8865c;
    }

    public void c(int i) {
        this.f = i;
    }

    public void c(String str) {
        this.f8865c = str;
    }

    public int d() {
        return this.f8866d;
    }

    public int e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", b());
            jSONObject.put("app_size", f());
            jSONObject.put("comment_num", e());
            jSONObject.put("download_url", a());
            jSONObject.put("package_name", c());
            jSONObject.put("score", d());
        } catch (Exception e) {
            q.b(e.toString());
        }
        return jSONObject;
    }
}
