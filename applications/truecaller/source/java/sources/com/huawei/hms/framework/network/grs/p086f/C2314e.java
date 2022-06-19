package com.huawei.hms.framework.network.grs.p086f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.huawei.hms.framework.network.grs.f.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/f/e.class */
public class C2314e {

    /* renamed from: a */
    private static final String f7409a = "e";

    /* renamed from: b */
    public static final Set<String> f7410b = Collections.unmodifiableSet(new C2315a(16));

    /* renamed from: com.huawei.hms.framework.network.grs.f.e$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/f/e$a.class */
    public static final class C2315a extends HashSet<String> {
        public C2315a(int i) {
            super(i);
            add("ser_country");
            add("reg_country");
            add("issue_country");
            add("geo_ip");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
        r8.append(r7);
        r8.append(r6);
        com.huawei.hms.framework.common.Logger.m38044i(r9, r8.toString());
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m37953a(android.content.Context r6, com.huawei.hms.framework.network.grs.p085e.C2309a r7, java.lang.String r8, com.huawei.hms.framework.network.grs.GrsBaseInfo r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p086f.C2314e.m37953a(android.content.Context, com.huawei.hms.framework.network.grs.e.a, java.lang.String, com.huawei.hms.framework.network.grs.GrsBaseInfo, boolean):java.lang.String");
    }

    /* renamed from: b */
    public static String m37952b(Context context, C2309a c2309a, String str, GrsBaseInfo grsBaseInfo, boolean z) {
        if (TextUtils.isEmpty(str)) {
            Logger.m38040w(f7409a, "routeBy must be not empty string or null.");
            return null;
        } else if (!"no_route".equals(str) && !"unconditional".equals(str)) {
            return m37953a(context, c2309a, str, grsBaseInfo, z);
        } else {
            Logger.m38042v(f7409a, "routeBy equals NO_ROUTE_POLICY");
            return "no_route_country";
        }
    }
}
