package com.huawei.updatesdk.p111b.p112a.p113a;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d;
import com.huawei.updatesdk.p111b.p115b.C2546a;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.a.a.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/a/a/b.class */
public class C2540b {

    /* renamed from: b */
    private static C2540b f8235b;

    /* renamed from: a */
    private final Map<String, C2539a> f8236a = new HashMap();

    private C2540b() {
    }

    /* renamed from: a */
    public static C2540b m36707a() {
        C2540b c2540b;
        synchronized (C2540b.class) {
            try {
                if (f8235b == null) {
                    f8235b = new C2540b();
                }
                c2540b = f8235b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2540b;
    }

    /* renamed from: a */
    public String m36706a(PackageInfo packageInfo) {
        if (packageInfo == null || packageInfo.packageName == null || TextUtils.isEmpty(packageInfo.applicationInfo.sourceDir)) {
            return null;
        }
        C2539a c2539a = this.f8236a.get(packageInfo.packageName);
        if (c2539a != null && c2539a.m36709b() == packageInfo.lastUpdateTime && c2539a.m36708c() == packageInfo.versionCode) {
            return c2539a.m36713a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(packageInfo.lastUpdateTime);
        sb.append(packageInfo.versionCode);
        sb.append(packageInfo.packageName);
        String str = "packagekey" + packageInfo.packageName;
        StringBuilder m8728C = C22128a.m8728C("fileshakey");
        m8728C.append(packageInfo.packageName);
        String sb2 = m8728C.toString();
        boolean z = !TextUtils.equals(sb.toString(), C2546a.m36680d().m36681c(str));
        if (z) {
            C2546a.m36680d().m36686a(str, sb.toString());
        }
        String m36681c = C2546a.m36680d().m36681c(sb2);
        if (TextUtils.isEmpty(m36681c) || z) {
            m36681c = AbstractC2519d.m36836a(packageInfo.applicationInfo.sourceDir, "SHA-256");
            C2546a.m36680d().m36686a(sb2, m36681c);
        }
        C2539a c2539a2 = new C2539a();
        c2539a2.m36710a(m36681c);
        c2539a2.m36711a(packageInfo.lastUpdateTime);
        c2539a2.m36712a(packageInfo.versionCode);
        this.f8236a.put(packageInfo.packageName, c2539a2);
        return m36681c;
    }
}
