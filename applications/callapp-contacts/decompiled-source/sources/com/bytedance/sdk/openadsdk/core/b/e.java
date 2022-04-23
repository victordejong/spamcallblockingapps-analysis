package com.bytedance.sdk.openadsdk.core.b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.e.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/e.class */
public abstract class e extends a {
    public e(Context context, i iVar, String str, int i) {
        super(context, iVar, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, int i, int i2, int i3, int i4) {
        a_(view, i, i2, i3, i4);
        super.a(view, i, i2, i3, i4);
    }

    protected abstract void a_(View view, int i, int i2, int i3, int i4);
}
