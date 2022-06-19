package com.bytedance.sdk.openadsdk.core.video.p159b;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/b.class */
public class C4678b {
    /* renamed from: a */
    public static void m34555a(Context context, C4557i c4557i) {
        if (c4557i != null) {
            if (!c4557i.m35136x() && !c4557i.m35137w()) {
                return;
            }
            C4811e.m33860g(context, c4557i, "playable_preload", "preload_start", null);
        }
    }

    /* renamed from: a */
    public static void m34554a(Context context, C4557i c4557i, int i, String str) {
        if (c4557i != null) {
            if (!c4557i.m35136x() && !c4557i.m35137w()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("error_code", Integer.valueOf(i));
            hashMap.put("error_reason", str);
            C4811e.m33860g(context, c4557i, "playable_preload", "preload_fail", hashMap);
        }
    }

    /* renamed from: a */
    public static void m34553a(Context context, C4557i c4557i, long j, long j2) {
        if (c4557i != null) {
            if (!c4557i.m35136x() && !c4557i.m35137w()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("loadzip_success_time", Long.valueOf(j));
            hashMap.put("unzip_success_time", Long.valueOf(j2));
            C4811e.m33860g(context, c4557i, "playable_preload", "preload_success", hashMap);
        }
    }
}
