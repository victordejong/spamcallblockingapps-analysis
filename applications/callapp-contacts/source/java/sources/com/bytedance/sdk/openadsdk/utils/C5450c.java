package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.bytedance.sdk.openadsdk.utils.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/c.class */
public class C5450c {

    /* renamed from: com.bytedance.sdk.openadsdk.utils.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/c$a.class */
    public interface AbstractC5451a {
        /* renamed from: a */
        void mo32193a();

        /* renamed from: a */
        void mo32192a(Throwable th);
    }

    /* renamed from: a */
    public static boolean m32194a(Context context, Intent intent, AbstractC5451a abstractC5451a) {
        if (context == null || intent == null) {
            return false;
        }
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            if (abstractC5451a == null) {
                return true;
            }
            abstractC5451a.mo32193a();
            return true;
        } catch (Throwable th) {
            if (abstractC5451a == null) {
                return false;
            }
            abstractC5451a.mo32192a(th);
            return false;
        }
    }
}
