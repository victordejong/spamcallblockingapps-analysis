package com.huawei.updatesdk.p111b.p121h;

import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ScreenDensity;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.h.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/h/a.class */
public final class C2569a {

    /* renamed from: d */
    private static final Map<Integer, String> f8279d;

    /* renamed from: e */
    private static C2569a f8280e = new C2569a();

    /* renamed from: a */
    private int f8281a;

    /* renamed from: b */
    private int f8282b = 0;

    /* renamed from: c */
    private String f8283c = "";

    static {
        HashMap hashMap = new HashMap();
        f8279d = hashMap;
        hashMap.put(1, "1.0");
        hashMap.put(2, ScreenDensity.SD_150);
        hashMap.put(3, "1.6");
        hashMap.put(4, ScreenDensity.SD_200);
        hashMap.put(5, ScreenDensity.SD_200);
        hashMap.put(6, "2.3");
        hashMap.put(7, ScreenDensity.SD_300);
        hashMap.put(8, "3.0.5");
        hashMap.put(8, "3.1");
        hashMap.put(9, ScreenDensity.SD_400);
        hashMap.put(10, "4.1");
        hashMap.put(11, "5.0");
        hashMap.put(12, "5.1");
    }

    private C2569a() {
        this.f8281a = 0;
        int m36596e = m36596e();
        this.f8281a = m36596e;
        if (m36596e == 0) {
            this.f8281a = m36597d();
        }
        m36594g();
        m36593h();
        StringBuilder m8728C = C22128a.m8728C("emuiVersion:");
        m8728C.append(this.f8281a);
        m8728C.append(", magicApiLevel:");
        m8728C.append(this.f8282b);
        m8728C.append(", magicVersion:");
        m8728C.append(this.f8283c);
        C2511a.m36862b("SystemSupportUtil", m8728C.toString());
    }

    /* renamed from: a */
    private String m36600a(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(AnalyticsConstants.DELIMITER_MAIN);
            if (split.length == 2) {
                str2 = split[1];
                return str2;
            }
        }
        str2 = "";
        return str2;
    }

    /* renamed from: d */
    private int m36597d() {
        String m36600a = m36600a(C2526c.m36793a("ro.build.version.emui", ""));
        if (!TextUtils.isEmpty(m36600a)) {
            for (Map.Entry<Integer, String> entry : f8279d.entrySet()) {
                if (m36600a.equals(entry.getValue())) {
                    return entry.getKey().intValue();
                }
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: e */
    private int m36596e() {
        return C2526c.m36794a("ro.build.hw_emui_api_level", 0);
    }

    /* renamed from: f */
    public static C2569a m36595f() {
        return f8280e;
    }

    /* renamed from: g */
    private void m36594g() {
        try {
            Class<?> cls = Class.forName("com.hihonor.android.os.Build$VERSION");
            this.f8282b = cls.getDeclaredField("MAGIC_SDK_INT").getInt(cls);
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("initMagicApiLevel, error: ");
            m8728C.append(th.toString());
            C2511a.m36861c("SystemSupportUtil", m8728C.toString());
        }
    }

    /* renamed from: h */
    private void m36593h() {
        try {
            Class<?> cls = Class.forName("com.hihonor.android.os.Build");
            String str = (String) cls.getDeclaredField("MAGIC_VERSION").get(cls);
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            this.f8283c = str2;
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("initMagicVersion, error: ");
            m8728C.append(th.toString());
            C2511a.m36861c("SystemSupportUtil", m8728C.toString());
        }
    }

    /* renamed from: a */
    public int m36601a() {
        return this.f8281a;
    }

    /* renamed from: b */
    public int m36599b() {
        return this.f8282b;
    }

    /* renamed from: c */
    public String m36598c() {
        return this.f8283c;
    }
}
