package com.huawei.appgallery.serviceverifykit.p081d.p082d;
/* renamed from: com.huawei.appgallery.serviceverifykit.d.d.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/d/d/b.class */
public class C2237b {

    /* renamed from: b */
    public static final C2237b f7220b = new C2237b();

    /* renamed from: a */
    private boolean f7221a;

    private C2237b() {
        try {
            Class.forName("com.huawei.appgallery.log.LogAdaptor");
            this.f7221a = true;
        } catch (ClassNotFoundException e) {
            this.f7221a = false;
        }
    }

    /* renamed from: a */
    public void m38209a(String str, String str2) {
        if (this.f7221a) {
            C2236a.f7219a.e(str, str2);
        }
    }

    /* renamed from: a */
    public void m38208a(String str, String str2, Throwable th) {
        if (this.f7221a) {
            C2236a.f7219a.e(str, str2, th);
        }
    }

    /* renamed from: b */
    public void m38207b(String str, String str2) {
        if (this.f7221a) {
            C2236a.f7219a.i(str, str2);
        }
    }

    /* renamed from: c */
    public void m38206c(String str, String str2) {
        if (this.f7221a) {
            C2236a.f7219a.w(str, str2);
        }
    }
}
