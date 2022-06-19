package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p055c.C1317e;
import java.util.Locale;
import java.util.UUID;
/* renamed from: com.applovin.impl.sdk.utils.o */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/o.class */
public final class C1535o {

    /* renamed from: a */
    private final C1408l f5704a;

    /* renamed from: b */
    private String f5705b;

    /* renamed from: c */
    private final String f5706c;

    /* renamed from: d */
    private final String f5707d;

    public C1535o(C1408l c1408l) {
        this.f5704a = c1408l;
        this.f5706c = m4955a(C1316d.f4991g, (String) C1317e.m5801b(C1316d.f4990f, (Object) null, c1408l.m5532K()));
        this.f5707d = m4955a(C1316d.f4992h, (String) c1408l.m5511a(C1314b.f4715X));
        m4953a(m4950d());
    }

    /* renamed from: a */
    private String m4955a(C1316d<String> c1316d, String str) {
        String str2 = (String) C1317e.m5801b(c1316d, (Object) null, this.f5704a.m5532K());
        if (StringUtils.isValidString(str2)) {
            return str2;
        }
        if (!StringUtils.isValidString(str)) {
            str = UUID.randomUUID().toString().toLowerCase(Locale.US);
        }
        C1317e.m5808a(c1316d, str, this.f5704a.m5532K());
        return str;
    }

    /* renamed from: a */
    public static String m4954a(C1408l c1408l) {
        C1316d<String> c1316d = C1316d.f4993i;
        String str = (String) c1408l.m5509a(c1316d);
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
            c1408l.m5508a((C1316d<C1316d<String>>) c1316d, (C1316d<String>) str2);
        }
        return str2;
    }

    /* renamed from: d */
    private String m4950d() {
        if (!((Boolean) this.f5704a.m5511a(C1314b.f4925dx)).booleanValue()) {
            this.f5704a.m5479b(C1316d.f4989e);
        }
        String str = (String) this.f5704a.m5509a(C1316d.f4989e);
        if (StringUtils.isValidString(str)) {
            C1479t m5542A = this.f5704a.m5542A();
            m5542A.m5116b("AppLovinSdk", "Using identifier (" + str + ") from previous session");
            return str;
        }
        return null;
    }

    /* renamed from: a */
    public String m4956a() {
        return this.f5705b;
    }

    /* renamed from: a */
    public void m4953a(String str) {
        if (((Boolean) this.f5704a.m5511a(C1314b.f4925dx)).booleanValue()) {
            this.f5704a.m5508a((C1316d<C1316d<String>>) C1316d.f4989e, (C1316d<String>) str);
        }
        this.f5705b = str;
        Bundle bundle = new Bundle();
        bundle.putString("user_id", StringUtils.emptyIfNull(str));
        bundle.putString("applovin_random_token", m4951c());
        this.f5704a.m5490ae().m5589a(bundle, "user_info");
    }

    /* renamed from: b */
    public String m4952b() {
        return this.f5706c;
    }

    /* renamed from: c */
    public String m4951c() {
        return this.f5707d;
    }
}
