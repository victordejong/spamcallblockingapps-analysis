package com.bytedance.sdk.openadsdk.video.d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static int f10355a;

    public static Activity a(Context context) {
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
