package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.utils.d;
import com.bytedance.sdk.openadsdk.utils.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static q f9089a;

    /* renamed from: b  reason: collision with root package name */
    private static r f9090b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f9091c = false;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f9092d = false;
    private String e = null;
    private String f = null;

    private q() {
        if (c() == null) {
            f9090b = r.a();
        }
    }

    public static q a() {
        if (f9089a == null) {
            synchronized (q.class) {
                try {
                    if (f9089a == null) {
                        f9089a = new q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9089a;
    }

    private TTSecAbs c() {
        return g.b().r();
    }

    private boolean d(String str) {
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

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            r rVar = f9090b;
            if (rVar != null) {
                rVar.a(str);
            }
            this.e = str;
            if (c() != null) {
                c().NM_setParams(str);
            }
        }
    }

    public String b() {
        String str;
        try {
        } catch (Exception e) {
            str = "";
        }
        if (!TextUtils.isEmpty(this.f)) {
            return this.f;
        }
        String a2 = g.a("sdk_app_sha1", 2592000000L);
        this.f = a2;
        if (!TextUtils.isEmpty(a2)) {
            return this.f;
        }
        if (c() != null) {
            this.f = c().NM_pullSg();
        } else {
            r rVar = f9090b;
            if (rVar != null) {
                this.f = rVar.b();
            }
        }
        if (d(this.f)) {
            String upperCase = this.f.toUpperCase();
            this.f = upperCase;
            g.a("sdk_app_sha1", upperCase);
            return this.f;
        }
        String a3 = d.a(n.a());
        this.f = a3;
        str = "";
        if (d(a3)) {
            String upperCase2 = this.f.toUpperCase();
            this.f = upperCase2;
            g.a("sdk_app_sha1", upperCase2);
            str = this.f;
        }
        return str;
    }

    public void b(String str) {
        r rVar = f9090b;
        if (rVar != null) {
            rVar.b(str);
        }
        if (!this.f9091c && c() != null) {
            c().NM_reportNow(str);
            this.f9091c = true;
        }
    }

    public String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String a2 = i.a(str);
        if (TextUtils.isEmpty(a2)) {
            return "";
        }
        if (c() != null) {
            return c().NM_pullVer(a2);
        }
        r rVar = f9090b;
        return rVar != null ? rVar.c(str) : "";
    }
}
