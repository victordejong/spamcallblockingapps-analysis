package com.bytedance.sdk.openadsdk.core.p154e;

import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/o.class */
public class C4565o {

    /* renamed from: a */
    private int f16624a;

    /* renamed from: b */
    private int f16625b;

    /* renamed from: c */
    private long f16626c;

    /* renamed from: d */
    private double f16627d;

    /* renamed from: e */
    private String f16628e;

    /* renamed from: f */
    private String f16629f;

    /* renamed from: g */
    private String f16630g;

    /* renamed from: h */
    private String f16631h;

    /* renamed from: i */
    private String f16632i;

    /* renamed from: j */
    private String f16633j;

    /* renamed from: k */
    private int f16634k;

    /* renamed from: l */
    private int f16635l = 0;

    /* renamed from: m */
    private int f16636m = 0;

    /* renamed from: a */
    public int m35063a() {
        return this.f16634k;
    }

    /* renamed from: a */
    public void m35062a(double d) {
        this.f16627d = d;
    }

    /* renamed from: a */
    public void m35061a(int i) {
        this.f16634k = i;
    }

    /* renamed from: a */
    public void m35060a(long j) {
        this.f16626c = j;
    }

    /* renamed from: a */
    public void m35059a(String str) {
        this.f16628e = str;
    }

    /* renamed from: b */
    public int m35058b() {
        return this.f16624a;
    }

    /* renamed from: b */
    public void m35057b(int i) {
        this.f16624a = i;
    }

    /* renamed from: b */
    public void m35056b(String str) {
        this.f16629f = str;
    }

    /* renamed from: c */
    public int m35055c() {
        return this.f16625b;
    }

    /* renamed from: c */
    public void m35054c(int i) {
        this.f16625b = i;
    }

    /* renamed from: c */
    public void m35053c(String str) {
        this.f16630g = str;
    }

    /* renamed from: d */
    public long m35052d() {
        return this.f16626c;
    }

    /* renamed from: d */
    public void m35051d(int i) {
        this.f16635l = i;
    }

    /* renamed from: d */
    public void m35050d(String str) {
        this.f16631h = str;
    }

    /* renamed from: e */
    public double m35049e() {
        return this.f16627d;
    }

    /* renamed from: e */
    public void m35048e(int i) {
        this.f16636m = i;
    }

    /* renamed from: e */
    public void m35047e(String str) {
        this.f16632i = str;
    }

    /* renamed from: f */
    public String m35046f() {
        return this.f16628e;
    }

    /* renamed from: f */
    public void m35045f(String str) {
        this.f16633j = str;
    }

    /* renamed from: g */
    public String m35044g() {
        return this.f16629f;
    }

    /* renamed from: h */
    public String m35043h() {
        return this.f16630g;
    }

    /* renamed from: i */
    public String m35042i() {
        return this.f16631h;
    }

    /* renamed from: j */
    public String m35041j() {
        return this.f16632i;
    }

    /* renamed from: k */
    public String m35040k() {
        return this.f16633j;
    }

    /* renamed from: l */
    public JSONObject m35039l() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", m35058b());
            jSONObject.put("cover_url", m35044g());
            jSONObject.put("cover_width", m35055c());
            jSONObject.put("endcard", m35042i());
            jSONObject.put("file_hash", m35040k());
            jSONObject.put("resolution", m35046f());
            jSONObject.put("size", m35052d());
            jSONObject.put("video_duration", m35049e());
            jSONObject.put("video_url", m35043h());
            jSONObject.put("playable_download_url", m35041j());
            jSONObject.put("if_playable_loading_show", m35038m());
            jSONObject.put("remove_loading_page_type", m35037n());
            jSONObject.put("fallback_endcard_judge", m35063a());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: m */
    public int m35038m() {
        return this.f16635l;
    }

    /* renamed from: n */
    public int m35037n() {
        return this.f16636m;
    }
}
