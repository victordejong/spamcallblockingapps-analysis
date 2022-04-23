package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.e;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d.class */
public class d extends e {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f8834a;

    private d(Context context) {
        super(context);
    }

    public static d a(Context context) {
        if (f8834a == null) {
            synchronized (d.class) {
                try {
                    if (f8834a == null) {
                        f8834a = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8834a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.e
    public /* bridge */ /* synthetic */ e.c a() {
        return super.a();
    }
}
