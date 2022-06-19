package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.tenor.android.core.constant.StringConstant;
import java.util.UUID;
/* renamed from: com.huawei.hms.hatool.z0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/z0.class */
public class C2401z0 {

    /* renamed from: b */
    public static C2401z0 f7627b;

    /* renamed from: a */
    public Context f7628a;

    /* renamed from: a */
    public static C2401z0 m37463a() {
        C2401z0 c2401z0;
        synchronized (C2401z0.class) {
            try {
                if (f7627b == null) {
                    f7627b = new C2401z0();
                }
                c2401z0 = f7627b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2401z0;
    }

    /* renamed from: a */
    public String m37461a(String str, String str2) {
        return AbstractC2361g.m37702a(this.f7628a, str, str2);
    }

    /* renamed from: a */
    public String m37460a(boolean z) {
        if (!z) {
            return "";
        }
        String m37787e = AbstractC2349b.m37787e();
        String str = m37787e;
        if (TextUtils.isEmpty(m37787e)) {
            String m37696a = C2362g0.m37696a(this.f7628a, "global_v2", "uuid", "");
            str = m37696a;
            if (TextUtils.isEmpty(m37696a)) {
                str = UUID.randomUUID().toString().replace(StringConstant.DASH, "");
                C2362g0.m37692b(this.f7628a, "global_v2", "uuid", str);
            }
            AbstractC2349b.m37780h(str);
        }
        return str;
    }

    /* renamed from: a */
    public void m37462a(Context context) {
        if (this.f7628a == null) {
            this.f7628a = context;
        }
    }

    /* renamed from: b */
    public String m37459b(String str, String str2) {
        return AbstractC2361g.m37701b(this.f7628a, str, str2);
    }

    /* renamed from: c */
    public C2397x0 m37458c(String str, String str2) {
        return new a(str, str2).m37803a(this.f7628a);
    }

    /* renamed from: d */
    public String m37457d(String str, String str2) {
        return c1.b(str, str2);
    }

    /* renamed from: e */
    public Pair<String, String> m37456e(String str, String str2) {
        if (AbstractC2345a.m37816f(str, str2)) {
            String m37580p = C2366i.m37672c().m37673b().m37580p();
            String m37578q = C2366i.m37672c().m37673b().m37578q();
            if (!TextUtils.isEmpty(m37580p) && !TextUtils.isEmpty(m37578q)) {
                return new Pair<>(m37580p, m37578q);
            }
            Pair<String, String> e = b1.e(this.f7628a);
            C2366i.m37672c().m37673b().m37589k((String) e.first);
            C2366i.m37672c().m37673b().m37587l((String) e.second);
            return e;
        }
        return new Pair<>("", "");
    }

    /* renamed from: f */
    public String m37455f(String str, String str2) {
        return c1.a(str, str2);
    }
}
