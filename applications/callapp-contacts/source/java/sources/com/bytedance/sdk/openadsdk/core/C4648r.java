package com.bytedance.sdk.openadsdk.core;

import android.net.wifi.WifiInfo;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.C5452d;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.pgl.sys.ces.p483d.AbstractC17082a;
import com.pgl.sys.ces.p483d.AbstractC17083b;
import com.pgl.sys.ces.p483d.C17084c;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.core.r */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/r.class */
public class C4648r {

    /* renamed from: a */
    private static C4648r f17000a;

    /* renamed from: c */
    private volatile boolean f17002c = false;

    /* renamed from: d */
    private String f17003d = null;

    /* renamed from: b */
    private AbstractC17083b f17001b = C17084c.m5887a(C4600n.m34815a(), "df979cdb-05a7-448c-bece-92d5005a1247", m34628c());

    private C4648r() {
        if (!TextUtils.isEmpty(C4570g.m35020b().m35012d())) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, C4570g.m35020b().m35012d());
            this.f17001b.setCustomInfo(hashMap);
        }
    }

    /* renamed from: a */
    public static C4648r m34632a() {
        if (f17000a == null) {
            synchronized (C4648r.class) {
                try {
                    if (f17000a == null) {
                        f17000a = new C4648r();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17000a;
    }

    /* renamed from: c */
    private AbstractC17082a m34628c() {
        return new AbstractC17082a() { // from class: com.bytedance.sdk.openadsdk.core.r.1
            @Override // com.pgl.sys.ces.p483d.AbstractC17082a
            /* renamed from: a */
            public WifiInfo mo5888a() {
                return null;
            }
        };
    }

    /* renamed from: d */
    private boolean m34626d(String str) {
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
    public void m34631a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f17003d = str;
        this.f17001b.setParams(str, null);
        if (TextUtils.isEmpty(C4570g.m35020b().m35012d())) {
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, C4570g.m35020b().m35012d());
        this.f17001b.setCustomInfo(hashMap);
    }

    /* renamed from: b */
    public String m34630b() {
        String str;
        String pullSg;
        try {
            pullSg = this.f17001b.pullSg();
        } catch (Exception e) {
            str = "";
        }
        if (m34626d(pullSg)) {
            return pullSg.toUpperCase();
        }
        String m32191a = C5452d.m32191a(C4600n.m34815a());
        str = "";
        if (m34626d(m32191a)) {
            str = m32191a.toUpperCase();
        }
        return str;
    }

    /* renamed from: b */
    public void m34629b(String str) {
        if (this.f17002c) {
            return;
        }
        this.f17001b.reportNow(str);
        this.f17002c = true;
    }

    /* renamed from: c */
    public String m34627c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String m32148a = C5465i.m32148a(str);
        return TextUtils.isEmpty(m32148a) ? "" : this.f17001b.pullVer(m32148a);
    }
}
