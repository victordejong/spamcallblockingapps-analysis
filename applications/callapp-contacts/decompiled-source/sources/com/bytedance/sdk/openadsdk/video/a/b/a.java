package com.bytedance.sdk.openadsdk.video.a.b;

import android.content.Context;
import android.os.Build;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.video.d.c;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ConcurrentHashMap<String, com.bytedance.sdk.openadsdk.video.a.a> f10337a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<String, com.bytedance.sdk.openadsdk.video.a.c.a> f10338b = new ConcurrentHashMap<>();

    public static void a(Context context, int i) {
        c.a(context, i);
    }

    public static void a(Context context, com.bytedance.sdk.openadsdk.video.b.a aVar) {
        if (Build.VERSION.SDK_INT >= 23 && !f10338b.contains(aVar.b())) {
            new com.bytedance.sdk.openadsdk.video.a.c.a(context, aVar, aVar.c()).b();
            q.a("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(aVar.c()), aVar.b());
        }
    }
}
