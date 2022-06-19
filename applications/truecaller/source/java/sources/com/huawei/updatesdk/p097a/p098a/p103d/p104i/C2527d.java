package com.huawei.updatesdk.p097a.p098a.p103d.p104i;
/* renamed from: com.huawei.updatesdk.a.a.d.i.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/d.class */
public class C2527d {

    /* renamed from: a */
    private static int f8209a = -1;

    /* renamed from: a */
    public static int m36764a() {
        if (f8209a == -1) {
            f8209a = (!"zh".equals(C2526c.m36793a("ro.product.locale.language", "")) || !"CN".equals(C2526c.m36793a("ro.product.locale.region", ""))) ? 1 : 0;
        }
        return f8209a;
    }
}
