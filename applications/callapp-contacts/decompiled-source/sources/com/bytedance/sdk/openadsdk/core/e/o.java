package com.bytedance.sdk.openadsdk.core.e;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/o.class */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private int f8928a;

    /* renamed from: b  reason: collision with root package name */
    private int f8929b;

    /* renamed from: c  reason: collision with root package name */
    private long f8930c;

    /* renamed from: d  reason: collision with root package name */
    private double f8931d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private int k;
    private int l = 0;
    private int m = 0;

    public int a() {
        return this.k;
    }

    public void a(double d2) {
        this.f8931d = d2;
    }

    public void a(int i) {
        this.k = i;
    }

    public void a(long j) {
        this.f8930c = j;
    }

    public void a(String str) {
        this.e = str;
    }

    public int b() {
        return this.f8928a;
    }

    public void b(int i) {
        this.f8928a = i;
    }

    public void b(String str) {
        this.f = str;
    }

    public int c() {
        return this.f8929b;
    }

    public void c(int i) {
        this.f8929b = i;
    }

    public void c(String str) {
        this.g = str;
    }

    public long d() {
        return this.f8930c;
    }

    public void d(int i) {
        this.l = i;
    }

    public void d(String str) {
        this.h = str;
    }

    public double e() {
        return this.f8931d;
    }

    public void e(int i) {
        this.m = i;
    }

    public void e(String str) {
        this.i = str;
    }

    public String f() {
        return this.e;
    }

    public void f(String str) {
        this.j = str;
    }

    public String g() {
        return this.f;
    }

    public String h() {
        return this.g;
    }

    public String i() {
        return this.h;
    }

    public String j() {
        return this.i;
    }

    public String k() {
        return this.j;
    }

    public JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", b());
            jSONObject.put("cover_url", g());
            jSONObject.put("cover_width", c());
            jSONObject.put("endcard", i());
            jSONObject.put("file_hash", k());
            jSONObject.put("resolution", f());
            jSONObject.put("size", d());
            jSONObject.put("video_duration", e());
            jSONObject.put("video_url", h());
            jSONObject.put("playable_download_url", j());
            jSONObject.put("if_playable_loading_show", m());
            jSONObject.put("remove_loading_page_type", n());
            jSONObject.put("fallback_endcard_judge", a());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public int m() {
        return this.l;
    }

    public int n() {
        return this.m;
    }
}
