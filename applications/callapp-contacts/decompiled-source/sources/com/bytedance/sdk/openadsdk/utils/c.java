package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/c.class */
public class c {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/c$a.class */
    public interface a {
        void a();

        void a(Throwable th);
    }

    public static boolean a(Context context, Intent intent, a aVar) {
        if (context == null || intent == null) {
            return false;
        }
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            if (aVar == null) {
                return true;
            }
            aVar.a();
            return true;
        } catch (Throwable th) {
            if (aVar == null) {
                return false;
            }
            aVar.a(th);
            return false;
        }
    }
}
