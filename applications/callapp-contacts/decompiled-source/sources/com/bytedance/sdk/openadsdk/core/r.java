package com.bytedance.sdk.openadsdk.core;

import android.net.wifi.WifiInfo;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.d;
import com.bytedance.sdk.openadsdk.utils.i;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.pgl.sys.ces.d.a;
import com.pgl.sys.ces.d.b;
import com.pgl.sys.ces.d.c;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/r.class */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static r f9093a;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f9095c = false;

    /* renamed from: d  reason: collision with root package name */
    private String f9096d = null;

    /* renamed from: b  reason: collision with root package name */
    private b f9094b = c.a(n.a(), "df979cdb-05a7-448c-bece-92d5005a1247", c());

    private r() {
        if (!TextUtils.isEmpty(g.b().d())) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, g.b().d());
            this.f9094b.setCustomInfo(hashMap);
        }
    }

    public static r a() {
        if (f9093a == null) {
            synchronized (r.class) {
                try {
                    if (f9093a == null) {
                        f9093a = new r();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9093a;
    }

    private a c() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.core.r.1
            @Override // com.pgl.sys.ces.d.a
            public WifiInfo a() {
                return null;
            }
        };
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
            this.f9096d = str;
            this.f9094b.setParams(str, null);
            if (!TextUtils.isEmpty(g.b().d())) {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, g.b().d());
                this.f9094b.setCustomInfo(hashMap);
            }
        }
    }

    public String b() {
        String str;
        String pullSg;
        try {
            pullSg = this.f9094b.pullSg();
        } catch (Exception e) {
            str = "";
        }
        if (d(pullSg)) {
            return pullSg.toUpperCase();
        }
        String a2 = d.a(n.a());
        str = "";
        if (d(a2)) {
            str = a2.toUpperCase();
        }
        return str;
    }

    public void b(String str) {
        if (!this.f9095c) {
            this.f9094b.reportNow(str);
            this.f9095c = true;
        }
    }

    public String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String a2 = i.a(str);
        return TextUtils.isEmpty(a2) ? "" : this.f9094b.pullVer(a2);
    }
}
