package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
/* renamed from: com.bytedance.sdk.openadsdk.core.s */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/s.class */
public class C4650s {
    /* renamed from: a */
    public static void m34625a() {
        if (!C4600n.m34805h().m34857w() || TextUtils.isEmpty(C4590i.m34846a(C4600n.m34815a()))) {
            return;
        }
        C4647q.m34639a().m34636b("AdShow");
    }

    /* renamed from: a */
    public static void m34624a(String str) {
        if (TextUtils.isEmpty(str) || !C4600n.m34805h().m34857w()) {
            return;
        }
        C4647q.m34639a().m34638a(str);
    }

    /* renamed from: b */
    public static String m34623b(String str) {
        if (!C4600n.m34805h().m34857w() || TextUtils.isEmpty(str)) {
            return null;
        }
        return C4647q.m34639a().m34637b();
    }

    /* renamed from: c */
    public static String m34622c(String str) {
        if (!C4600n.m34805h().m34857w() || TextUtils.isEmpty(C4590i.m34846a(C4600n.m34815a()))) {
            return null;
        }
        return C4647q.m34639a().m34634c(str);
    }
}
