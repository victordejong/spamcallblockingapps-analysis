package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.utils.C5452d;
import com.bytedance.sdk.openadsdk.utils.C5465i;
/* renamed from: com.bytedance.sdk.openadsdk.core.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/q.class */
public class C4647q {

    /* renamed from: a */
    private static C4647q f16994a;

    /* renamed from: b */
    private static C4648r f16995b;

    /* renamed from: c */
    private volatile boolean f16996c = false;

    /* renamed from: d */
    private volatile boolean f16997d = false;

    /* renamed from: e */
    private String f16998e = null;

    /* renamed from: f */
    private String f16999f = null;

    private C4647q() {
        if (m34635c() == null) {
            f16995b = C4648r.m34632a();
        }
    }

    /* renamed from: a */
    public static C4647q m34639a() {
        if (f16994a == null) {
            synchronized (C4647q.class) {
                try {
                    if (f16994a == null) {
                        f16994a = new C4647q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16994a;
    }

    /* renamed from: c */
    private TTSecAbs m34635c() {
        return C4570g.m35020b().m34990r();
    }

    /* renamed from: d */
    private boolean m34633d(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(":");
            z = false;
            if (split != null) {
                z = false;
                if (split.length >= 20) {
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (!"00".equals(split[i])) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m34638a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C4648r c4648r = f16995b;
        if (c4648r != null) {
            c4648r.m34631a(str);
        }
        this.f16998e = str;
        if (m34635c() == null) {
            return;
        }
        m34635c().NM_setParams(str);
    }

    /* renamed from: b */
    public String m34637b() {
        String str;
        try {
        } catch (Exception e) {
            str = "";
        }
        if (!TextUtils.isEmpty(this.f16999f)) {
            return this.f16999f;
        }
        String m35024a = C4570g.m35024a("sdk_app_sha1", 2592000000L);
        this.f16999f = m35024a;
        if (!TextUtils.isEmpty(m35024a)) {
            return this.f16999f;
        }
        if (m34635c() != null) {
            this.f16999f = m34635c().NM_pullSg();
        } else {
            C4648r c4648r = f16995b;
            if (c4648r != null) {
                this.f16999f = c4648r.m34630b();
            }
        }
        if (m34633d(this.f16999f)) {
            String upperCase = this.f16999f.toUpperCase();
            this.f16999f = upperCase;
            C4570g.m35023a("sdk_app_sha1", upperCase);
            return this.f16999f;
        }
        String m32191a = C5452d.m32191a(C4600n.m34815a());
        this.f16999f = m32191a;
        str = "";
        if (m34633d(m32191a)) {
            String upperCase2 = this.f16999f.toUpperCase();
            this.f16999f = upperCase2;
            C4570g.m35023a("sdk_app_sha1", upperCase2);
            str = this.f16999f;
        }
        return str;
    }

    /* renamed from: b */
    public void m34636b(String str) {
        C4648r c4648r = f16995b;
        if (c4648r != null) {
            c4648r.m34629b(str);
        }
        if (!this.f16996c && m34635c() != null) {
            m34635c().NM_reportNow(str);
            this.f16996c = true;
        }
    }

    /* renamed from: c */
    public String m34634c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String m32148a = C5465i.m32148a(str);
        if (TextUtils.isEmpty(m32148a)) {
            return "";
        }
        if (m34635c() != null) {
            return m34635c().NM_pullVer(m32148a);
        }
        C4648r c4648r = f16995b;
        return c4648r != null ? c4648r.m34627c(str) : "";
    }
}
