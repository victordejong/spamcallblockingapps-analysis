package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.C4540e;
/* renamed from: com.bytedance.sdk.openadsdk.core.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d.class */
public class C4522d extends C4540e {

    /* renamed from: a */
    private static volatile C4522d f16413a;

    private C4522d(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static C4522d m35393a(Context context) {
        if (f16413a == null) {
            synchronized (C4522d.class) {
                try {
                    if (f16413a == null) {
                        f16413a = new C4522d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16413a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.C4540e
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C4540e.C4544c mo35356a() {
        return super.mo35356a();
    }
}
