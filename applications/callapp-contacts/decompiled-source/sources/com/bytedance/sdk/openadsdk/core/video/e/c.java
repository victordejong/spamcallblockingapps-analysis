package com.bytedance.sdk.openadsdk.core.video.e;

import android.os.Build;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.k.f.b;
import com.bytedance.sdk.openadsdk.video.b.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/c.class */
public class c {
    public static void a(b bVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            a aVar = new a();
            aVar.b(bVar.f9757c);
            aVar.a(bVar.f9755a);
            aVar.a(bVar.f9756b);
            com.bytedance.sdk.openadsdk.video.a.b.a.a(n.a(), aVar);
            return;
        }
        com.bytedance.sdk.openadsdk.k.f.a.a().a(bVar);
    }
}
