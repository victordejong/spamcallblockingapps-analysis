package com.facebook.p094a;

import android.content.Context;
import android.os.Bundle;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.p094a.C1904g;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: com.facebook.a.m */
/* loaded from: classes-dex2jar.jar:com/facebook/a/m.class */
public class C1927m {

    /* renamed from: a */
    private C1915h f5810a;

    public C1927m(Context context) {
        this.f5810a = new C1915h(context, (String) null, (C1803a) null);
    }

    public C1927m(Context context, String str) {
        this.f5810a = new C1915h(context, str, (C1803a) null);
    }

    public C1927m(String str, String str2, C1803a c1803a) {
        this.f5810a = new C1915h(str, str2, c1803a);
    }

    /* renamed from: a */
    public static C1904g.EnumC1905a m15861a() {
        return C1915h.m15884a();
    }

    /* renamed from: a */
    public static void m15853a(Map<String, String> map) {
        C1932p.m15835a(map);
    }

    /* renamed from: c */
    public static Executor m15850c() {
        return C1915h.m15864g();
    }

    /* renamed from: d */
    public static String m15849d() {
        return C1915h.m15867d();
    }

    /* renamed from: a */
    public void m15860a(String str) {
        if (C2095j.m15352p()) {
            this.f5810a.m15876a(str, (Double) null, (Bundle) null);
        }
    }

    /* renamed from: a */
    public void m15859a(String str, double d, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15878a(str, d, bundle);
        }
    }

    /* renamed from: a */
    public void m15858a(String str, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15877a(str, bundle);
        }
    }

    /* renamed from: a */
    public void m15857a(String str, Double d, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15876a(str, d, bundle);
        }
    }

    /* renamed from: a */
    public void m15856a(String str, String str2) {
        this.f5810a.m15874a(str, str2);
    }

    /* renamed from: a */
    public void m15855a(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15873a(str, bigDecimal, currency, bundle);
        }
    }

    /* renamed from: a */
    public void m15854a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15872a(bigDecimal, currency, bundle);
        }
    }

    /* renamed from: b */
    public void m15852b() {
        this.f5810a.m15870b();
    }

    /* renamed from: b */
    public void m15851b(String str, Bundle bundle) {
        if (C2095j.m15352p()) {
            this.f5810a.m15876a(str, (Double) null, bundle);
        }
    }
}
