package com.huawei.hms.availableupdate;
/* renamed from: com.huawei.hms.availableupdate.t */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/t.class */
public class C2269t {

    /* renamed from: b */
    public static C2269t f7342b;

    /* renamed from: a */
    public boolean f7343a = false;

    /* renamed from: b */
    public static C2269t m38119b() {
        if (f7342b == null) {
            synchronized (C2269t.class) {
                try {
                    if (f7342b == null) {
                        f7342b = new C2269t();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7342b;
    }

    /* renamed from: a */
    public void m38120a(boolean z) {
        this.f7343a = z;
    }

    /* renamed from: a */
    public boolean m38121a() {
        return this.f7343a;
    }
}
