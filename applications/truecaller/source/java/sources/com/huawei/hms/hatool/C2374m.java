package com.huawei.hms.hatool;
/* renamed from: com.huawei.hms.hatool.m */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/m.class */
public class C2374m {

    /* renamed from: a */
    public C2370k f7577a;

    /* renamed from: b */
    public C2370k f7578b;

    /* renamed from: c */
    public C2370k f7579c;

    /* renamed from: d */
    public C2370k f7580d;

    public C2374m(String str) {
    }

    /* renamed from: a */
    public C2370k m37571a() {
        return this.f7579c;
    }

    /* renamed from: a */
    public C2370k m37569a(String str) {
        if (str.equals("oper")) {
            return m37566c();
        }
        if (str.equals("maint")) {
            return m37568b();
        }
        if (str.equals("diffprivacy")) {
            return m37571a();
        }
        if (str.equals("preins")) {
            return m37565d();
        }
        C2398y.m37469f("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }

    /* renamed from: a */
    public void m37570a(C2370k c2370k) {
        this.f7577a = c2370k;
    }

    /* renamed from: b */
    public C2370k m37568b() {
        return this.f7577a;
    }

    /* renamed from: b */
    public void m37567b(C2370k c2370k) {
        this.f7578b = c2370k;
    }

    /* renamed from: c */
    public C2370k m37566c() {
        return this.f7578b;
    }

    /* renamed from: d */
    public C2370k m37565d() {
        return this.f7580d;
    }
}
