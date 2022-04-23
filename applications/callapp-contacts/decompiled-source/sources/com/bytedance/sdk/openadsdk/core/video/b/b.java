package com.bytedance.sdk.openadsdk.core.video.b;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.d.e;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/b.class */
public class b {
    public static void a(Context context, i iVar) {
        if (iVar == null) {
            return;
        }
        if (iVar.x() || iVar.w()) {
            e.g(context, iVar, "playable_preload", "preload_start", null);
        }
    }

    public static void a(Context context, i iVar, int i, String str) {
        if (iVar == null) {
            return;
        }
        if (iVar.x() || iVar.w()) {
            HashMap hashMap = new HashMap();
            hashMap.put("error_code", Integer.valueOf(i));
            hashMap.put("error_reason", str);
            e.g(context, iVar, "playable_preload", "preload_fail", hashMap);
        }
    }

    public static void a(Context context, i iVar, long j, long j2) {
        if (iVar == null) {
            return;
        }
        if (iVar.x() || iVar.w()) {
            HashMap hashMap = new HashMap();
            hashMap.put("loadzip_success_time", Long.valueOf(j));
            hashMap.put("unzip_success_time", Long.valueOf(j2));
            e.g(context, iVar, "playable_preload", "preload_success", hashMap);
        }
    }
}
