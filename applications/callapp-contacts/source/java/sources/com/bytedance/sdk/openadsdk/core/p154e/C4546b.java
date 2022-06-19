package com.bytedance.sdk.openadsdk.core.p154e;

import com.bytedance.sdk.openadsdk.utils.C5478q;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/b.class */
public class C4546b {

    /* renamed from: a */
    private String f16461a;

    /* renamed from: b */
    private String f16462b;

    /* renamed from: c */
    private String f16463c;

    /* renamed from: d */
    private int f16464d;

    /* renamed from: e */
    private int f16465e;

    /* renamed from: f */
    private int f16466f;

    /* renamed from: a */
    public String m35338a() {
        return this.f16461a;
    }

    /* renamed from: a */
    public void m35337a(int i) {
        this.f16464d = i;
    }

    /* renamed from: a */
    public void m35336a(String str) {
        this.f16461a = str;
    }

    /* renamed from: b */
    public String m35335b() {
        return this.f16462b;
    }

    /* renamed from: b */
    public void m35334b(int i) {
        this.f16465e = i;
    }

    /* renamed from: b */
    public void m35333b(String str) {
        this.f16462b = str;
    }

    /* renamed from: c */
    public String m35332c() {
        return this.f16463c;
    }

    /* renamed from: c */
    public void m35331c(int i) {
        this.f16466f = i;
    }

    /* renamed from: c */
    public void m35330c(String str) {
        this.f16463c = str;
    }

    /* renamed from: d */
    public int m35329d() {
        return this.f16464d;
    }

    /* renamed from: e */
    public int m35328e() {
        return this.f16465e;
    }

    /* renamed from: f */
    public int m35327f() {
        return this.f16466f;
    }

    /* renamed from: g */
    public JSONObject m35326g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", m35335b());
            jSONObject.put("app_size", m35327f());
            jSONObject.put("comment_num", m35328e());
            jSONObject.put("download_url", m35338a());
            jSONObject.put("package_name", m35332c());
            jSONObject.put("score", m35329d());
        } catch (Exception e) {
            C5478q.m32113b(e.toString());
        }
        return jSONObject;
    }
}
