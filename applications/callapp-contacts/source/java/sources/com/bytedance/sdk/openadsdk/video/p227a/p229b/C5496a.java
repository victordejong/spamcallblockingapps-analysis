package com.bytedance.sdk.openadsdk.video.p227a.p229b;

import android.content.Context;
import android.os.Build;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.video.p227a.C5492a;
import com.bytedance.sdk.openadsdk.video.p227a.p230c.C5497a;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import com.bytedance.sdk.openadsdk.video.p233d.C5505c;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.bytedance.sdk.openadsdk.video.a.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/b/a.class */
public class C5496a {

    /* renamed from: a */
    public static final ConcurrentHashMap<String, C5492a> f19055a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private static final ConcurrentHashMap<String, C5497a> f19056b = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static void m32002a(Context context, int i) {
        C5505c.m31963a(context, i);
    }

    /* renamed from: a */
    public static void m32001a(Context context, C5500a c5500a) {
        if (Build.VERSION.SDK_INT < 23 || f19056b.contains(c5500a.m31988b())) {
            return;
        }
        new C5497a(context, c5500a, c5500a.m31986c()).m31998b();
        C5478q.m32116a("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(c5500a.m31986c()), c5500a.m31988b());
    }
}
