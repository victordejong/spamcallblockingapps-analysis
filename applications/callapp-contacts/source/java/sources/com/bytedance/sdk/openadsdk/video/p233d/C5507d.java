package com.bytedance.sdk.openadsdk.video.p233d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
/* renamed from: com.bytedance.sdk.openadsdk.video.d.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/d.class */
public class C5507d {

    /* renamed from: a */
    public static int f19078a;

    /* renamed from: a */
    public static Activity m31957a(Context context) {
        while (context != null) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
