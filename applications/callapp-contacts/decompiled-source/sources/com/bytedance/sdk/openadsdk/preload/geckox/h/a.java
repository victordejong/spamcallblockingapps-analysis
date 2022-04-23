package com.bytedance.sdk.openadsdk.preload.geckox.h;

import android.util.Log;
import com.bytedance.sdk.openadsdk.preload.geckox.c.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/h/a.class */
class a implements c {
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.h.c
    public void a(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.h.c
    public void a(String str, Object... objArr) {
        if (objArr != null) {
            b.a().b().a(objArr);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.h.c
    public void b(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }
}
