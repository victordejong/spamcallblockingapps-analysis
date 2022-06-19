package com.bytedance.sdk.openadsdk.core.video.p162e;

import android.os.Build;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p176k.p182f.C5016a;
import com.bytedance.sdk.openadsdk.p176k.p182f.C5021b;
import com.bytedance.sdk.openadsdk.video.p227a.p229b.C5496a;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.e.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/c.class */
public class C4712c {
    /* renamed from: a */
    public static void m34397a(C5021b c5021b) {
        if (Build.VERSION.SDK_INT < 23) {
            C5016a.m33290a().m33288a(c5021b);
            return;
        }
        C5500a c5500a = new C5500a();
        c5500a.m31987b(c5021b.f18196c);
        c5500a.m31989a(c5021b.f18194a);
        c5500a.m31990a(c5021b.f18195b);
        C5496a.m32001a(C4600n.m34815a(), c5500a);
    }
}
