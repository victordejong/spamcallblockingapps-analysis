package com.huawei.updatesdk.service.otaupdate;

import android.text.TextUtils;
/* renamed from: com.huawei.updatesdk.service.otaupdate.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/f.class */
public class C2591f {

    /* renamed from: d */
    private static C2591f f8328d = new C2591f();

    /* renamed from: a */
    private String f8329a;

    /* renamed from: b */
    private String f8330b;

    /* renamed from: c */
    private String f8331c;

    private C2591f() {
    }

    /* renamed from: e */
    public static C2591f m36509e() {
        return f8328d;
    }

    /* renamed from: a */
    public String m36516a() {
        return !TextUtils.isEmpty(this.f8329a) ? this.f8329a : this.f8330b;
    }

    /* renamed from: a */
    public void m36515a(String str) {
        this.f8330b = str;
    }

    /* renamed from: b */
    public String m36514b() {
        return this.f8329a;
    }

    /* renamed from: b */
    public void m36513b(String str) {
        this.f8329a = str;
    }

    /* renamed from: c */
    public String m36512c() {
        return this.f8331c;
    }

    /* renamed from: c */
    public void m36511c(String str) {
        this.f8331c = str;
    }

    /* renamed from: d */
    public boolean m36510d() {
        String str = this.f8329a;
        if (str != null) {
            return str.equals(this.f8330b);
        }
        return true;
    }
}
