package com.bytedance.sdk.openadsdk.preload.geckox.p222h;

import android.util.Log;
import com.bytedance.sdk.openadsdk.preload.geckox.p210c.C5335b;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.h.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/h/a.class */
class C5380a implements AbstractC5382c {
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p222h.AbstractC5382c
    /* renamed from: a */
    public void mo32427a(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p222h.AbstractC5382c
    /* renamed from: a */
    public void mo32426a(String str, Object... objArr) {
        if (objArr == null) {
            return;
        }
        C5335b.m32516a().m32515b().m32723a(objArr);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p222h.AbstractC5382c
    /* renamed from: b */
    public void mo32425b(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }
}
