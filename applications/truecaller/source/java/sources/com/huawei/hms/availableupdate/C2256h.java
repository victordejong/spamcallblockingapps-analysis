package com.huawei.hms.availableupdate;
/* renamed from: com.huawei.hms.availableupdate.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/h.class */
public class C2256h {

    /* renamed from: a */
    public int f7316a;

    /* renamed from: b */
    public String f7317b;

    /* renamed from: c */
    public String f7318c;

    /* renamed from: d */
    public int f7319d;

    /* renamed from: e */
    public String f7320e;

    public C2256h(String str, int i, String str2, int i2, String str3) {
        this.f7316a = 0;
        this.f7317b = "";
        this.f7318c = "";
        this.f7319d = 0;
        this.f7320e = "";
        this.f7317b = str;
        this.f7316a = i;
        this.f7318c = str2;
        this.f7319d = i2;
        this.f7320e = str3;
    }

    /* renamed from: a */
    public boolean m38150a() {
        String str;
        return this.f7316a > 0 && this.f7319d > 0 && (str = this.f7318c) != null && !str.isEmpty();
    }
}
